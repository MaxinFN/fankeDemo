/*

        公共函数：封装，减少代码量，

*/

// ----------------------------------------------------------

//找节点
function getId(a) {
    return document.getElementById(a);
}

// ----------------------------------------------------------


// 四个随机验证码
function verification() {

    //定义随机验证码内容
    var str = '123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
    var html = '';

    //生成四个随机码进行拼接
    for (var i = 0; i < 4; i++) {
        var ranD = parseInt(Math.random() * str.length);
        html += str[ranD];
    }

    //返回值
    return html;
}


// ----------------------------------------------------------


//随机颜色
function randomColor() {
    var str = '1234567890abcdefABCDEF';
    var html = '#';

    for (var i = 0; i < 6; i++) {
        var ranD = parseInt(Math.random() * str.length);
        html += str[ranD];
    }
    return html;
}


// ----------------------------------------------------------
//随机范围区间
function randomNum(min, max) {
    //	Math.random();//0-1 不包括1
    return parseInt(Math.random() * ((max - min) + 1) + min);
}
// ----------------------------------------------------------



// ----------------------------------------------------------


// 不定参数求和
function add() {
    var sum = 0;
    for (var i = 0; i < arguments.length; i++) {
        sum += arguments[i];
    }
    return sum;
}

// ----------------------------------------------------------


// 两数比较取大
function numMax(a, b) {
    var c = a > b ? a : b;
    return c;
}

// ----------------------------------------------------------


//n的阶乘
function jc(n) {
    res = 1;
    for (var i = 1; i <= n; i++) {
        res *= i;
    }
    return res;
}

// ----------------------------------------------------------


/*   输入n为偶数时，调用函数求1 / 2 + 1 / 4 +…+1 / n,
 当输入n为奇数时，调用函数求1 + 1 / 3 +…+1 / n     */

function abc(a) {
    var res = 0;
    if (a % 2 == 0) {
        for (var i = 1; i <= a; i++) {
            if (i % 2 == 0) {
                res += 1 / i;
            }
        }
        return res;
    } else {
        for (var j = 1; j <= a; j++) {
            if (j % 2 != 0)
                res += 1 / j;
        }
        return res;
    }
}

// ----------------------------------------------------------


// 数组去重
function norepeat(arr) {
    var arrN = [];
    for (var i = 0; i < arr.length; i++) {
        if (arrN.indexOf(arr[i]) == -1) {
            arrN.push(arr[i]);
        }
    }
    return arrN;
}

// ----------------------------------------------------------


// 获取字节长度
function bytesLength(str) {
    var count = str.length;
    for (var i = 0; i < str.length; i++) {

        /*
        charCodeAt获取字符的ACII码，
        如果大于255则字节长度为2，小于等于255字节长度为1.
        */
        if (str.charCodeAt(i) > 255) {
            count++;
        }
    }
    return count;
}
// ----------------------------------------------------------


//过滤敏感字眼
function filter(str) {
    var arr = ['操', '你妈', '全家', '傻嘿', 'fuck', '你妈逼', '傻逼', '卧槽', '麻蛋', '妈蛋'];
    arr.forEach(function (item) {
        var reg = new RegExp(item, 'ig');
        str = str.replace(reg, '***');
    })
    return str;
}

// ----------------------------------------------------------


// 统计字符串中字符个数的函数
function strCount(str) {

    // 将字符串分割成数组
    var arr = str.split('');

    // 数组去重
    var arrN = [];
    for (var i = 0; i < arr.length; i++) {
        if (arrN.indexOf(arr[i]) == -1) {
            arrN.push(arr[i]);
        }
    }

    var strN = arrN.join('');
    console.log('去重后：' + strN);

    // 查找个数
    for (var j = 0; j < arrN.length; j++) {
        console.log(arrN[j] + '的个数为');
        var count = 0;
        for (var k = 0; k < arr.length; k++) {
            if (arrN[j] == arr[k]) {
                count++;
            }
        }
        console.log(count);
    }
}


/*---------------------------------------------------------------*/
/*
12网址url转成对象.html

网址：http://www.baidu.com:8888/html/login.html?name=malin&psw=1234#668

网址构成：

协议：http://  https://  三次握手
子域名：www
主域名：baidu.com
端口号：8888  默认：80，可以省略
目录：html / login.html
参数：name = malin & psw=1234  和后端进行数据传输，?后面#号之前的，叫参数
哈希值：668，#后面   单页面程序  app
*/

