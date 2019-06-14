<?php
header('content-type:text/html;charset=utf-8');
include 'conn.php';


$sql = "SELECT *FROM goodsInfo WHERE gid>=30";

$res = $conn->query($sql);

// $array = array(
//     "totals" => $res->num_rows,

// );

echo $res->num_rows;

// $content = $res->fetch_all(MYSQLI_ASSOC);

// echo json_encode($content, JSON_UNESCAPED_UNICODE);
// 1   0-25
// 2   25-25
// 3   50-25
// 4   75-25

// num1 num2=(num-1)*25
