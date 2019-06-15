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

    // ************跳转列表页***************
    $(".menu").on("click", "li", function () {
        console.log(123)
        window.open().location = "goodslist.html";
    })

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

    // 主图
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
        // console.log(obj)
        let str = obj[0].image;

        let imgArr = str.split("&");

        let len = imgArr.length;
        let li = "";
        let li1 = "";
        for (let i = 0; i < len; i++) {
            li += `<li><img src="../img/goods/${imgArr[i]}" alt=""></li>`;
        }

        for (let i = len - 1; i >= 0; i--) {
            li1 += `<li><img src="../img/goods/${imgArr[i]}" alt=""></li>`;
        }

        // 插入数据
        $(".detailleft .imglist").html(li);
        $(".detailleft .imglist li").eq(0).addClass("activeImg");
        // 放大框
        $(".detailcenter .maglify").html(li);

        // 切换图片
        $(".imglist li").hover(function () {
            let index = $(this).index();
            // 主图
            $(".minImg li").eq(index).siblings().css({ "display": "none" });
            $(".minImg li").eq(index).css({ "display": "block" });
            // 放大图
            $(".maglify li").eq(index).siblings().css({ "display": "none" });
            $(".maglify li").eq(index).css({ "display": "block" });
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


    // ***********放大镜*************
    function zoom() {
        //放大镜
        $('.imglist li').eq(0).css('border', '1px solid #a10000');
        $('.minImg li').eq(0).css('zIndex', 2);
        $('.maglify li').eq(0).css('zIndex', 2);

        $(".minImg").hover(function () {
            // $(".mask").show(); 
            $(".maglify").show();
        }, function () {
            $(".mask").hide();
            $(".maglify").hide();
        })


        //鼠标在盒子内滑动
        $(".minImg").mousemove(function (e) {
            console.log(123)
            $(".mask").css('zIndex', 10);
            // $(".mask").show().css('zIndex', 10);
            // $(".maglify").show();
            //在盒子中获取鼠标位置
            $(this).css({ 'cursor': 'crosshair' });
            let l = e.pageX - $(".detailcenter").offset().left - ($(".mask").width() / 2);
            let t = e.pageY - $(".detailcenter").offset().top - ($(".mask").height() / 2);
            if (l < 0) { //左边超出
                l = 0;
            }
            if (l > $(".detailcenter").width() - $(".mask").width()) {//右边超出
                l = $(".detailcenter").width() - $(".mask").width();
            }
            if (t < 0) { //顶端超出
                t = 0;
            }
            if (t > $(".detailcenter").height() - $(".mask").height()) {//底部超出
                t = $(".detailcenter").height() - $(".mask").height();
            }
            //设置放大区域的移动
            $(".mask").css({
                left: l + "px",
                top: t + "px"
            });
            //设置大图片的移动   大图片的移动方向与放大区域正好相反
            let leftRate = l / $(".minImg").width();
            let topRate = t / $(".minImg").height();
            $(".maglify li").css({
                'left': -leftRate * $('.maglify img').width() + "px",
                'top': -topRate * $('.maglify img').height() + "px"
            });
        });
    }
    zoom();


    //  ******数加入购物车*******
    function shoppingCar() {
        $(".addcart").on("click", function () {
            let cook = cookieFun.getCookie("uid");

            // 判断是否处于登录状态
            if (cook) {
                // 有选中尺码则返回下表，无则返回-1
                let sizeFlag = $(".size ul")
                    .children()
                    .filter(".activeSize1").index();

                // 判断是否选择尺码
                if (sizeFlag != -1) {
                    $(".addcart1").css({ "display": "block" });

                    alert("i love you");
                    // ****商品尺码****
                    let size = $(".size ul li").eq(sizeFlag).text();
                    // ****商品gid****
                    let gid = getGid();
                    // ****商品描述****
                    let descript = $(".censhan").text();
                    // ****商品价格****
                    let price = parseInt($(".good span").text());
                    // ****商品数量****           
                    let num = $(".inputnum").val();
                    // ****用户id*****
                    let uid = getUid();
                    // 图片
                    let urlALL = imgUrl();
                    // console.log(uid);
                    // console.log(url);
                    // url 图片
                    let url = urlALL.split("/")[3];
                    // console.log(urlArr);

                    console.log(gid, url, descript, size, price, num, uid)

                    $.ajax({
                        "type": "post",
                        "url": "../api/shoppingcar.php",
                        data: {
                            "gid": gid,
                            "image": url,
                            "descript": descript,
                            "size": size,
                            "price": price,
                            "num": num,
                            "uid": uid,
                        },
                        success: function () {
                            // 更新购物车
                            console.log(uid)
                            updata(uid);
                        }
                    })




                    // console.log(size);
                } else if (sizeFlag == -1) {
                    alert("亲亲，请选择商品尺码！")
                }

            } else {
                alert("亲亲,请先登录哦~~~;")
            }

        })

    }
    shoppingCar();

    // 获取gid
    function getGid() {
        let url = location.search;
        // console.log(url);
        let urlArr = url.split("=");
        let gid = urlArr[1];
        return gid;
    }

    // 获取uid
    function getUid() {
        let uid = document.cookie.split("=")[1];
        return uid;
    }

    //获取图片路径
    function imgUrl() {
        console.log($(".minImg"))
        let url = $(".minImg li:eq(0) img").attr("src");
        console.log(381 + url);
        return url;
    }


    // X关闭购物车信息
    $(".addcart1 .close").on("click", function () {
        $(".addcart1").css({ "display": "none" });
    })

    // 继续购物，关闭购物车信息
    $(".CarBox_Btn .track").on("click", function () {
        $(".addcart1").css({ "display": "none" });
    })


    // 更新购物总数量和总价
    function updata(uid) {
        $.ajax({
            "type": "get",
            "url": "../api/carttips.php",
            data: {
                "uid": uid,
            },
            success: function (str) {
                console.log(str);
                let obj = JSON.parse(str);
                console.log(obj);
                // 插入商品数量
                $(".CarBox_NumPrice p:eq(0) span").text(obj.totals);
                //总价
                let arr = obj.data;
                console.log(arr);

                let allPrice = 0;
                arr.forEach(function (item) {
                    allPrice += item.nowprice * item.num;
                })
                console.log(allPrice);
                //插入总价
                $(".CarBox_NumPrice p:eq(1) span").text("￥" + allPrice);
            }
        })
    }

})