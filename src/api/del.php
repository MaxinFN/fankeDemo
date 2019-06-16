<?php
header('content-type:text/html;charset=utf-8');
include 'conn.php';

$gid = isset($_GET["gid"]) ? $_GET["gid"] : "";
$uid = isset($_GET["uid"]) ? $_GET["uid"] : "";
$size = isset($_GET["size"]) ? $_GET["size"] : "";


$sql = "DELETE FROM shopcart WHERE gid=$gid AND uid=$uid AND size='$size'";
var_dump($gid, $uid, $size, $sql);
$res = $conn->query($sql);
