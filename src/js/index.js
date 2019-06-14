$(function () {
    // ***********二级导航************
    $(".nav ul").children().hover(function () {
        $(this).find(".menu").toggleClass("down");
        $(this).find(".menu").stop(true, true).slideToggle(200);
    })

    // 查看登录状态
    function login() {
        let cookVal = cookieFun.getCookie("uid");
        console.log(cookVal);
        if (cookVal) {
            $.ajax({
                "type": "post",
                "url": "api/uid.php",
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
            let str = ` <a href="html/login.html">登录</a>|&nbsp;
                        <a href="html/register.html">注册</a>`;
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
            let str2 = ` <a href="html/login.html">更换用户</a>`;
            $(".user").html(str1 + str2);
            $(".user").children().css({ "color": "#a10000" });

            // 点击清除cookie
            $(".user a:eq(0)").on("click", function () {
                console.log(123)
                cookieFun.delCookie("uid");
                // 刷新页面
                location.href = "index1.html";
            })



        }

    }
    login();

    // ***********轮播图************
    //轮播图
    $(function () {
        //1. 获取元素
        var zz_carousel = $('#zz_carousel');
        var imgs = zz_carousel.find('.image_reel li');
        var paging = zz_carousel.find('.paging');
        var previous = zz_carousel.find('.previous a');
        var next = zz_carousel.find('.next');
        imgs.eq(0).css('zIndex', 1);
        //2. 添加小圆点
        var picIdx = 0;  //当前图片下标
        var zIndexNum = 2; //层级
        //页码
        imgs.each(function (index) {
            var span = $('<span></span>');
            span.idx = index;
            span.appendTo(paging);
            span.click(function () {
                $(this).addClass('active').siblings().removeClass('active');
                picIdx = span.idx;
                imgs.eq(picIdx).css('zIndex', 1).siblings().css('zIndex', 0);
            });
        });
        //给页码设置居中
        paging.children().eq(0).addClass('active');
        paging.css({
            marginLeft: -(paging.outerWidth() / 2),
            zIndex: 10
        });
        function nextPic() {
            picIdx++;
            if (picIdx >= imgs.length) {
                picIdx = 0;
            }
            if (zIndexNum > imgs.length) {
                imgs.css('zIndex', 0);
                zIndexNum = 0;
            }
            imgs.eq(picIdx).css({ 'zIndex': zIndexNum++, 'opacity': 0 }).animate({ opacity: 1 }, 'slow');
            paging.children().eq(picIdx).addClass('active').siblings().removeClass('active');
        }
        //1. 自动播放和鼠标移入移出事件
        var timer1 = null;
        timer1 = setInterval(nextPic, 3000);
        zz_carousel.mouseenter(function () {
            clearInterval(timer1);
        });
        zz_carousel.mouseleave(function () {
            timer1 = setInterval(nextPic, 3000);
        });
        //2. 左右按钮点击事件
        previous.click(function () {
            picIdx--;
            if (picIdx <= -1) {
                picIdx = imgs.length - 1;
            }
            imgs.css('zIndex', 0);
            zIndexNum = 1;
            imgs.eq(picIdx).css({ 'zIndex': zIndexNum++, 'opacity': 0 }).animate({ opacity: 1 }, 'slow');
            paging.children().eq(picIdx).addClass('active').siblings().removeClass('active');
        });
        next.click(function () {
            nextPic();
        });
        function creatcert(arr) {
            var res = arr.map(function (item) {
                return ` <li class="clearfix">
                        <div class="fl">
                        <img src="img/goods/${item.imgurl}" alt="">
                         </div>
                        <div class="goodsin fl">
                            <div class="des">
                                <a href="">${item.descript}</a>
                            </div>
                            <span class="fl">￥
                                <em class="simple">${item.nowprice}</em> ×
                                <em class="jianum">${item.num}</em>
                            </span>
                        </div>
                        <a href="" class="colors del fl">删除</a>
                    </li>`
            }).join('');
            $('.certgoods').html(res);
        }
        var certnum = 0;
        $('.shoppingCart').hover(function () {
            $('.certshow').show().siblings().css('color', '#a10000').parent().css(
                'background', '#fff');
            $.ajax({
                type: 'get',
                url: 'api/mycert.php',
                success: function (str) {
                    var arr = JSON.parse(str);
                    var newarr = arr.data;
                    certnum = arr.total
                    creatcert(newarr);
                    $('.tiaoshu').html(certnum);
                }
            });
        }, function () {
            $('.certshow').hide().siblings().css('color', '#fff').parent().css(
                'background', 'url(img/goods/vanclsprite.png) no-repeat -154px 0px')
        });

    });



    // ***********限量抢购渲染***********
    function kill() {

        // 获取数据
        $.ajax({
            "type": "get",
            "url": "api/kill.php",
            success: function (str) {
                // console.log(str)
                let obj = JSON.parse(str);
                // console.log(obj);
                killCreat(obj);
                // let imgArr = obj[0].img.split("&");
                // console.log(imgArr);
            }
        })
    }
    // 入口
    kill();

    function killCreat(obj) {

        let str = obj.map(function (item) {
            // console.log(item.image)
            let imgArr = item.image.split("&");
            return `<li data-id=${item.gid}>
                        <a href="###">
                            <img src="img/goods/${imgArr[0]}">
                        </a>
                        <div class="goods_descript">
                            <a href="javascript:;">${item.descript}</a>
                        </div>
                        <div class="price">
                            <p class="price1 ">¥
                                            <span class="original_price ">${item.oldprice}</span>
                            </p>
                            <p>
                                <span class="current_price fl ">¥
                                                <em>${item.nowprice}</em>
                                </span>
                                <span class="afterdeposit fr ">充值后
                                                <em>${item.recharge}</em>元</span>
                            </p>
                        </div>
                    </li>
                  `
        }).join("");

        $(".show_list").html(str);

        // 跳转详情页
        gotoDetail(".show_list");
    }

    // ------------------------------------


    // ***********新品推荐渲染***********
    function newgoods() {
        $.ajax({
            "type": "get",
            "url": "api/newgoods.php",
            success: function (str) {
                let obj = JSON.parse(str);
                console.log(obj)
                // obj.length = 11;
                newgoodsCreat(obj);
            }

        })
    }

    // 入口
    newgoods();

    function newgoodsCreat(obj) {
        let str = obj.map(function (item) {
            // let imgArr = item.new;
            // console.log(imgArr);
            return `<li data-id=${item.gid}>
                        <a href="###">
                            <img src="img/goods/${item.new} " alt=" ">
                        </a>
                    </li>`;
        }).join("");
        $(".listshirt").html(str);
        console.log(str);
        // 跳转详情页
        gotoDetail(".listshirt");
    }

    // ------------------------------------

    // ***********优选推荐渲染***********
    function tuijian() {
        $.ajax({
            "type": "get",
            "url": "api/tuijian.php",
            success: function (str) {
                let obj = JSON.parse(str);
                tuijianCreat(obj)
            }

        })
    }
    // 入口
    tuijian();

    function tuijianCreat(obj) {
        let str = obj.map(function (item) {
            let imgArr = item.image.split("&");
            // console.log(item.descript)
            let descriptArr = item.descript.split("&");
            // console.log(imgArr);
            return ` <ul class="pic_list ">
                            <li class="pic_one" data-id=${item.gid}>
                                <a href="###">
                                    <img src="img/goods/${imgArr[0]}" alt=" ">
                                </a>
                                <h3>
                                    <span>充值购买更优惠</span>
                                    ${descriptArr[0]}
                                </h3>
                            </li>
                            <li class="pic_two ">
                                <div class="pic_twotop" data-id=${item.gid}>
                                    <a href="###">
                                        <img src="img/goods/${imgArr[1]}" alt=" ">
                                    </a>
                                    <h3>
                                        <span>充值购买相当于99元</span>
                                        ${descriptArr[1]}
                                    </h3>
                                </div>
                                <div class="pic_twobottom" data-id=${item.gid}>
                                    <a href="###">
                                        <img src="img/goods/${imgArr[2]}" alt=" ">
                                    </a>
                                    <h3>
                                        <span>充值购买相当于29元起</span>
                                        ${descriptArr[2]}
                                    </h3>
                                </div>
                            </li>
                            <li class="pic_three" data-id=${item.gid}>
                                <img src="img/goods/${imgArr[3]}" alt=" ">
                                <h3>
                                    <span>${descriptArr[3]}</span>
                                    充值购买相当于&nbsp; 39元
                                </h3>
                            </li>
                        </ul>`;
        }).join("");

        $(".tuijian").html(str);

        // 跳转详情页
        gotoDetail(".tuijian");
    }


    // ------------------------------------

    // ***********下装推荐渲染***********
    function pants() {
        $.ajax({
            "type": "get",
            "url": "api/pants.php",
            success: function (str) {
                let obj = JSON.parse(str);
                pantsCreat(obj);
            }

        })
    }

    // 入口
    pants();

    function pantsCreat(obj) {
        let str = obj.map(function (item) {
            return `<li class="pic_three" data-id=${item.gid}>
                        <img src="img/goods/${item.image} " alt=" ">
                        <h3>
                            ${item.descript}
                            <span>充值购买相当于&nbsp; ${item.nowprice}元</span>
                        </h3>
                    </li>`;
        }).join("");
        $(".pantsquan").html(str);

        //跳转详情页
        gotoDetail(".pantsquan");
    }



    // ------------------------------------

    // ***********更多精品渲染***********
    function more() {
        $.ajax({
            "type": "get",
            "url": "api/more.php",
            success: function (str) {
                let obj = JSON.parse(str);
                moreCreat(obj);
            }

        })
    }

    // 入口
    more();

    // 
    function moreCreat(obj) {
        let str = obj.map(function (item) {
            // let imgArr = item.image.split("&");
            // console.log(imgArr);
            return `<li data-id=${item.gid}>
                        <a href="###">
                            <img src="img/goods/${item.image} " alt=" ">
                        </a>
                    </li>`;
        }).join("");
        $(".geocy").html(str);

        //跳转详情页
        gotoDetail(".geocy");
    }


    // ------------------------------------

    // ********二级导航跳转列表页*********
    $(".menu").on("click", "li", function () {
        console.log(123)
        window.open().location = "html/goodslist.html";

    })


    // *************跳转详情页***********
    function gotoDetail(className) {
        $(className).on("click", "li", function () {
            let gid = $(this).attr("data-id");
            window.open().location = "html/detail.html?" + "gid=" + gid;
        })
    }


    // *************返回顶部***********
    $('.totop').click(function () {
        $("html, body").animate({ scrollTop: 0 }, 150);
    });

    // *************倒计时***********
    function countTime() {
        let timer = null;

        //当前时间
        let currentTime = new Date().getTime();
        // console.log(currentTime);

        // 设置结束时间
        let endTime = "2019-06-17 14:49:00";
        let end = Date.parse(new Date(endTime));
        // console.log(end);
        // 时间差

        let diff = parseInt((end - currentTime) / 1000);
        console.log(diff);

        if (diff >= 0) {
            // 开启定时器
            timer = setInterval(function () {
                // 实时捕获当前时间
                currentTime = new Date().getTime();
                diff = parseInt((end - currentTime) / 1000);
                // console.log(diff)
                let sec = diff % 60;                       // 秒
                // console.log("秒:" + zero(sec));
                let minu = parseInt((diff / 60) % 60);     // 分
                // console.log("分:" + zero(minu));
                let hour = parseInt((diff / 60 / 60))      //时
                // console.log("时:" + zero(hour));

                $(".timecount span em").eq(2).text(zero(hour));
                $(".timecount span em").eq(1).text(zero(minu));
                $(".timecount span em").eq(0).text(zero(sec));
            }, 1000)
        } else {
            clearInterval(timer);
            let str = `秒杀已结束!<em>00</em><em>00</em><em>00</em>`
            $(".timecount span").html(str);
            // $(".timecount span em").text(00);
        }

        // 时间补零
        function zero(num) {
            if (num <= 9) {
                return "0" + num;
            } else {
                return num;
            }
        }
    }

    countTime();

})