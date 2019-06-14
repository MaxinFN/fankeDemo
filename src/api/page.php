<?php
header('content-type:text/html;charset=utf-8');
include 'conn.php';

$index = isset($_GET["index"]) ? $_GET["index"] : "";
$sql = "SELECT *FROM goodsInfo WHERE gid>=30 LIMIT $index,25";

$res = $conn->query($sql);

$content = $res->fetch_all(MYSQLI_ASSOC);
echo json_encode($content, JSON_UNESCAPED_UNICODE);
