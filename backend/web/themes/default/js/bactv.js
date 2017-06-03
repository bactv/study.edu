/**
 * Created by Bac Truong Van on 04/03/2017.
 */

// menu xổ xuống
$(document).on('click', 'span#chevron_icon', function () {
    var li_parent = $(this).parent().parent().attr('id');
    $('li#' + li_parent + ' ul.child_menu:first').slideToggle(function () {
        var check = $(this).is(":hidden");
        if(check == true) {
            $('li#' + li_parent + ' span#chevron_icon i:first').attr('class', 'fa fa-chevron-right');
        } else {
            $('li#' + li_parent + ' span#chevron_icon i:first').attr('class', 'fa fa-chevron-down');
        }
    });
    $('li#' + li_parent + ' ul.child_menu').css({'background' : 'rgba(255,255,255,.05)'})
});

// Menu active hi click
$(document).ready(function () {
    var url = window.location.pathname;
    console.log(url);
    // set menu active
    $(".menu_list ul li a[href='" + url + "']").parent().addClass('active');
    $(".menu_list ul li a[href='" + url + "']").parent().parent().addClass('active').css({'display' : 'block'});

    var li_id = $(".menu_list ul li a[href='" + url + "']").parent().parent().parent().attr('id');
    $(".menu_list ul li#" + li_id + " span#chevron_icon i:first").attr('class', 'fa fa-chevron-down');

});

/**
 * update danh sách controller và action
 */
function updatePermission(url) {
    var _csrf = $("meta[name='csrf-param']").attr('content');
    $.ajax({
        method: 'POST',
        data: {'_csrf' : _csrf},
        url: url,
        success: function () {
            location.reload();
        },
        error: function () {
            alert("Opp! Error.")
        }
    });
}
// check all controllers
function checkAllControllers(element) {
    if ($(element).is(":checked")) {
        $("input.check-all").each(function () {
            $(this).prop("checked", true);
            checkAllControllerPermission($(this));
        });
    } else {
        $("input.check-all").each(function () {
            $(this).prop("checked", false);
            checkAllControllerPermission($(this));
        });
    }
}

// checkall action của controller
function checkAllControllerPermission(element) {
    var controller_id = $(element).attr('id');
    if ($(element).is(":checked")) {
        $("input#all-action-" + controller_id).prop("checked", true);
    } else {
        $("input#all-action-" + controller_id).prop("checked", false);
    }
}


// LIST DANH SACH CAC MENU: BACKEND OR FRONTEND
function list_menu(module_id) {
    window.location.href = '/menu/index.html?module=' + module_id;
}


// CHI TIẾT HỢP ĐỒNG
function view_agreement(agreement_id) {
    if (agreement_id == '' || agreement_id == 'undefined') {
        return '';
    }
    $.ajax({
        method: 'GET',
        data: {'agreement_id' : agreement_id},
        url: '/agreement/view-agreement.html',
        success: function (data) {
            $("div#view-agreement").html(data);
        },
        error: function () {
            alert("Có lỗi xảy ra.");
        }
    });
}

// DANH SÁCH PHỤ LỤC HỢP ĐỒNG
function agreement_addendum(agreement_id) {
    if (agreement_id == '' || agreement_id == 'undefined') {
        return '';
    }
    $.ajax({
        method: 'GET',
        data: {'agreement_id' : agreement_id},
        url: '/agreement/addendum.html',
        success: function (data) {
            $("div#agreement-addendum").html(data);
        },
        error: function () {
            alert("Có lỗi xảy ra.");
        }
    });
}

function agreement_course(agreement_id) {
    if (agreement_id == '' || agreement_id == 'undefined') {
        return '';
    }
    $.ajax({
        method: 'GET',
        data: {'agreement_id' : agreement_id},
        url: '/agreement/agreement-course.html',
        success: function (data) {
            $("div#agreement-course").html(data);
        },
        error: function () {
            alert("Có lỗi xảy ra.");
        }
    });
}




























