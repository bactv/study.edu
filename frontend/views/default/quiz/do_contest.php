<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 10:17 SA
 */
use common\components\AssetApp;
use yii\helpers\Url;
use frontend\models\QuestionAnswer;
use common\components\Utility;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

?>

<div class="main_content">
    <div class="w3-row do_contest">
        <div class="box-top">
            <p id="quiz_name"><?php echo $quiz['name'] ?></p>
            <p id="time">Thời gian: <?php echo $quiz['time_length'] ?> phút</p>
        </div>

        <div class="w3-col l8 list_questions">
            <?php foreach ($questions as $k => $question) {
                $arr_ans = QuestionAnswer::findAll(['question_id' => $question['id']]);
                ?>
                <div class="box_question">
                    <p id="question_number">Câu <?php echo ($k + 1) ?></p>
                    <p id="question_name"><?php echo $question['content'] ?></p>
                    <ul class="box_answer">
                        <?php foreach ($arr_ans as $k2 => $ans) {
                            $arr_label = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'];
                            ?>
                            <li>
                                <input type="radio" name="<?php echo $question['id'] ?>" value="<?php echo $ans['ans_id'] ?>"><span id="ans_name"><span id="stt"><?php echo $arr_label[$k2] . '. ' ?></span> <?php echo $ans['content'] ?></span>
                            </li>
                        <?php } ?>
                    </ul>
                </div>
            <?php } ?>
        </div>

        <div class="w3-col l4 box_right">
            <div class="box_item">
                <div class="clock_img">
                    <img src="<?php echo AssetApp::getImageBaseUrl() . '/icons/clock.png' ?>">
                </div>
                <div class="time" id="time_run"><?php echo $quiz['time_length'] . ':00' ?></div>
                <button class="btn btn-success" onclick="submit_contest()"><?php echo Icon::show('gavel') ?> Nộp bài</button>
                <button class="btn btn-warning" onclick="save_contest()"><?php echo Icon::show('save') ?> Lưu bài</button>
            </div>
        </div>
    </div>
</div>

<?php $time_start = time(); ?>

