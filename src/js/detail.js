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
            let str = ` <a href="../html/login.html">登录</a>|&nbsp;
                        <a href="../html/register.html">注册</a>`;
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
            let str2 = ` <a href="../html/login.html">更换用户</a>`;
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
                location.href = "detail.html?gid=" + arr[1];
            })



        }

    }
    login();

    // *********截取网址，获取id渲染*********
    function render() {
        // 截取网址
        let str = location.search.slice(1);
        console.log(str);
        let arr = str.split("=");
        // console.log(arr);

        $.ajax({
            "type": "get",
            "url": "../api/renderDetail.php",
            data: {
                "gid": arr[1],
            },
            success: function (str) {
                // console.log(str);
                let obj = JSON.parse(str);
                console.log(obj);

                descriptRender(obj);
                bigImgRender(obj);
                imgMinRender(obj);
                priceRender(obj);
                colorRender(obj);
                sizeRender(obj);
            },
        })
    }
    // 入口
    render();

    // 描述渲染
    function descriptRender(obj) {
        let div1 = obj[0].descript;
        // 插入描述
        $(".censhan").prepend(div1);
    }

    // 大图
    function bigImgRender(obj) {
        let img = obj[0].image;
        let imgArr = img.split("&");
        let len = imgArr.length;
        let li = "";
        for (let i = 0; i < len; i++) {
            li += `<li><img src="../img/goods/${imgArr[i]}" alt=""></li>`;
        }
        $(".detailcenter .minImg").html(li);
    }

    // 图片框个数
    function imgMinRender(obj) {
        console.log(obj)
        let str = obj[0].image;

        let imgArr = str.split("&");
        let len = imgArr.length;
        let li = "";

        for (let i = 0; i < len; i++) {
            li += `<li><img src="../img/goods/${imgArr[i]}" alt=""></li>`;
        }
        // 插入数据
        $(".detailleft .imglist").html(li);
        $(".detailleft .imglist li").eq(0).addClass("activeImg");
        // 切换图片
        $(".imglist li").hover(function () {
            let index = $(this).index();
            // 大图
            $(".minImg li").eq(index).siblings().css({ "display": "none" });
            $(".minImg li").eq(index).css({ "display": "block" });
            // 小图
            $(this).siblings().removeClass("activeImg");
            $(this).addClass("activeImg");

        })
    }
    // 渲染价格
    function priceRender(obj) {
        let price = obj[0].nowprice;
        let str = `特惠价:￥<span>${price}.00</span> 充100反100，点击充值`;
        // 插入数据
        $(".detailright .good").html(str);
    }

    // 渲染颜色
    function colorRender(obj) {
        let color = obj[0].color;
        let colorArr = color.split("&");
        let len = colorArr.length;
        let li = "";
        for (let i = 0; i < len; i++) {
            li += `<li>${colorArr[i]}</li>`;
        }
        // 插入数据
        $(".detailright .color ul").html(li);
        // 高亮
        $(".detailright .color ul").children("li:eq(0)").addClass("activeColor1");

        // 切换颜色
        $(".detailright .color ul li").hover(function () {
            $(this).toggleClass("activeColor");
        })
        $(".detailright .color ul").on("click", "li", function () {
            $(this).siblings().removeClass("activeColor");
            $(this).siblings().removeClass("activeColor1");
            $(this).addClass("activeColor1");
        })

    }

    // 尺码渲染
    function sizeRender(obj) {
        let size = obj[0].size;
        let sizeArr = size.split("&");
        let len = sizeArr.length;
        let li = "";
        for (let i = 0; i < len; i++) {
            li += `<li>${sizeArr[i]}</li>`;
        }
        // 插入数据
        $(".detailright .size ul").html(li);
        // 高亮
        // $(".detailright .size ul").children("li:eq(0)").addClass("activeSize");

        // 切换尺码

        $(".detailright .size ul li").hover(function () {
            $(this).toggleClass("activeSize");
        })
        $(".detailright .size ul").on("click", "li", function () {
            $(this).siblings().removeClass("activeSize1");
            // 高亮
            $(this).addClass("activeSize1");
        })
    }

    //  ******数量*******
    // 减少
    $(".subtract").on("click", function () {
        let val = $(".inputnum").val() * 1;
        let num = --val;
        // 临界值
        if (num <= 1) {
            num = 1
        }
        $(".inputnum").val(num);
    })

    // 增加
    $(".add").on("click", function () {
        let val = $(".inputnum").val() * 1;
        let num = ++val;
        // 临界值
        if (num >= 99) {
            num = 99;
        }
        $(".inputnum").val(num);
    })

    // 手动
    $(".inputnum").on("change", function () {
        let val = $(".inputnum").val() * 1;
        // 临界值
        if (val <= 1) {
            val = 1;
        }
        if (val >= 99) {
            val = 99;
        }
        console.log(val)
        $(".inputnum").val(val);
    })

    //  ******数加入购物车*******

})