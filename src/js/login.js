$(function () {
    // 跳转主页
    $(".logoLink").on("click", function () {
        location.href = "../index1.html"
    })

    // 跳转注册
    $(".reg").on("click", function () {
        location.href = "../html/register.html";
    })

    // 切换登录方式
    $(".login_tab").on("click", "span", function () {
        let index = $(this).index();
        $(this).addClass("active");
        $(this).siblings().removeClass("active");
        $(".loginchange").eq(index).addClass("selected");
        $(".loginchange").eq(index).siblings().removeClass("selected");
        // 切换清空表单
        $(".loginchange").eq(index).find("input").not("input:last").val("");
        $(".loginchange").eq(index).find(".tips").css({ "visibility": "hidden" })

    })


    // -----------普通登录-----------
    // 用户名
    $(".username").on("blur", function () {
        let username = $.trim($(".username").val());
        if (username) {
            $("form div .tips1").css({ "visibility": "hidden" })
        }
    })

    //密码
    $(".password").on("blur", function () {
        let psw = $.trim($(".password").val());
        if (psw) {
            $("form div .tips2").css({ "visibility": "hidden" })
        }
    })

    // 点击登录
    $(".loginbtn").on("click", ajax);
    // 回车登录
    $(document).on("keydown", function (e) {
        if (e.keyCode == 13) {
            ajax();
        }
    })


    // -----------快速登录-----------
    // canvas验证码
    let res = null;
    let verifyCode = new GVerify({ id: "v_container", width: "140", height: "45" });
    console.log(verifyCode);
    document.getElementsByClassName("identify")[0].onblur = function () {
        res = verifyCode.validate(document.getElementsByClassName("identify")[0].value);
        if (res) {
            console.log("验证正确");
        } else {
            console.log("验证码错误");
        }
    }
    // 点击切换验证码,改变res
    document.getElementsByClassName("next")[0].onclick = function () {
        res = verifyCode.validate(document.getElementsByClassName("identify")[0].value);
        if (res) {
            console.log("验证正确");
        } else {
            console.log("验证码错误");
        }
    }


    $(".phone").on("focus", function () {
        // 隐藏
        $(".loginchange .tipsB").html("请输入有效的手机号码").css({ "visibility": "hidden" });
        // 隐藏
        $(".loginchange .tipsT").css({ "visibility": "hidden" });
    })

    // 开关
    // let getcodeFlag = false;
    let sendFlag = false;
    // 初始化手机验证码
    let phoneCode = null;
    // 验证码绑定的号码
    let number = null;

    // -------发送验证码------
    $(".getcode").on("click", function () {
        // getcodeFlag = true;

        // 正则判断手机号
        let phone = $.trim($(".phone").val());
        let reg = formMatch.tel(phone);
        // 验证码
        let code = $.trim($(".identify").val());

        if (!reg) {
            $(".loginchange .tipsT").html("请输入有效的手机号").css({ "visibility": "visible" });
        } else if (!code) {
            $(".loginchange .tipsT").css({ "visibility": "hidden" });
            $(".loginchange .tipsM").html("请输入图片上的验证码后，再获取短信验证码").css({ "visibility": "visible" });
        } else if (!res) {
            $(".loginchange .tipsM").html("您输入的验证码错误，请重新输入。").css({ "visibility": "visible" });
        } else if (res) {
            // ----发送手机验证码-----

            // 成功发送，开关打开
            sendFlag = true;
            // 验证码绑定的号码
            number = $.trim($(".phone").val());


            $(".getcode a").text("正在发送验证码");

            let timer1 = setInterval(function () {
                clearInterval(timer1);
                let n = 3;
                let timer2 = setInterval(function () {
                    $(".getcode a").text(n + "秒后重新获取");
                    if (n == -1) {
                        $(".getcode a").text("获取短信验证码");
                        clearInterval(timer2);
                    }
                    n--;

                }, 1000);
            }, 800);

            // 短信随机验证码
            let code = randomNum(100000, 999999);

            // $.ajax({
            //     type: "post",
            //     url: "../api/msg.php",
            //     data: {
            //         "code": code,
            //         "phone": phone,
            //     },
            // });

            phoneCode = code;
        }

    })


    // ------Cavas验证------
    $(".identify").on("blur", function () {
        if (res) {
            $(".loginchange .tipsM").css({ "visibility": "hidden" });
            // res = null;
        } else {
            $(".loginchange .tipsM").html("您输入的验证码错误，请重新输入。").css({ "visibility": "visible" });
        }
    })

    // $(".next").on("click", function () {
    //     if (res) {
    //         $(".loginchange .tipsM").css({ "visibility": "hidden" });
    //         // res = null;
    //     } else {
    //         $(".loginchange .tipsM").html("您输入的验证码错误，请重新输入。").css({ "visibility": "visible" });
    //     }
    // })


    // ------手机验证码验证------
    // $(".phoneidentify").on("blur", function () {

    // })



    // ------点击登录（快速登录）------
    // $(".loginbtn").on("click", function () {

    // })



    // -----------信息校验-----------
    function ajax() {

        // --------------------普通登录--------------------
        // 获取账号和密码
        let username = $.trim($(".username").val());
        let psw = $.trim($(".password").val());

        // 判断非空
        if (!username) {
            $(".username").focus();
            $("form div .tips1").html("用户名不能为空!").css({ "visibility": "visible" })

        } else if (!psw) {
            $(".password").focus();
            $("form div .tips2").html("密码不能为空!").css({ "visibility": "visible" })
        } else {
            $("form div .tips1").css({ "visibility": "hidden" })
            $("form div .tips2").css({ "visibility": "hidden" })
        }

        // ajax校验
        if (username && psw) {
            // 登录按钮状态切换
            $(".loginbtn").val("正在验证...");

            $.ajax({
                "type": "post",
                "url": "../api/login1.php",
                "data": {
                    "phone": username,
                },
                success: function (str) {
                    if (str) {
                        $(".loginbtn").val("登录");
                    }
                    let obj = JSON.parse(str);
                    console.log(obj);

                    // 查询账号
                    if (obj.user == true) {
                        // 账号密码校验
                        if (obj.success == true) {
                            alert("登录成功");
                            // 跳转到主页
                            location.href = "../index1.html";
                            // 设置Cookie
                            cookieFun.setCookie("uid", obj.uid, 7);

                        } else {
                            $("form div .tips2").html("账户和密码不匹配").css({ "visibility": "visible" });
                        }
                    } else if (obj.user == false) {
                        $("form div .tips2").html("账户不存在").css({ "visibility": "visible" });
                    }
                },
            })
        }

        // --------------------快速登录--------------------
        let phone = $.trim($(".phone").val());
        // 判断非空
        if (!phone) {
            $(".loginchange .tipsB").html("请输入有效的手机号码").css({ "visibility": "visible" });
        } else if (sendFlag == false) {
            $(".loginchange .tipsT").html("请获取短信验证码").css({ "visibility": "visible" });
        } else if (sendFlag && res) {
            // 短信验证输入框
            let phoneVal = $(".phoneidentify").val();



            // 短信验证码判断
            // phoneCode
            if (phoneVal == 1234) {
                // 电话号码
                let phoneCofirm = $.trim($(".phone").val());
                // 确认为接收验证码的手机号
                if (phoneCofirm == number) {
                    alert("登录成功！！！")

                    $.ajax({
                        "type": "post",
                        "url": "../api/login1.php",
                        "data": {
                            "phone": phone,
                        },
                        success: function (str) {
                            console.log(str)
                            if (str) {
                                $(".loginbtn").val("登录");
                            }
                            let obj = JSON.parse(str);
                            console.log(obj);
                            // 跳转主页
                            location.href = "../index1.html"
                            // 设置Cookie
                            cookieFun.setCookie("uid", obj.uid, 7);
                        }
                    })

                    // 用户存在
                    $.ajax({
                        "type": "get",
                        "url": "../api/register.php",
                        "data": {
                            "phone": phone,
                        },
                        success: function (str) {
                            if (str == 1) {
                                // 用户不存在则注册
                                $.ajax({
                                    "type": "post",
                                    "url": "../api/registerBtn.php",
                                    "data": {
                                        "phone": phone,
                                    },
                                    success: function (str) {
                                        if (str) {
                                            console.log(str);

                                        }
                                    },
                                })

                            }
                        }
                    })
                } else {
                    alert("与短信验证的号码不一致！")
                }



            } else {
                $(".loginchange .tipsT").html("输入的验证码错误，请重试").css({ "visibility": "visible" });
            }
        }
    }

})