// 将url的字符串转为对象,参数为一个url地址（不包含哈希值）
function strToObj(url) {
    // 以?进行分割，并获取?后面数组的元素
    var strUrl = url.split('?')[1];
    // 接受数据
    var obj = {};
    // 以&符号进行分割
    var arr = strUrl.split('&');
    // 遍历数组，将数组元素分割后传给obj对象
    arr.forEach(function (item) {
        var arrN = item.split('=');
        obj[arrN[0]] = arrN[1];
    });
    return obj;
}

// ----------------------------------------------------------


// 将对象转换化字符串并拼接
function objToStr(obj) {
    // 接受数据
    var html = '';
    // 遍历对象进行拼接
    for (var key in obj) {
        html += key + '=' + obj[key] + '&';
    }

    return html.slice(0, -1);
}

// ----------------------------------------------------------

// 正则表单验证
var formMatch = {
    // 账号验证
    account: function (str) {
        var reg = /^[A-z][\-\$\@\w]{5,15}$/;
        return reg.test(str);
    },

    // 昵称验证
    name: function (str) {
        var reg = /^[\u2E80-\u9FFF]{2,69}$/;
        return reg.test(str);
    },

    // 邮箱验证
    email: function (str) {
        var reg = /^[a-z0-9][\w\-\.]{2,29}@[a-z0-9\-]{2,67}(\.[a-z\u2E80-\u9FFF]{2,6})+$/;
        return reg.test(str);
    },

    // 身份证验证
    idcard: function (str) {
        var reg = /^(\d{17}|\d{14})[\dxX]$/;
        return reg.test(str);
    },
    // 电话验证
    tel: function (str) {
        var reg = /^1[3-9]\d{9}$/;
        return reg.test(str);
    },
    // 生日验证
    bir: function (str) {
        var reg = /^\d{4}([\/\-]?)\d{1,2}\1\d{1,2}$/;
        return reg.test(str);
    },

    /*
    密码
        长度6-20
        不能包含空格
    */
    pswF: function (str) {
        var reg = /^\S{6,20}$/;
        return reg.test(str);
    },

    username: function (str) {
        var reg = /^[a-zA-Z0-9_-]{4,16}$/;
        return reg.test(str);
    },

    space: function (str) {
        var reg = /\s/;
        return reg.test(str);
    }
    // pswS: function (str) {
    //     var reg = /^\S{6,20}$/;
    //     return reg.test(str);
    // },
}

// ----------------------------------------------------------
//获取样式  
function getstyle(ele, cls) {
    //ele 节点   cls：属性名
    if (getComputedStyle(ele, false)) {
        //在高级浏览器下面
        return getComputedStyle(ele, false)[cls];
    } else {
        //在低版本浏览器 IE8-
        return ele.currentStyle[cls];
    }
}

// ----------------------------------------------------------


/*
	运动框架封装：startMove()过渡    jq animate()
	最终版：多对象，多属性，链式运动框架(运动队列)
	参数一：对象名
	参数二：属性，目标值  键名：属性名，键值：目标值    {'width':200,'heigth':400}  实现：宽度和高度一起改变，宽度变成200，高度变成400
	参数三：回调函数(可选参数)
 */
function startMove(obj, json, fnend) {

    clearInterval(obj.timer); //防止定时器叠加
    obj.timer = setInterval(function () {

        var istrue = true;

        //1.获取属性名，获取键名：属性名->初始值
        for (var key in json) { //key:键名   json[key] :键值
            //			console.log(key); //width heigth opacity
            var cur = 0; //存初始值

            if (key == 'opacity') { //初始值
                cur = getstyle(obj, key) * 100; //透明度
            } else {
                cur = parseInt(getstyle(obj, key)); // 300px  300  width heigth borderwidth px为单位的

            }

            //2.根据初始值和目标值，进行判断确定speed方向，变形：缓冲运动
            //距离越大，速度越大,下面的公式具备方向
            var speed = (json[key] - cur) / 6; //出现小数
            speed = speed > 0 ? Math.ceil(speed) : Math.floor(speed); //不要小数部分，没有这句话或晃动

            if (cur != json[key]) { //width 200 heigth 400
                istrue = false; //如果没有达到目标值，开关false
            } else {
                istrue = true; //true true
            }

            //3、运动
            if (key == 'opacity') {
                obj.style.opacity = (cur + speed) / 100;
                obj.style.filter = 'alpha(opacity:' + (cur + speed) + ')';
            } else {
                obj.style[key] = cur + speed + 'px'; //针对普通属性 left  top height 
            }

        }

        //4.回调函数:准备一个开关,确保以上json所有的属性都已经达到目标值,才能调用这个回调函数
        if (istrue) { //如果为true,证明以上属性都达到目标值了
            clearInterval(obj.timer);
            if (fnend) {
                fnend();//调用函数
            }
        }

    }, 30); //obj.timer 每个对象都有自己定时器

}

