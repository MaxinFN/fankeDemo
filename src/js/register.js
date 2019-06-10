
$(function () {
    // 注册开关
    let flagArr = [];
    // canvas验证码
    var verifyCode = new GVerify("v_container");
    console.log(verifyCode);
    var res = null;
    document.getElementById("vertical").onblur = function () {
        res = verifyCode.validate(document.getElementById("vertical").value);
        if (res) {
            console.log("验证正确");
            // 开关
            flagArr.splice(0, 1, true);
        } else {
            console.log("验证码错误");
            // 开关
            flagArr.splice(0, 1, false);
        }
    }

    // ------------验证码验证------------
    $("#vertical").on("blur", function () {
        // 验证码
        let verVal = $("#vertical").val();
        // 非空判断
        if (verVal) {
            $(".lipiccode .tips").css({ "display": "none" });
        } else {
            $(".lipiccode .tips").css({ "display": "block" });
            $(".lipiccode .tips").text("请输入图片验证码");
        }
    })


    // ------------手机号验证------------
    $("#input_phone").on("focus", function () {
        $(".phoneTips").css({ "display": "block" })
        $(".liphone .tips").css({ "display": "none" })

    })

    $("#input_phone").on("blur", function () {
        $(".phoneTips").css({ "display": "none" });
        $(".liphone .tips2").css({ "display": "none" })
        // 手机号
        let telVal = $("#input_phone").val();
        if (formMatch.tel(telVal)) {

        } else {
            $(".liphone .tips").css({ "display": "block" })
        }
    })


    // ------------获取短信验证------------
    let phoneCode = null;
    $(".asPhoneregBtn").on("click", function () {
        // 验证码的内容
        let verVal = $("#vertical").val();
        // 手机号
        let telVal = $("#input_phone").val();

        // 判断验证码非空
        if (verVal) {
            if (!res) {
                // 清空验证码
                $("#vertical").val("");
                $(".lipiccode .tips").text("请输入正确的验证码后，再获取短信验证码");
                $(".lipiccode .tips").css({ "display": "block" });
            }

            // 判断验证码是否通过
            if (res && formMatch.tel(telVal)) {
                // 发送短信ajax
                alert("发送短信ajax");
                $.ajax({
                    type: "get",
                    url: "../api/register.php",
                    data: {
                        "phone": telVal,
                    },
                    success: function (str) {
                        if (str == 0) {
                            console.log("不可以注册");
                            $(".liphone .tips2").css({ "display": "block" });
                            //开关
                            flagArr.splice(1, 1, false);
                        } else if (str == 1) {
                            // 开关
                            flagArr.splice(1, 1, true);
                            console.log("可以注册");
                            // 手机验证码禁止输入
                            $("#input_phone").prop("disabled", "disabled");
                            // 隐藏发送短信
                            $(".f1").css({ "display": "none" });
                            // 显示发送中
                            $(".v2regList_Btnimg").css({ "display": "block" });
                            // 更改输入框颜色
                            $("#input_phone").css({ "background-color": "#EBEBE4" });
                            // 
                            $(".liphone .tips2").css({ "display": "none" })
                            // 短信随机验证码
                            let code = randomNum(100000, 999999);
                            // 倒计时
                            let n = 3;
                            let timer = setInterval(function () {
                                // 更新倒计时内容
                                $(".v2reg_tips01 .time").text(n);
                                // 显示倒计时信息
                                $(".v2reg_tips01").css({ "display": "block" });
                                if (n == -1) {
                                    // 清楚定时器
                                    clearInterval(timer);
                                    // 手机验证码启动输入
                                    $("#input_phone").prop("disabled", "");
                                    // 显示发送短信
                                    $(".f1").css({ "display": "inline-block" });
                                    // 显示发送中
                                    $(".v2regList_Btnimg").css({ "display": "none" });
                                    // 更改输入框颜色
                                    $("#input_phone").css({ "background-color": "#FFF" });
                                    // 隐藏倒计时信息
                                    $(".v2reg_tips01").css({ "display": "none" });
                                }
                                n--;
                            }, 1000);

                            // 发送短信
                            $.ajax({
                                type: "post",
                                url: "../api/msg.php",
                                data: {
                                    "code": code,
                                    "phone": telVal,
                                },
                            })
                            phoneCode = code;
                        }
                    }
                })




            } else {
                $(".lipiccode .tips").text("请输入正确的验证码后，再获取短信验证码");
                $(".lipiccode .tips").css({ "display": "block" });
            }
        } else {
            $(".lipiccode .tips").text("请输入图片上的验证码后，再获取短信验证码");
            $(".lipiccode .tips").css({ "display": "block" });
        }
    })


    // ------------手机号验证码验证------------
    $("#input_phonecode").on("focus", function () {
        $(".phonecodeTips").css({ "display": "block" })
    })

    $("#input_phonecode").on("blur", function () {
        $(".phonecodeTips").css({ "display": "none" })
        if ($("#input_phonecode").val() == phoneCode) {
            // 开关
            flagArr.splice(2, 1, true);
        } else {
            // 开关
            flagArr.splice(2, 1, false);
        }
    })


    // ------------登陆密码------------
    $("#input_password").on("focus", function () {
        // 显示提示信息
        $(".pswTips").css({ "display": "block" });

    })

    $("#input_password").on("blur", function () {
        $(".pswTips").css({ "display": "none" });

        // 获取密码
        let pswVal = $("#input_password").val();
        // 二次密码
        let repswVal = $("#input_repassword").val();

        // 正则匹配是否空格
        let res = formMatch.space(pswVal);
        if (!res) {
            // 开关
            flagArr.splice(3, 1, true);
            $(".v2reg_bg1 .tips2").css({ "display": "none" })
        } else {
            // 开关
            flagArr.splice(3, 1, false);
            $(".v2reg_bg1 .tips2").css({ "display": "block" })
        }
        // 密码长度
        let len = pswVal.length;
        if (pswVal) {
            if (len < 6) {
                // 开关
                flagArr.splice(3, 1, false);
                $(".v2reg_bg1 .tips").css({ "display": "block" })
            } else {
                // 开关
                flagArr.splice(3, 1, true);
                $(".v2reg_bg1 .tips").css({ "display": "none" })
            }
        } else {
            $(".v2reg_bg1 .tips").css({ "display": "none" })

        }

        if (pswVal == repswVal) {
            // 开关
            flagArr.splice(4, 1, true);
            $(".v2reg_bg2 .tips").css({ "display": "none" })
        } else {
            // 开关
            flagArr.splice(4, 1, false);
            $(".v2reg_bg2 .tips").css({ "display": "block" })
        }
    })


    // ------------再次输入密码------------
    $("#input_repassword").on("focus", function () {
        $(".repasswordTips").css({ "display": "block" })
    })
    $("#input_repassword").on("blur", function () {
        $(".repasswordTips").css({ "display": "none" })
        // 第一次的密码
        let pswVal = $("#input_password").val();
        // 二次密码
        let repswVal = $("#input_repassword").val();
        if (repswVal) {
            if (pswVal == repswVal) {
                // 开关
                flagArr.splice(4, 1, true);
                $(".v2reg_bg2 .tips").css({ "display": "none" })
            } else {
                // 开关
                flagArr.splice(4, 1, false);
                $(".v2reg_bg2 .tips").css({ "display": "block" })
            }
        }

    })


    // ------------阅读------------
    $("#chk_agreen").on("change", function () {

        let isok = $("#chk_agreen").prop("checked")

        if (isok == true) {
            // 开关
            flagArr.splice(5, 1, true);
            $(".submitStyle").css({ "background-color": "#b52024" });
        } else {
            // 开关
            flagArr.splice(5, 1, false);
            $(".submitStyle").css({ "background-color": "#9A9A9A" })
        }
    })

    // ------------立即注册------------
    $(".submitStyle").on("click", function () {
        if ((flagArr.length) == 6) {
            var $flag = flagArr.findIndex(function (val) {
                return val == false;   //有val == false,就返回下标，无就返回 -1
            })
            // 校验成功
            if ($flag == -1) {
                // 电话
                let telVal = $("#input_phone").val();
                // 密码
                let psw = $("#input_repassword").val();
                $.ajax({
                    type: "post",
                    url: "../api/registerBtn.php",
                    data: {
                        "type": "post",
                        "phone": telVal,
                        "psw": psw,
                    },
                    success: function (str) {
                        alert(str);
                        location.href = "../html/login.html";
                    }
                })
            } else {
                alert("注册不成功");
            };
        } else {
            alert("注册不成功");
        }

    })

    // ------------切换登录页面------------
    $(".login").on("click", function () {
        location.href = "../html/login.html";
    })

})