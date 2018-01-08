
$(function () {
    bindSubmitBtn();

    bindCheckCode();

    initUsenameBox();

    taggletab();

    // Intervals();

});

function bindSubmitBtn() {
    $('#loginsubmit').click(function () {
        //__ozflash($(this).attr("id"));
        //__ozfaj2($(this).attr("id"), $(this)[0].tagName, $(this).parent().attr("id"), window.loction.href = '/Login/GetOAuthList?returnUrl=' + returnurl);

        submit();
    });

    document.onkeydown = function () {
        if (event.keyCode == 13) {
            submit();
        }
    }
}

function initUsenameBox() {
    var defaultUsername = $.cookie('Himall-DefaultUserName');
    if (defaultUsername) {
        $('#loginname').val(defaultUsername);
        $(".user-name").css("display", "none")
        $('#password').focus();
    };
    if ($('#loginname').val() == "") {
        $(".user-name").css("display", "block")
    }
}

function submit() {
    //var result = checkUsername() & checkPassword() & checkCheckCode();
    $('#loginpwd_error').hide();
    $('#loginpwd_error').hide();
    $('#checkCode_error').hide();
    var result = checkUsername();
    if (result) {
        result = checkPassword();
        if (result) {
            result = checkCheckCode();
        }
    }
    if (result) {
        $("#loginsubmit").attr("disabled", true);
        var username = $('#loginname').val();
        var password = $('#password').val();
        var checkCode = $('#checkCodeBox').val();
        var keep = $('#autoLogin').attr('checked');
        keep = keep ? true : false;

        var loading = showLoading();
        $.post('../api/login.php', {
            username: username, password: password
        }, function (data) {
            loading.close();
            if (data.success) {//登录成功
                $.cookie('Himall-DefaultUserName', username, {
                    path: "/", expires: 365
                });
                $.cookie('Himall-DefaultUserID', data.UserId, {
                    path: "/", expires: 365
                });
                var returnUrl = decodeURIComponent(QueryString('returnUrl')).replace('&amp;', '&');
                if (returnUrl) {
                    if (returnUrl.toLowerCase().indexOf("selleradmin") > -1) {
                        $.ajax({
                            type: "POST", async: false, url: "../api/login.php"
                        });
                    }
                    location.href = returnUrl;
                }
                else if (data.IsChildSeller == true) {
                    $.ajax({
                        type: "POST", async: false, url: "../api/login.php"
                    });
                    location.href = "../html/list.html";
                }
                else {
                    location.href = '/'; //跳转至买家中心
                }
            }
            else {
                var isFirstShowCheckcode = false;
                refreshCheckCode();
                if (data.errorTimes > data.minTimesWithoutCheckCode) {//需要验证码
                    if ($('#checkCodeArea').css('display') == 'none') {
                        isFirstShowCheckcode = true;
                        $('#checkCode_error').html(data.msg).show();
                    }

                    $('#checkCodeArea').show();
                    $('#autoentry').css('margin-top', 0);
                }
                else {
                    $('#checkCodeArea').hide();
                    $('#autoentry').removeAttr('style');
                }
                if (!isFirstShowCheckcode) {
                    $('#loginpwd_error').html(data.msg).show();
                    $('.tips').hide();
                    $('#password').focus();
                }
                else
                    $('#checkCodeBox').focus();

            }
            setTimeout(function () { $("#loginsubmit").attr("disabled", false); }, 500);
        });
    }
    //if ($("#loginname_error").show() && $("#loginpwd_error").show()) {
    //    $(".item-ifo .ico.i-pass").css("top", "35px")
    //};
}

function checkCheckCode() {
    var result = false;
    if ($('#checkCodeArea').css('display') == 'none')
        result = true;
    else {
        var checkCode = $('#checkCodeBox').val();
        var errorLabel = $('#checkCode_error');
        if (checkCode && checkCode.length == 4) {
            $.ajax({
                type: "post",
                // url: "/login/checkCode",
                data: {
                    checkCode: checkCode
                },
                dataType: "json",
                async: false,
                success: function (data) {
                    if (data.success) {
                        result = true;
                        errorLabel.hide();
                    }
                    else {
                        $('#checkCodeBox').focus();
                        $('.tips').hide();
                        errorLabel.html('验证码错误').show();
                    }
                }
            });
        }
        else {
            $('#checkCodeBox').focus();
            if (!checkCode) {
                $('.tips').hide();
                errorLabel.html('请填写验证码').show();
            }
            else
                errorLabel.html('验证码错误').show();
        }
    }
    return result;
}

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

function refreshCheckCode() {
    var path = $('#checkCodeImg').attr('src').split('?')[0];
    path += '?time=' + new Date().getTime();
    $('#checkCodeImg').attr('src', path);
    $('#checkCodeBox').val('');
}

function bindCheckCode() {
    $('#checkCodeImg,#checkCodeChange').click(function () {
        refreshCheckCode();
    });
}


function bindFocus() {
    $('#password').keydown(function () {
        $('#loginpwd_error').hide();
    });

    $('#loginname').keydown(function () {
        $('#loginpwd_error').hide();
    });

    $('#checkCodeBox').keydown(function () {
        $('#checkCode_error').hide();
    });

}

function taggletab() {
    $(".tab_tit li").click(function () {
        var _index = $(this).index();
        $(this).addClass('active').siblings().removeClass('active');
        $(".tab_content section").addClass("hidden").eq(_index).removeClass("hidden");
    });

}

// function Intervals() {
//     var Interval = setInterval(function () {
//         $.ajax({
//             type: 'POST',
//             url: '/login/MonitorLogin?t=' + new Date(),
//             async: true,
//             dataType: 'JSON',
//             success: function (data) {
//                 if (data.success == true) {
//                     if (data.code == 1) {
//                         //console.log("扫描成功");
//                         $(".tip-box").show();
//                         $(".tab_content section").addClass("hidden");
//                     } else if (data.code == 2) {
//                         window.location = "/";
//                     }
//                 }
//             }

//         });
//     }, 1000);

    // setTimeout(function () {
    //     clearInterval(Interval);
    // }, 1000 * 60 * 2);

// }

