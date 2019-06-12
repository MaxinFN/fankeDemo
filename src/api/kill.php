<?php
header('content-type:text/html;charset=utf-8');
include 'conn.php';

$kind = isset($_POST["kind"]) ? $_POST["kind"] : '';

if($kind == "kill"){
    $sql = "SELECT *FROM goodsInfo WHERE oldprice IS NOT NULL";
}else if( $kind == "new"){
    $sql = "SELECT *FROM goodsInfo WHERE oldprice IS NOT NULL";
}

$res = $conn->query($sql);
$content = $res->fetch_all(MYSQLI_ASSOC);

echo json_encode($content, JSON_UNESCAPED_UNICODE);
