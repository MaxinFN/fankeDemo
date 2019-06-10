<?php
header('content-type:text/html;charset=utf-8');
include 'conn.php';

$phone = isset($_GET["phone"]) ? $_GET["phone"] : '';
$sql = "SELECT * FROM userInfo WHERE phone= '$phone'";
$res = $conn->query($sql);

if ($res->num_rows == 1) {
    // 该号码存在，不能注册
    echo 0;
} else {
    // 该号码不存在，可以注册
    echo 1;
}
