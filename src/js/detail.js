$(function () {
    // 二级导航
    $(".nav ul").children().hover(function () {
        $(this).find(".menu").toggleClass("down");
        $(this).find(".menu").stop(true, true).slideToggle(200);
    })

    // *********截取网址，获取id渲染*********
    function render() {
        // 截取网址
        let str = location.search.slice(1);
        console.log(str);
        let arr = str.split("=");
        console.log(arr);

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

                creat(obj);
            },
        })


    }
    // 入口
    render();

    // 数据渲染
    function creat(obj) {
        let div1 = ` <div class="location">
                            <a href="javascript:;">
                                首页
                            </a> &nbsp;>&nbsp;
                            <a href="javascript:;">
                                男装
                            </a>
                            &nbsp; >&nbsp;
                            <a href="javascript:;">
                                衬衫
                            </a>
                        </div>
                        <div class="fl censhan">${obj.descript}</div>`;

        $(".render .ProductTitleShow .ProductSubnav").prepend(div1);
        let div2 = `1`;

    }

    // 图片框个数
    function imgMin(obj) {
        let str = obj.image;
        let imgArr = str.split("&");
        let len = imgArr.length;
        let li= "";
        for (let i = 0; i < len - 1; i++) {
            
        }
    }



})