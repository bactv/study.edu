<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 10:17 SA
 */
use common\components\AssetApp;
use kartik\icons\Icon;
use frontend\models\QuestionAnswer;
use common\components\Utility;
use yii\helpers\Url;

Icon::map($this, Icon::FA);
?>

<?php
$data = (array)json_decode($attempt['data']);
?>

<div class="main_content">
    <div class="w3-row review_contest">
        <div class="box-top">
            <p id="quiz_name">Review: <?php echo $quiz['name'] ?></p>
            <p id="time">Thời gian: <?php echo $quiz['time_length'] ?> phút</p>
            <p id="rating-point">
                <select id="rating_info">
                    <option value="2">1</option>
                    <option value="4">2</option>
                    <option value="6">3</option>
                    <option value="8">4</option>
                    <option value="10">5</option>
                </select>
                <i style="font-size: 11px"><b>(<?php echo $quiz_rating['point'] . ' điểm bình chọn/ ' . $quiz_rating['total_rating'] . ' lượt' ?>)</b></i>
            </p>
        </div>

        <div class="w3-col l8 list_questions">
            <?php foreach ($questions as $k => $question) {
                $arr_ans = QuestionAnswer::findAll(['question_id' => $question['id']]);
                $ans_true_label = 'A';
                ?>
                <div class="box_question" id="box_question_<?php echo $question['id'] ?>">
                    <p id="question_number"><span class="w3-left">Câu <?php echo ($k + 1) . '. ' ?> </span><span class="w3-right"><b>Mã câu hỏi: <?php echo $question['id'] ?></b></span></p>
                    <div style="clear: both"></div>
                    <p id="question_name"><?php echo $quiz['name'] ?></p>
                    <ul class="box_answer">
                        <?php foreach ($arr_ans as $k2 => $ans) {
                        $arr_label = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'];
                        $checked = '';
                        if (isset($data['results']->{$question['id']}->{'check'}) && $data['results']->{$question['id']}->{'ans_id'} == $ans['ans_id']) {
                            $checked = 'checked';
                        }
                        if ($ans['is_true'] == 1) {
                            $ans_true_label = $arr_label[$k2];
                        }
                        ?>
                        <li>
                            <input type="radio" <?php echo $checked ?> name="<?php echo $question['id'] ?>" value="<?php echo $ans['ans_id'] ?>"><span id="ans_name"><span id="stt"><?php echo $arr_label[$k2] . '. ' ?></span> <?php echo $ans['content'] ?></span>
                        </li>
                        <?php } ?>
                    </ul>
                    <div class="info" style="margin-bottom: 10px">
                        <?php
                        $check = (isset($data['results']->{$question['id']}->{'check'}) && $data['results']->{$question['id']}->{'check'} == 1) ? true : false;
                        $text_color = ($check) ? 'green' : 'red';
                        $icon = ($check) ? Icon::show('check') : Icon::show('close');
                        $vl = ($check) ? 'Đúng' : 'Sai';
                        ?>
                        <span class="w3-text-<?php echo $text_color ?>" style="margin-right: 10px"><?php echo $icon . ' ' . $vl?></span>
                        <span class="w3-text-teal"><a href="javascript:void(0)" id="<?php echo $question['id'] ?>" class="btn_show_solution">Xem đáp án</a></span>
                        <?php if (!empty(Yii::$app->user->identity->getId())) { ?>
                            <span class="w3-text-blue w3-right">
                                <a href="javascript:void(0)" data-toggle="modal" data-target="#modal_report_question_<?php echo $question['id'] ?>" data-question_id="<?php echo $question['id'] ?>"><?php echo Icon::show('commenting-o') . ' Báo cáo' ?></a>
                            </span>
                            <!-- Modal -->
                            <div id="modal_report_question_<?php echo $question['id'] ?>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header" style="background-color: #337ab7;">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title w3-text-white">Phản hồi về câu hỏi mã: <?php echo $question['id'] ?></h4>
                                        </div>
                                        <div class="modal-body">
                                            <p><b>Vui lòng cho chúng tôi biết vấn đề về câu hỏi này:</b></p>
                                            <textarea type="text" class="form-control" rows="3" placeholder="Nhập nội dung..." id="<?php echo 'ct_rp_' .$question['id']  ?>"></textarea>
                                            <p id="error_<?php echo $question['id'] ?>" class="w3-text-red"></p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-success" data-question_id="<?php echo $question['id'] ?>" onclick="report_question(this)"><?php echo Icon::show('commenting-o') ?>Gửi phản hồi</button>
                                            <button type="button" class="btn btn-danger" data-dismiss="modal"><?php echo Icon::show('close') ?> Hủy</button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="show_solution">
                        <p class="w3-leftbar w3-border-blue w3-pale-blue w3-padding"><?php echo $question['solution'] ?><br>
                        Đáp án đúng: <b><?php echo $ans_true_label ?></b>
                        </p>
                    </div>
                </div>
            <?php } ?>
        </div>

        <div class="w3-col l4 box_right">
            <div class="box_item">
                <p id="title">Thống kê</p>
                <p>Thời gian bắt đấu: <b><?php echo Utility::formatDataTime($data['info']->{'time_start'}, '-', '/', true) ?></b></p>
                <p>Thời gian kết thúc: <b><?php echo Utility::formatDataTime($data['info']->{'time_submit'}, '-', '/', true) ?></b></p>
                <p>Số câu đúng: <b><?php echo $data['info']->{'total_true'} . '/' . $quiz['total_question'] ?></b></p>
            </div>
            <div class="box_item">
                <p id="title">Đề thi khác</p>
                <ul style="text-align: left">
                    <?php foreach ($other_quiz as $q) { ?>
                        <li style="padding: 0 0 10px 0;"><a href="<?php echo Url::toRoute(['/chi-tiet/' . Utility::rewrite($q['name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $q['id'])]) ?>"><?php echo $quiz['name'] ?></a></li>
                    <?php }  ?>
                    <li>...</li>
                </ul>
            </div>
        </div>
    </div>
</div>


<style>
    body {
        /*background-color: #cad9da !important;*/
        background-image: url("/themes/default/images/bg/lg_bg.jpg");
    }
    .review_contest {
        font-family: 'Open Sans', sans-serif;
    }
    .review_contest .list_questions {
        background: #FFF;
        padding: 20px;
        border: 1px solid #ccc;
    }
    .review_contest .list_questions .box_question {
        margin-bottom: 20px;
        padding-bottom: 3px;
        border-bottom: 1px dotted #ccc;
    }
    .review_contest .list_questions .box_question #question_number {
        font-weight: bold;
    }
    .review_contest .list_questions .box_question #question_name {
    }
    .review_contest .list_questions .box_question ul.box_answer {
        list-style-type: none;
        padding: 0;
    }
    .review_contest .list_questions .box_question ul.box_answer li {
        padding: 5px;
    }
    .review_contest .list_questions .box_question ul.box_answer li input[type='radio'] {
        margin-right: 10px;
    }
    .review_contest .list_questions .box_question span#stt{
        font-weight: bold;
    }
    .review_contest .list_questions .box_question{
    }
    .review_contest .list_questions .box_question .show_solution {
        display: none;
    }

    .review_contest .box_right {
        padding-left: 20px;
    }
    .review_contest .box_right .box_item {
        text-align: center;
        border: 1px solid #ccc;
        padding: 20px;
        background: #FFF;
        margin-bottom: 20px;
    }
    .review_contest .box_right .box_item p#title {
        color: teal;
        font-size: 20px;
        margin-bottom: 20px;
        padding-bottom: 3px;
        border-bottom: 1px solid teal;
    }

    .review_contest .box-top {
        width: 50%;
        margin: 0 auto 30px auto;
        border: 1px solid #ccc;
        padding: 10px;
        text-align: center;
        background-color: #FFF;
    }
    .review_contest .box-top #quiz_name {
        font-size: 1.5em;
        color: teal;
    }
    .review_contest .box-top #time {}