<script>
    $(document).ready(function () {
        $(".box_right").stick_in_parent();
    });

    $(window).on('load', function () {
        var minus = '<?php echo $quiz['time_length'] * 60 ?>';
        var display = document.querySelector('#time_run');
        startTimer(minus, display);
    });

    function startTimer(duration, display) {
        var timer = duration, minutes, seconds;
        setInterval(function () {
            minutes = parseInt(timer / 60, 10)
            seconds = parseInt(timer % 60, 10);

            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;

            display.textContent = minutes + ":" + seconds;

            if (--timer < 0) {
                submit_contest();
                return true;
            }
        }, 1000);
    }

    function submit_contest(ck = true) {
        var time_start = '<?php echo $time_start; ?>';

        var arr_radio = [];
        $("input[type='radio']").each(function () {
            arr_radio.push($(this).attr('name'));
        });
        arr_radio = jQuery.unique(arr_radio);
        var arr_selected = [];
        for (var i = 0; i < arr_radio.length; i++) {
            arr_selected[i] = {'question_id' : arr_radio[i], 'ans_id' : ''};
        }

        var count_ans = 0;
        for (var j = 0; j < arr_radio.length; j++) {
            $("input:radio[name='" + arr_radio[j] + "']").each(function () {
                if ($(this).is(':checked')) {
                    arr_selected[j].ans_id = $(this).attr('value');
                    count_ans++;
                }
            });
        }

        var _csrf = $("meta[name='csrf-param']").attr('content');
        var student_id = '<?php echo (isset(Yii::$app->user->identity->user_id) && (Yii::$app->user->identity->type == 1)) ? Yii::$app->user->identity->user_id : 0 ?>';
        var data = {
            '_csrf' : _csrf,
            'time_start' : time_start,
            'data' : arr_selected,
            'quiz_id' : '<?php echo $quiz['id'] ?>',
            'student_id' : student_id,
            'user_ip' : '<?php echo Yii::$app->request->getUserIP() ?>',
            'action' : 'submit'
        };

        if (ck) {
            var total_ques = '<?php echo intval(count($questions)) ?>';
            if (count_ans < total_ques) {
                var message = "Bài thi chưa hoàn thiện, bạn có muốn nộp bài ngay hay không?";
            } else {
                message = "Bạn có muốn nộp bài hay không?";
            }

            BootstrapDialog.show({
                title: 'Nộp bài',
                message: message,
                buttons: [{
                    label: 'Nộp bài',
                    cssClass: 'btn-success',
                    action: function(dialog) {
                        ajax_submit(data);
                        dialog.close();
                    }
                }, {
                    label: 'Hủy',
                    cssClass: 'btn-warning',
                    action: function(dialog) {
                        dialog.close();
                    }
                }]
            });
        } else {
            ajax_submit(data);
        }
    }

    function save_contest() {
        var time_start = '<?php echo $time_start; ?>';

        var arr_radio = [];
        $("input[type='radio']").each(function () {
            arr_radio.push($(this).attr('name'));
        });
        arr_radio = jQuery.unique(arr_radio);
        var arr_selected = [];
        for (var i = 0; i < arr_radio.length; i++) {
            arr_selected[i] = {'question_id' : arr_radio[i], 'ans_id' : ''};
        }

        var count_ans = 0;
        for (var j = 0; j < arr_radio.length; j++) {
            $("input:radio[name='" + arr_radio[j] + "']").each(function () {
                if ($(this).is(':checked')) {
                    arr_selected[j].ans_id = $(this).attr('value');
                    count_ans++;
                }
            });
        }

        var _csrf = $("meta[name='csrf-param']").attr('content');
        var student_id = '<?php echo (isset(Yii::$app->user->identity->user_id) && (Yii::$app->user->identity->type == 1)) ? Yii::$app->user->identity->user_id : 0 ?>';
        var data = {
            '_csrf' : _csrf,
            'time_start' : time_start,
            'data' : arr_selected,
            'quiz_id' : '<?php echo $quiz['id'] ?>',
            'student_id' : student_id,
            'user_ip' : '<?php echo Yii::$app->request->getUserIP() ?>',
            'action' : 'submit'
        };
        ajax_submit(data);
    }

    function ajax_submit(data) {
        $.ajax({
            method: 'POST',
            data: data,
            url: '<?php echo Url::toRoute(['/quiz/check-contest']) ?>',
            success: function (data) {
                var res = JSON.parse(data);
                if (res.action == 'save') {
                    setTimeout(function () {
                        BootstrapDialog.show({
                            title: 'Info!',
                            message: 'Bài làm của bạn đã lưu thành công!'
                        })
                    }, 2000);
                }
                window.location = res.url_redirect;
            }
        });
    }

</script>

<style>
    body {
        background-color: #cad9da !important;

    }
    .do_contest {
        font-family: 'Open Sans', sans-serif;
    }
    .do_contest .list_questions {
        background: #FFF;
        padding: 20px;
        border: 1px solid #ccc;
    }
    .do_contest .list_questions .box_question {
        margin-bottom: 20px;
        padding-bottom: 3px;
        border-bottom: 1px dotted #ccc;
    }
    .do_contest .list_questions .box_question #question_number {
        font-weight: bold;
    }
    .do_contest .list_questions .box_question #question_name {
    }
    .do_contest .list_questions .box_question ul.box_answer {
        list-style-type: none;
        padding: 0;
    }
    .do_contest .list_questions .box_question ul.box_answer li {
        padding: 5px;
    }
    .do_contest .list_questions .box_question ul.box_answer li input[type='radio'] {
        margin-right: 10px;
    }
    .do_contest .list_questions .box_question span#stt{
        font-weight: bold;
    }
    .do_contest .list_questions .box_question{
    }

    .do_contest .box_right {
        padding-left: 20px;
    }
    .do_contest .box_right .box_item {
        text-align: center;
        border: 1px solid #ccc;
        padding: 20px;
        background: #FFF;
    }
    .do_contest .box_right .box_item .clock_img {
        width: 70px;
        margin: 0 auto;
    }
    .do_contest .box_right .box_item .clock_img img {
        width: 100%;
    }
    .do_contest .box_right .box_item .time {
        font-size: 2.5em;
        color: #23755f;
        margin-bottom: 30px;
    }

    .do_contest .box-top {
        width: 50%;
        margin: 0 auto 30px auto;
        border: 1px solid #ccc;
        padding: 10px;
        text-align: center;
        background-color: #FFF;
    }
    .do_contest .box-top #quiz_name {
        font-size: 1.5em;
        color: teal;
    }
    .do_contest .box-top #time {}

</style>
