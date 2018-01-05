<?php
    include 'connectmysql.php';

    //获取前端传递的数据
    $username = isset($_GET['username']) ? $_GET['username'] : null;
    $password = isset($_GET['password']) ? $_GET['password'] : null;
    $email = isset($_GET['email']) ? $_GET['email'] : '';

    //编写sql语句
    //查看用户名是否已经存在
    $sql = "select username from user where username='$username'";
    $result = $conn->query($sql);

    if($result->num_rows>0){
        //释放查询内存（销毁）
        $result->free();

        //用户名已经被占用
        echo "fail";
    }else{
        //释放查询内存（销毁）
        $result->free();

        //密码md5加密
        $password = md5($password);
        // echo "$password";

        $sql = "insert into user(username,password,email) value('$username','$password','$email')";

        $result = $conn->query($sql);

        if($result){
           

            //成功
             echo "1"; 
        } else {
        
            echo "0" .$conn->error;
        }
    }

    //关闭连接
    $conn->close();

?>