</style>

<script>
    function report_question(selector) {
        var question_id = $(selector).data('question_id');
        var content = $("#ct_rp_" + question_id).val();
        var user_id = '<?php echo Yii::$app->user->identity->getId() ?>';
        var quiz_id = '<?php echo $quiz['id'] ?>';
        var _csrf = $("meta[name='csrf-param']").attr('content');
        if (content == '') {
            $("p#error_" + question_id).text('Vui lòng nhập nội dung phản hồi.');
            return false;
        }
        $('#modal_report_question_' + question_id).modal('hide');
        $.ajax({
            method: 'POST',
            data: {'user_id' : user_id, 'question_id' : question_id, 'content' : content, '_csrf' : _csrf, 'quiz_id' : quiz_id},
            url: '<?php echo Url::toRoute(['/quiz/report-question']) ?>',
            success: function (data) {
                var res = JSON.parse(data);
                BootstrapDialog.show({
                    title: 'Info!',
                    message: res.message
                });
            }
        });
    }
    $(document).ready(function () {
        $(".box_right").stick_in_parent();
    });
    $(function() {
        $('#rating_info').barrating({
            theme: 'fontawesome-stars',
            initialRating: '<?php echo $quiz_rating['point'] ?>',
            onSelect:function(value, text, event) {
                var student_id = '<?php echo (isset(Yii::$app->user->identity->type) && (Yii::$app->user->identity->type == 1)) ? Yii::$app->user->identity->getId() : 0 ?>';

                if (student_id == 0) {
                    BootstrapDialog.show({
                        title: 'Error!',
                        message: 'Bạn cần đăng nhập để bình chọn cho đề thi này.'
                    });
                    return false;
                }

                var _csrf = $("meta[name='csrf-param']").attr('content');
                var data = {'_csrf' : _csrf, 'student_id' : student_id, 'rate_value' : value, 'quiz_id' : '<?php echo $quiz['id'] ?>'};
                $.ajax({
                    method: 'POST',
                    data: data,
                    url: '<?php echo Url::toRoute(['/quiz/rating-quiz']) ?>',
                    success: function (data) {
                        var res = JSON.parse(data);
                        BootstrapDialog.show({
                            title: res.info,
                            message: res.message,
                        });
                        if (res.status == 1) {
                            location.reload();
                        }
                    }
                });
            }
        })
    });
</script>
<script>
    $(document).on('click', '.btn_show_solution', function () {
        var id = $(this).attr('id');
        $("#box_question_" + id + " .show_solution").toggle(100);
    });
</script>
