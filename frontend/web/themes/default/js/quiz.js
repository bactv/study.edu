/**
 * Created by bactv on 08/05/2017.
 */
var url_suffix = 'io';

// vao lam bai thi trac nghiem
function do_contest(selector) {
    var url = $(selector).data('url');
    var user_id = $(selector).data('user_id');
    var quiz_id = $(selector).data('quiz_id');
    var user_ip = $(selector).data('user_ip');
    $.ajax({
        method: 'GET',
        data: {'user_id' : user_id, 'quiz_id' : quiz_id, 'user_ip' : user_ip},
        url: '/quiz/check-quiz-permission.' + url_suffix,
        success: function (data) {
            var res = JSON.parse(data);
            if (res.status == 0) {
                BootstrapDialog.show({
                    title: 'Error!',
                    message: res.message
                });
            } else if (res.status == 2) {
                var url2 = res.url;
                var attempt_id = res.attempt_id;
                BootstrapDialog.show({
                    title: 'Error!',
                    message: res.message,
                    buttons: [{
                        label: 'Tiếp tục',
                        action: function() {
                            window.location = url2;
                        }
                    }, {
                        label: 'Làm lại',
                        action: function() {
                            // set status = 0 nếu làm lại.
                            $.ajax({
                                method: 'GET',
                                data: {'attempt_id' : attempt_id, 'user_id' :user_id, 'user_ip': user_ip},
                                url: '/quiz/clear-attempt.io'
                            });
                            window.location = url;
                        }
                    }]
                });
            } else {
                window.location = url;
            }
        }
    });
}
