function checkUsername() {
    var result = false;
    var username = $('#loginname').val();
    var loginError = $('#loginname_error');
    if (!username) {
        $('.tips').hide();
        loginError.html('请输入用户名').show();
        $(".fore2 .text-area").css("margin-top", "0px")
    }
    else {
        result = true;
        loginError.hide();
        $(".fore2 .text-area").css("margin-top", "0")
    }
    return result;
}

function checkPassword() {
    var result = false;
    var password = $('#password').val();
    var passwordError = $('#loginpwd_error');
    if (!password) {
        $('.tips').hide();
        passwordError.html('请输入密码').show();
    }
    else {
        result = true;
        passwordError.hide();
    }
    return result;
};

$("#loginsubmit").on('click',function(){
    console.log(666);
    var loginError = $('#loginname_error');
    if( $('#password').val() == '' && $('#loginname').val() == ''){
        $('.tips').hide();
         loginError.html('请输入用户名和密码').show();
    }
    else{
        $('#loginpwd_error').hide();
        $('#loginpwd_error').hide();
        $('#checkCode_error').hide();
        var result = checkUsername();
        if (result) {
            result = checkPassword();
        }
        if (result) {
            $("#loginsubmit").attr("disabled", true);
            var username = $('#loginname').val();
            var password = $('#password').val();
            var keep = $('#autoLogin').attr('checked');
            keep = keep ? true : false;
     
            $.ajax({  
                type :"get",//到后台服务器端的方式  
                url : "../api/login.php",//路径  
                data : {"username":$('#loginname').val(),"password":$('#password').val()},//相当于地址栏中StudentServlet?userName="+userName  
                // dataType : "json",//data类型  
                success : function(data){//回调函数  
                    //接收并处理服务端返回来的数据  
                    console.log(data);
                    if(data === "ok"){ 
                        location.href = "../html/list.html";
                    }else{
                           loginError.html('用户名密码出错').show();
                    }
                }
                
                 
            
            })    
        }
        
    }

    
    
})

