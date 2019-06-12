$(function () {
    // 二级导航
    $(".nav ul").children().hover(function () {
        $(this).find(".menu").toggleClass("down");
        $(this).find(".menu").stop(true, true).slideToggle(200);
    })

    // ***********限量抢购渲染***********
    function kill() {

        // 获取数据
        $.ajax({
            "type": "get",
            "url": "api/kill.php",
            "data":{
                "kind":"kill",
            },
            success: function (str) {
                let obj = JSON.parse(str);
                console.log(obj);
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
            let imgArr = item.img.split("&");
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
    }

    // ------------------------------------


    // ***********新品推荐***********
   function newgoods(){
    $.ajax({
        "type":"get",
        "url": "api/kill.php",
        "data": {
            "kind": "new",
        },
        success: function (str) {
            let obj = JSON.parse(str);
            console.log(obj);
           
        }

    })
   }



})