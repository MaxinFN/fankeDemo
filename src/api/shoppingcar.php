<?php
header('content-type:text/html;charset=utf-8');
include 'conn.php';


$gid = isset($_POST["gid"]) ? $_POST["gid"] : "";
$image = isset($_POST["image"]) ? $_POST["image"] : "";
$descript = isset($_POST["descript"]) ? $_POST["descript"] : "";
$size = isset($_POST["size"]) ? $_POST["size"] : "";
$price = isset($_POST["price"]) ? $_POST["price"] : "";
$num = isset($_POST["num"]) ? $_POST["num"] : "";
$uid = isset($_POST["uid"]) ? $_POST["uid"] : "";

// $sql1 = "SELECT *FROM shopcart WHERE gid= $gid";

$sql1 = "SELECT *FROM shopcart WHERE size='$size' AND uid=$uid AND gid=$gid";
$sql2 = "INSERT INTO shopcart(gid,image,descript,size,nowprice,num,uid) VALUES( '$gid', '$image', '$descript', '$size', $price, '$num', '$uid')";
$sql3 = "UPDATE shopcart SET num=num+$num WHERE gid=$gid AND size='$size' AND uid=$uid";

var_dump($sql2);
// echo $sql1;
$res1 = $conn->query($sql1);

var_dump($res1->num_rows);
// 查询是否存在商品size和uid和gid，有就更新数据，没有则插入数据
if ($res1->num_rows) {
    $res3 = $conn->query($sql3);
    // var_dump($res3);
} else {
    $res2 = $conn->query($sql2);
    // var_dump($res2);
}
