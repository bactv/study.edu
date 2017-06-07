/**
 * Created by bactv on 07/05/2017.
 */
$(document).ready(function() {
    // tab
    $(".btn-pref .btn").click(function () {
        $(".btn-pref .btn").removeClass("btn-primary").addClass("btn-default");
        // $(".tab").addClass("active"); // instead of this do the below
        $(this).removeClass("btn-default").addClass("btn-primary");
    });

    // click telco image
    $("a.telco").on('click', function () {
        $("a.telco").removeClass('telco_active');
        $("a.telco").parent().removeClass('telco_active');
        $(".table > thead > tr > th").removeClass('th_error')
        $(this).addClass('telco_active');
        $(this).parent().addClass('telco_active');
    });
});

function charging() {
    var telco_type = $("a.telco_active").attr('id');
    var serial_number = $("#serial_number").val();
    var code_number = $("#code_number").val();
    var _csrf = $("meta[name='csrf-token']").attr('content');

    var check = true;

    if (telco_type == '' || telco_type == undefined) {
        $(".table > thead > tr > th").addClass('th_error');
        check = false;
    } else {
        $(".table > thead > tr > th").removeClass('th_error');
    }
    if (serial_number == '') {
        $("label#lb_serial_number").css({'color' : 'red'});
        $('#serial_number').addClass('th_error');
        check = false;
    } else {
        $("label#lb_serial_number").css({'color' : 'green'});
        $('#serial_number').removeClass('th_error')
    }

    if (code_number == '') {
        $("label#lb_code_number").css({'color' : 'red'});
        $('#code_number').addClass('th_error');
        check = false;
    } else {
        $("label#lb_code_number").css({'color' : 'green'});
        $('#code_number').removeClass('th_error')
    }

    if (!check) {
        return false;
    } else {
        $.ajax({
            method: 'POST',
            url: '/charging/process-charge.io',
            data: {'telco_type' : telco_type, 'serial_number' : serial_number, 'code_number' : code_number, _csrf : _csrf},
            success: function (data) {
                var res = JSON.parse(data);
                var title = '';
                if (res.status != 200) {
                    title = 'Thông báo';
                } else {
                    title = 'Thông báo';
                }
                BootstrapDialog.show({
                    title: title,
                    message: res.message
                });
                if (res.status == 200) {
                    setTimeout(function() {
                        location.reload();
                    }, 3000);
                }
                // nạp sai quá 5 lần
                if (res.status == 222) {
                    setTimeout(function() {
                        window.location = '/dang-xuat.io';
                    }, 3000);
                }
            }
        });
    }
}