// -----------------------------------------------------

// ajax数据交互 
/*
    * 传参数格式
     {
        type: '',  //发送法式  get/post
        url : '',  //发送的地址 
        date : '',  //可以省略,有默认参数
        async : '', //可以省略,有默认参数  true为异步，false为同步
        callback : function(){}   //回调函数
    }
*/
function ajaxFun(opt) {
    // 默认参数
    var defaults = {
        date: '',
        async: 'true'
    }

    // 配置默认参数
    function extend(obj1, obj2) {
        for (var key in obj1) {
            obj2[key] = obj1[key];
        }
    }

    //使用默认参数
    extend(opt, defaults);


    var xhr = null;
    // 兼容创建ajax对象
    if (window.XMLHttpRequest) {
        // 主流浏览器
        xhr = new XMLHttpRequest();
    } else {
        // IE浏览器
        xhr = new ActiveXObject('Microsoft.XMLHttp');
    }

    // 请求方式
    if (defaults.type.toLowerCase() == 'get') {
        defaults.url += "?" + defaults.date;
        xhr.open('get', defaults.url, defaults.async);
        xhr.send(null);
    } else if (defaults.type.toLowerCase() == 'post') {
        xhr.open('post', defaults.url, defaults.async);
        // 设置请求头
        xhr.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        // 发送请求
        xhr.send(defaults.date);
    }

    // 监听状态并返回结果
    xhr.onreadystatechange = function () {
        // readyState是Http的请求状态 值区间0~4  4为成功（http响应）
        if (xhr.readyState == 4) {
            //HTTP 状态代码
            if (xhr.status == 200) {
                // 回调服务器响应的数据
                defaults.callback(xhr.responseText);
            } else {
                alert("出错了，状态码为" + xhr.status);
            }
        }
    }

}


//ajax
function ajax(obj) {
    function comparison(obj1, obj2) {
        for (var key in obj1) {
            obj2[key] = obj1[key];
        }
    }
    var opt = {
        other: true,
        data: ''
    }
    comparison(obj, opt);
    var hxr = new XMLHttpRequest();
    if (opt.type == 'get') {
        opt.url += '?' + opt.data;
        hxr.open(opt.type, opt.url, opt.other);
        hxr.send(null);
    } else if (opt.type == 'post') {
        hxr.open(opt.type, opt.url, opt.other);
        hxr.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        hxr.send(opt.data);
    }
    hxr.onreadystatechange = function () {
        if (hxr.readyState == 4) {
            if (hxr.status == 200) {
                if (opt.fn) {
                    opt.fn(hxr.responseText);
                }
            } else {
                alert('出错了，状态码是：' + hxr.status)
            }
        }
    }

}

// -----------------------------------------------------

// 扁平化数组
/*
    *功能：将一个多维数组转为一个单数组
 */

function flatArray(arr) {
    let res = [];
    arr.map(item => {
        if (Array.isArray(item)) {
            res = res.concat(flatArray(item))
        } else {
            res.push(item);
        }
    })
    return res;
}

// -----------------------------------------------------
/*  
       增删改查Cookie
           使用方法：
               *设置或修改cookie
                   *cookieFun.setCookie(key,val,day)
                       *key  --->cookie name
                       *val  --->cookie value
                       *day  --->expries(存储天数)
               *删除Cookie
                   *cookieFun.delCookie(key)
                       *key   ---->删除的cookie名

   */
var cookieFun = {

    // 设置或修改Cookie 
    setCookie: function (key, val, day) {
        // 获取时间戳
        var oDate = new Date();
        // 设置储存时间
        oDate.setDate(oDate.getDate() + day);

        document.cookie = key + "=" + val + ";expires=" + oDate + ';path=/';
        return this;
    },

    // 删除Cookie
    delCookie: function (key) {
        this.setCookie(key, "", -1);
        return this;
    },

    // 获取Cookie
    getCookie: function (key) {
        var allCookie = document.cookie;
        var arrCookie = allCookie.split("; ");
        // console.log(arrCookie);
        for (var item of arrCookie) {
            var res = item.split("=");
            if (res[0] == key) {
                // console.log(res[1]);
                return res[1];
            }
        }


        // arrCookie.forEach(function (item) {
        //     var res = item.split("=");
        //     if (res[0] == key) {
        //         console.log(res[1]);
        //         callback(res[1]);
        //     }
        // });
        // return this;
    },
}