<?php
header('content-type:text/html;charset=utf-8');
include 'conn.php';

$uid = isset($_POST["uid"]) ? $_POST["uid"] : '';

$sql = "SELECT phone FROM userInfo WHERE uid=$uid";

$res = $conn->query($sql);
// if($res){
$content = $res->fetch_all(MYSQLI_ASSOC);
echo json_encode($content, JSON_UNESCAPED_UNICODE);
// }
