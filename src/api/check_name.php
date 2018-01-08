<?php 
    include 'connectmysql.php';
    //GET方式获取数据（取决于异步提交时提交方式） 
    $username = isset($_GET['username']) ? $_GET['username'] : '';

    $sql = "select username from user where username='$username'";
    $result = $conn->query($sql);
    //此处可进行数据库匹配，本次省略直接判断
    if($result->num_rows>0){
        // 释放查询内存(销毁)
        $result->free();

        // 用户名已经被占用
         echo 1; 
    }else{
        // 释放查询内存(销毁)
         echo "0"; 
        $result->free();
       
    }



    // if($username=="username") {
    //     echo "<font color=red>用户名已被注册！</font>"; 
    // }
    // else{ 
    //     echo "<font color=red>用户名可以使用</font>"; 
    // }

    
    //POST方式获取数据（取决于异步提交时提交方式） 
    // if($_POST['username']) { 
    //     $username=$_POST['username']; 
    // }
    // //此处可进行数据库匹配，本次省略直接判断 

    // if($username=="username"){ 
    //     echo "<font color=red>用户名已被注册！</font>"; 
    // }else {
    //     echo "<font color=red>用户名可以使用</font>"; 
    // }
    //关闭连接
    $conn->close();
?>