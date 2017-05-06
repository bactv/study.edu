function myFunction() {
    var x = document.getElementById("dropdown-menu-profile");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    }
    else {
        x.className = x.className.replace(" w3-show", "");
    }
}

function toggle_nav() {
	var x = document.getElementById("mobile_nav");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}

// validate đăng ký tài khoản
$(document).on('click', '#btn-signup', function () {
    var username = $("#username").val();
    var password = $("#password").val();
    var full_name = $("#full_name").val();
    var user_type = $("input[name='user_type']:checked").val();
    var check = true;

    //validate
    if (username == '') {
        $("div.error_username").text('Tên đăng nhập không được để trống').css({'color' : 'red'});
        $("input[id='username']").css({'border-color' : 'red'});
        check = false;
    } else {
        $("div.error_username").text('');
        $("input[id='username']").css({'border-color' : '#337ab7'});
    }

    if (password == '') {
        $("div.error_password").text('Mật khẩu không được để trống').css({'color' : 'red'});
        $("input[id='password']").css({'border-color' : 'red'});
        check = false;
    } else {
        $("div.error_password").text('');
        $("input[id='password']").css({'border-color' : '#337ab7'});
    }

    if (full_name == '') {
        $("div.error_full_name").text('Họ và tên không được để trống').css({'color' : 'red'});
        $("input[id='full_name']").css({'border-color' : 'red'});
        check = false;
    } else {
        $("div.error_full_name").text('');
        $("input[id='full_name']").css({'border-color' : '#337ab7'});
    }

    // check user
    if (username != '' && password != '' && full_name != '') {
        $.ajax({
            method: 'GET',
            data: {'username' : username, 'user_type' : user_type},
            async: false,
            url: '/site/check-username.io',
            success: function (data) {
                var res = JSON.parse(data);
                if (res.status == 0) {
                    $("div.error_username").text('Tên đăng nhập đã tồn tại').css({'color' : 'red'});
                    $("input[id='username']").css({'border-color' : 'red'});
                    check = false;
                }
            }
        });
    }

    return check;
});
