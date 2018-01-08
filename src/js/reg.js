
$(function () {
    // bindCheckCode();

    // checkUserName();

    checkPassword();

    checkMobile();

    // checkEmail();

    // checkCheckCode();

    // checksysCheckCode();

    bindSubmit();

    $('#regName').focus();
});


function bindSubmit() {

    $('#registsubmit').click(function () {
        // var loading = showLoading();
            
       var result = checkValid();
        if(result){
            var username = $('#cellPhone').val(), password = $('#pwd').val();
            console.log(666);
            $.ajax({  
                type :"get",//到后台服务器端的方式  
                url : "../api/reguser.php",//路径  
                data : {"username":username,"password":password},//相当于地址栏中StudentServlet?userName="+userName  
                dataType : "json",//data类型  
                success : function(data){//回调函数  
                    //接收并处理服务端返回来的数据  
                    console.log(data);
                    if(data == "1"){ 
                    
                    }
                },
                error : function(data){
                    
                } 
            });  
        }    
    });
}
function checkValid() {
    //return checkUsernameIsValid() & checkPasswordIsValid() & checkPasswordIsValid() & checkRepeatPasswordIsValid() & checkCheckCodeIsValid() & checkAgreementIsValid() & checkMobileIsValid();
    var result = checkPasswordIsValid() & checkPasswordIsValid() & checkRepeatPasswordIsValid()  & checkMobileIsValid() & checkAgreementIsValid();
    //result = result & checkRepeatPasswordIsValid() & checkCheckCodeIsValid();
   
    return result;
}


function checkPassword() {

    $('#pwd').focus(function () {
        $('#pwd_info').show();
        $('#pwd_error').removeClass('error').addClass('focus').hide();
    }).blur(function () {
        $('#pwd_info').hide();
        checkPasswordIsValid();
    });

    $('#pwdRepeat').focus(function () {
        $('#pwdRepeat_info').show();
        $('#pwdRepeat_error').removeClass('error').addClass('focus').hide();

    }).blur(function () {
        $('#pwdRepeat_info').hide();
        checkRepeatPasswordIsValid();
    });

}




function checkPasswordIsValid() {
    var result = false;

    //var reg = /^[\@A-Za-z0-9\!\#\$\%\^\&\*\.\~]{6,22}$/;
    var pwdTextBox = $('#pwd');
    var password = pwdTextBox.val();
    var reg = /^[^\s]{6,20}$/;
    var result = reg.test(password);
    //   var result = password.length >= 6 && password.length <= 20;

    if (!result) {
        $('#pwd_error').addClass('error').removeClass('focus').show();
    }
    else {
        $('#pwd_error').removeClass('error').addClass('focus').hide();
        result = true;
    }
    return result;
}

function checkRepeatPasswordIsValid() {
    var result = false;

    //var reg = /^[\@A-Za-z0-9\!\#\$\%\^\&\*\.\~]{6,22}$/;
    var pwdRepeatTextBox = $('#pwdRepeat');
    var repeatPassword = pwdRepeatTextBox.val(), password = $('#pwd').val();
    //var result = reg.test(password);

    var result = repeatPassword == password;

    if (!result) {
        $('#pwdRepeat_error').addClass('error').removeClass('focus').show();
    }
    else {
        $('#pwdRepeat_error').removeClass('error').addClass('focus').hide();
        result = true;
    }
    return result;
}

function checkAgreementIsValid() {
    var result = false;
    var errorLabel = $('#checkAgreement_error');
    if ($("#readme").is(":checked")) {
        errorLabel.hide();
        result = true;
    } else {
        errorLabel.html('请仔细阅读并同意以上协议').show();
    }
    return result;
}


function checkMobile() {
    $('#cellPhone').change(function () {
        var cellPhone = $.trim($(this).val());
        if (!cellPhone)
            $('#cellPhone_error').show();
        else
            $('#cellPhone_error').hide();
    }).focus(function () {
        $('#cellPhone_info').show();
        $('#cellPhone_error').hide();
    }).blur(function () {
        var un = $(this).val();
        $("#regName").val(un);
        $('#cellPhone_info').hide();
        checkMobileIsValid();
    });
}

function checkMobileIsValid(isasync) {

    if ($('#cellPhone').length == 0) {
        return true;
    }
    var result = false;
    var cellPhone = $('#cellPhone').val();
    var errorLabel = $('#cellPhone_error');
    var reg = /^0?(13|15|18|14|17)[0-9]{9}$/;

    if (!cellPhone || cellPhone == '手机号码') {
        errorLabel.html('请输入手机号码').show();
    }
    else if (!reg.test(cellPhone)) {
        errorLabel.html('请输入正确的手机号码').show();
    }
    else {
        $.ajax({
            type: "get",
            url: "../api/check_name.php",
            data: { username: cellPhone },
            dataType: "json",
            async: isasync,
            success: function (data) {
                if (data == 0) {
                    errorLabel.html('手机号码 ' + cellPhone + ' 可以注册').show();
                    result = true;
                }
                else {
                    errorLabel.html('手机号码 ' + cellPhone + ' 已经被占用').show();
                }
            }
        });
    }
    return result;
}



function checkAgreementIsValid() {
    var result = false;
    var errorLabel = $('#checkAgreement_error');
    if ($("#readme").is(":checked")) {
        errorLabel.hide();
        result = true;
    } else {
        errorLabel.html('请仔细阅读并同意以上协议').show();
    }
    return result;
}
