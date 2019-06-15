<?php
header('content-type:text/html;charset=utf-8');
include 'conn.php';


$uid = isset($_GET["uid"]) ? $_GET["uid"] : "";

$sql = "SELECT *FROM shopcart WHERE uid= $uid";
$res = $conn->query($sql);
$content = $res->fetch_all(MYSQLI_ASSOC);
// $array = array(
//     "totals" => $res->num_rows,
//     "data" => $content,
// );

echo json_encode($content, JSON_UNESCAPED_UNICODE);
