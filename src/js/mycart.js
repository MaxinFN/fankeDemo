$(function () {
    // 获取cookie uid

    let uid = cookieFun.getCookie("uid");
    console.log(uid)
    // 初始化页面
    function pageRender() {
        $.ajax({
            "type": "get",
            "url": "../api/mycart.php",
            data: {
                "uid": uid,
            },
            success: function (str) {
                let obj = JSON.parse(str)
                console.log(obj);
                rende(obj);
            }
        });

        function rende(obj) {

            let html = obj.map(function (item) {
                return `<tr>
                            <td></td>
                            <td class="selected">
                                <input type="checkbox" class="checkedbtn">
                            </td>
                            <td class="imgbox">
                                 <img src="../img/goods/${item.image}" alt="">       
                            </td>
                            <td class="descript">
                                ${item.descript}
                            </td>
                            <td>M</td>
                            <td class="price">
                                ￥${item.nowprice}.00
                            </td>
                            <td class="num">
                                <span class="subtract fl"></span>
                                <input type="text" class="inputnum fl" value="${item.num}">
                                <span class="add fl"></span>
                            </td>
                            <td>-</td>
                            <td class="xiaoji">￥${item.nowprice * item.num}.00</td>
                            <td class="rowdelbox">
                                <div class="confirm">
                                    <p>确定要删除此商品吗?</p>
                                    <div>
                                        <a href="###" class="yes">确定 </a>
                                        <a href="###" class="no">取消 </a>
                                    </div>
                                    <span class="delarrow"></span>
                                </div>
                                <a href="###" class="rowdel">删除</a>
                            </td>
                            <td></td>
                        </tr>`;
            }).join("");

            // 数据渲染
            $(".table table tbody").html(html);


        }

    }
    pageRender();

    // 增加
    $("tbody").on("click", ".add", function () {
        let val = $(this).prev().val();
        console.log(val);
        val++;
        $(this).prev().val(val);

        // 单价
        // let pri = parseInt($.trim($(this).parent().prev().text()).slice(1));

        // total = pri * val
        // console.log(pri);
        // let 
        //刷新小计
        xiaoji($(this), val);

        //购物车统计
        all()
    })

    // 减少
    $("tbody").on("click", ".subtract", function () {
        let val = $(this).next().val();
        console.log(val);
        val--;
        if (val < 1) {
            val = 1;
        }
        $(this).next().val(val);

        // let pri = parseInt($.trim($(this).parent().prev().text()).slice(1));

        // total = pri * val
        // console.log(pri);
        // let 
        //刷新小计
        xiaoji($(this), val);

        //购物车统计
        all();
    })

    // 弹出删除
    $("tbody").on("click", ".rowdel", function () {
        // $(this).parent().parent().remove();
        $(this).prev().css({ "display": "block" });
    })

    //确定删除
    $("tbody").on("click", ".yes", function () {
        $(this).parents("tr").remove();

        //刷新购物车统计
        all();
    })
    //取消删除
    $("tbody").on("click", ".no", function () {
        $(this).parents(".confirm").css({ "display": "none" });
    })


    //全选
    $(".allselect").on("change", function () {
        let flag = $(".allselect").prop("checked");
        console.log(flag);

        $(".checkedbtn").prop("checked", flag);

        //购物车统计
        all();
    })

    // 单选控制全选
    $("tbody").on("change", ".checkedbtn", function () {
        // 单选框长度
        // console.log($(".checkedbtn"));
        let len = $(".checkedbtn").length;
        let checkLen = $(".checkedbtn:checked").length;
        console.log(len)
        console.log(checkLen)
        if (len == checkLen) {
            $(".allselect").prop("checked", true);
        } else {
            $(".allselect").prop("checked", false);
        }

        //购物车统计
        all();

    })

    //全部删除
    $(".alldel").on("click", function () {
        $("tbody .selected .checkedbtn:checked").each(function () {
            $(this).parent().parent().remove();
        })
        all();
    })




    //购物车统计
    function all() {
        //总价
        let all = 0;
        //总数量
        let allCount = 0;
        $("tbody .selected .checkedbtn:checked").each(function () {
            let price = $.trim($(this).parent().parent().find(".xiaoji").text());
            let num = $(this).parent().parent().find(".inputnum").val();
            console.log(num)
            let price2 = parseInt(price.slice(1));
            all += price2;
            allCount += num * 1;
            // console.log(price);
            console.log(all);
            console.log(allCount);
        })
        //插入总价
        $(".amount em").html(all + ".00");
        //插入数量
        $(".shuliang em").html(allCount);

    }


    //小计
    function xiaoji(_this, val) {
        let pri = parseInt($.trim(_this.parent().prev().text()).slice(1));
        let total = pri * val;
        _this.parent().next().next().html("￥" + total + ".00");
    }









})