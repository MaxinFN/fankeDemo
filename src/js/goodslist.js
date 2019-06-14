$(function () {
    // 二级导航
    $(".nav ul").children().hover(function () {
        $(this).find(".menu").toggleClass("down");
        $(this).find(".menu").stop(true, true).slideToggle(200);
    })

    // 查看登录状态
    function login() {
        // console.log(123)
        let cookVal = cookieFun.getCookie("uid");
        console.log(cookVal);
        if (cookVal) {
            $.ajax({
                "type": "post",
                "url": "../api/uid.php",
                "data": {
                    "uid": cookVal * 1,
                },
                success: function (str) {
                    console.log(str);
                    let obj = JSON.parse(str);
                    let num = obj[0].phone
                    console.log(num);
                    userRend(num);
                },
            })
        } else {
            // 默认未登录样式
            let em = `您好, <em>欢迎光临凡客诚品！</em>`;
            $(".welcome").html(em);
            let str = ` <a href="login.html">登录</a>|&nbsp;
                        <a href="register.html">注册</a>`;
            $(".user").html(str);
        }

        function userRend(phone) {
            // 隐藏手机号码
            let reg = /^(\d{3})\d{4}(\d{4})$/;
            phone = phone.replace(reg, "$1****$2");
            // 渲染登录用户信息
            let em = `您好,<em>${phone}</em>`;
            $(".welcome").html(em)
            let str1 = `<a href="###">退出登录</a>|&nbsp`;
            let str2 = ` <a href="login.html">更换用户</a>`;
            $(".user").html(str1 + str2);
            $(".user").children().css({ "color": "#a10000" });

            // 点击清除cookie
            $(".user a:eq(0)").on("click", function () {
                console.log(123)
                // 截取网址
                let str = location.search.slice(1);
                console.log(str);
                let arr = str.split("=");
                let address = arr[0];
                cookieFun.delCookie("uid");
                // 刷新页面
                location.href = "goodslist.html?gid=" + arr[1];
            })
        }

    }
    login();

    // *************************
    // 商品渲染

    function renderList() {
        $.ajax({
            "type": "get",
            "url": "../api/goodslist.php",
            success: function (str) {
                console.log(str)
                let obj = JSON.parse(str);
                console.log(obj);
                render(obj);
            }
        })

    }
    renderList();


    function render(obj) {
        // console.log(obj)
        let html = obj.map(function (item) {
            let imgStr = item.image;
            let imgArr = imgStr.split("&");

            return `  <li data-id=${item.gid}>
                        <div class="picture">
                            <a href="javascript:;">
                                <img src="../img/goods/${imgArr[0]}" alt="">
                            </a>
                        </div>
                        <p>
                            <a href="javascript:;" title="${item.descript}">${item.descript}</a>
                        </p>

                        <div class="Mpricediv">
                            <span class="Sprice">售价￥${item.nowprice}</span>
                        </div>
                        <div class="goodsmessage">
                            <div class="messageicon"></div>
                            <div class="messagebox">
                                <div class="imgs">
                                    <img src="../img/goods/${imgArr[0]}" alt="">
                                </div>
                                <div class="goodstitle">
                                    ${item.descript}
                                </div>
                                <p>产品编号:${item.code}</p>

                                <div class="saleprice">
                                    <a href="javascript:;" class="fl">售价:￥${item.nowprice}</a>
                                    <a href="javascript:;" class="fl">
                                        好评率
                                        <br>
                                        <span>100%</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </li>`;
        }).join("");
        // 数据插入
        $(".productlist").html(html);
        // 跳转详情页
        gotoDetail(".productlist");

    }



    // **********跳转详情*************
    function gotoDetail(className) {
        $(className).on("click", "li", function () {
            let gid = $(this).attr("data-id");
            window.open().location = "detail.html?" + "gid=" + gid;
        })
    }

    // ***********分页****************
    function page() {
        $.ajax({
            "type": "get",
            "url": "../api/totals.php",
            success: function (str) {
                console.log(str)
                pageRender(str);
            }
        })
    }
    page();

    // 渲染页码
    function pageRender(str) {
        // 页数
        let num = str / 25;
        console.log(num);
        let li = '';
        for (let i = 0; i < num; i++) {
            li += `<li data-page=${i + 1}>${i + 1}</li>`;
        }

        // 插入数据
        $(".pager").html(li);
        // 总共页码
        $(".pageright>span>em").text(num);
        // 高亮
        $(".pager li").eq(0).addClass("active");



        // 点击刷新
        $(".pager").on("click", "li", function () {
            // 清空
            $(".productlist").html("");

            console.log($(this).attr("data-page"))
            $(this).siblings().removeClass("active");
            $(this).addClass("active");

            let index = ($(this).attr("data-page") - 1) * 25;
            // console.log(index)
            pag(index)

        })

        // 上一页
        $(".pageleft .pre").on("click", function () {
            let num = $(".pager li").filter(".active").index();
            $(".pager li").filter(".active").removeClass("active")
            num--;
            if (num <= -1) {
                num = 0;
            }
            $(".pager li").eq(num).addClass("active");
            let index = ($(".pager li").filter(".active").attr("data-page") - 1) * 25;
            console.log(index)
            pag(index);
        })

        // 下一页
        $(".pageleft .next").on("click", function () {
            let num = $(".pager li").filter(".active").index();
            $(".pager li").filter(".active").removeClass("active")
            num++;
            if (num > 5) {
                num = 5;
            }
            $(".pager li").eq(num).addClass("active");
            let index = ($(".pager li").filter(".active").attr("data-page") - 1) * 25;
            console.log(index)
            pag(index);
        })

        // 点击确定
        $(".confirmbtn").on("click", function () {
            let val = $(".intsearch").val();
            let num = --val;
            // 高亮
            // console.log(val)
            $(".pager li").removeClass("active");
            $(".pager li").eq(num).addClass("active");
            // 
            let index = num * 25;
            pag(index);
        })


        // 限制输入框
        $(".intsearch").on("change", function () {
            let val = $(this).val();
            if (val < 1) {
                val = 1;
            } else if (val > 6) {
                val = 6;
            }
            $(this).val(val);
        })

        // 获取当前页面的商品数据
        function pag(index) {
            $.ajax({
                "type": "get",
                "url": "../api/page.php",
                data: {
                    "index": index,
                },
                success: function (str) {
                    let obj = JSON.parse(str);
                    render(obj);
                }
            })
        }

    }


})
