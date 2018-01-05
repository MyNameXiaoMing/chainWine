<?php
    include 'connectmysql.php';
    
    /*
        接口：获取商品详细信息
        需要从前端给传递信息给商品列表

        所需要的 PageNo分页 qty页面商品数量 id 
        id可以传入数据库查询商品列表
     */

    //获取前端传递的参数
    $id = isset($_GET['id']) ? $_GET['id'] : null;
    $pageNo = isset($_GET['pageNo']) ? $_GET['pageNo'] : 1;

    $qty = isset($_GET['qty']) ? $_GET['qty'] : 10;//10

   
    // 编写sql语句
    $sql = "select * from goods";

    if($id){
        $sql .= " where id='$id'";
    }

    // 执行sql语句
    // query()
    // 得到一个：查询结果集
    $result = $conn->query($sql);

    // 使用查询结果集
    // 返回数组
    $row = $result->fetch_all(MYSQLI_ASSOC);

    // 根据分页截取数据
    $res = array(
        'data'=>array_slice($row, ($pageNo-1)*$qty,$qty),
        'total'=>count($row)
    );


    // 把数组转换成json字符串
    $res = json_encode($res,JSON_UNESCAPED_UNICODE);

    echo "$res";
?>