<?php
header('content-type:text/html;charset=utf-8');
include 'conn.php';

$phone = isset($_POST["phone"]) ? $_POST["phone"] : '';
$psw = isset($_POST["psw"]) ? $_POST["psw"] : '';

if ($psw) {
    $sql = "INSERT INTO userInfo(phone,psw) VALUES($phone, $psw)";
} else {
    $sql = "INSERT INTO userInfo(phone) VALUES($phone)";
};

$res = $conn->query($sql);


if ($res) {
    echo "注册成功";
} else {
    echo "注册不成功";
}
