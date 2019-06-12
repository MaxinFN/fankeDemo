<?php
header('content-type:text/html;charset=utf-8');
include 'conn.php';

$phone = isset($_POST["phone"]) ? $_POST["phone"] : '15627214523';
$psw = isset($_POST["psw"]) ? $_POST["psw"] : '123123';

$sql1 = "SELECT *FROM userInfo WHERE phone= $phone";
$sql2 = "SELECT *FROM userInfo WHERE phone= $phone AND psw= $psw";
$sql3 = "SELECT uid FROM userInfo WHERE phone= $phone";

$res1 = $conn->query($sql1);
$res2 = $conn->query($sql2);
$res3 = $conn->query($sql3);


// 创建空数组
$arr = array();

if ($res1->num_rows == 1) {
    // 用户存在
    $arr['user'] = true;
} else {
    // 用户不存在
    $arr['user'] = false;
};

if ($res2->num_rows == 1) {
    // 登录成功
    $arr['success'] = true;
} else {
    // 登录不成功(密码错误)
    $arr['succe
    ss'] = false;
};

if ($res3->num_rows > 0) {
    while ($row = $res3->fetch_assoc()) {
        $arr['uid'] =  $row["uid"];
    }
}


echo json_encode($arr, JSON_UNESCAPED_UNICODE);
