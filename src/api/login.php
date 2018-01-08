<?php
    include 'connectmysql.php';

    //获取前端传递的数据
    $username = isset($_GET['username']) ? $_GET['username'] : '';
    $password = isset($_GET['password']) ? $_GET['password'] : '';

   
    $sql = "select * from user where username='$username' and password='$password'";


    // 获取查询结果
    $result = $conn->query($sql);
    $row = $result->fetch_row();

    // print_r($row[0]);


    if($row[0]){
     echo 'ok';
    }else{
     echo 'fail';
    }
    
    //释放查询内存（销毁）
    $result->free();

    //关闭连接
    $conn->close();
?>