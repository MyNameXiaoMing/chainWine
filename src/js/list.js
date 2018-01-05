/* 
* @Author: Marte
* @Date:   2018-01-05 09:31:54
* @Last Modified by:   Marte
* @Last Modified time: 2018-01-05 10:32:21
*/

document.addEventListener('DOMContentLoaded',function(){

    var productList = document.querySelector('.product_list');
    var page = document.querySelector('.page_l');

    var pageNo = 1;
    var qty = 24;

    var xhr = new XMLHttpRequest();

    xhr.onreadystatechange = function(){
        if(xhr.readyState === 4){
            var res = JSON.parse(xhr.responseText);
            console.log(res);
            productList.innerHTML = res.data.map(item=>{
                var imgurl = item.imgurl.slice(2,-2);
                imgurl = imgurl.split(",");
                console.log(imgurl);
                return `<dl id="${item.id}">
                <dt>
                    <a>

                        <img src= "${imgurl}" >
                    </a>
                </dt>
                <dd id="${item.id}">
                    <a>
                        <ul>
                            <li class="r1">
                                <strong>￥${item.goodsprice}</strong>
                                <span style="float: right;">已售出<i>82</i>件</span>   
                            </li>
                            <li class="r3">${item.goodsname}</li>
                            <li class="r4">中酒自营</li>
    
                        </ul>
                    </a>
                </dd>
                </dl>
                `
            }).join('');

           

            var page_len = Math.ceil(res.total/qty);
            page.innerHTML = '';
            for (var i = 0; i < page_len; i++) {
              
                var span = document.createElement('span');
                span.innerText = i + 1;
                if(i+1 === pageNo){
                    span.className = 'active';
                }
                page.appendChild(span);
            }

            
            
        }

    }

    //请求数据库内容
    xhr.open('get',`http://localhost:33227/src/api/getgoods.php?pageNo=${pageNo}&qty=${qty}`,true);
    xhr.setRequestHeader('content-type','application/x-www-form-urlencoded');
    xhr.send();

        // // 创建新的异步请求对象
    // var xhr_page = new XMLHttpRequest();

    
    // //返回处理数据
    // xhr_page.onreadystatechange = function(){
    //     if(xhr_page.readyState === 4){
    //         var res = JSON.parse(xhr_page.responseText);
    //         console.log(res);
    //         //生成分页
    //         var page_len = Math.ceil(res.total/qty);
    //         page.innerHTML = '';
    //         for (var i = 0; i < page_len; i++) {
              
    //             var span = document.createElement('span');
    //             span.innerText = i + 1;
    //             if(i+1 === pageNo){
    //                 span.className = 'active';
    //             }
    //             page.appendChild(span);
    //         }
    //     }
    // }
    // xhr_page.open('get',`http://localhost:1112/api/getgoods.php?pageNo=${pageNo}&qty=${qty}`,true);
    // xhr_page.send();
    // 分页切换
    console.log(page);
    page.onclick = function(e){console.log(666);
        if(e.target.tagName.toLowerCase() === 'span'){
            pageNo = e.target.innerText*1;
           
            //重新建立与服务器的连接，发起AJAX请求
            xhr.open('get',`http://localhost:33227/src/api/getgoods.php?pageNo=${pageNo}&qty=${qty}`,true);
            xhr.send();
        }
    }
    
      
});