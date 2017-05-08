/**
 * Created by bactv on 08/05/2017.
 */
var url_suffix = 'io';

// vao lam bai thi trac nghiem
function do_contest(selector) {
    var url = $(selector).data('url');
    var user_id = $(selector).data('user_id');
    var quiz_id = $(selector).data('quiz_id');
    $.ajax({
        method: 'GET',
        data: {'user_id' : user_id, 'quiz_id' : quiz_id},
        url: '/quiz/check-quiz-permission.' + url_suffix,
        success: function (data) {
            var res = JSON.parse(data);
            if (res.status == 0) {
                BootstrapDialog.show({
                    title: 'Error!',
                    message: res.message
                });
            } else {
                window.location = url;
            }
        }
    });
}
