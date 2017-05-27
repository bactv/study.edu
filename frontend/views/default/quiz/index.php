<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 10:49 CH
 */
use yii\helpers\Url;
use kartik\icons\Icon;
use common\components\AssetApp;
use common\components\Utility;
use frontend\models\Subject;
use frontend\models\Topic;
use frontend\models\QuizAttempt;
use yii\widgets\LinkPager;

Icon::map($this, Icon::FA);
?>

<?php
$quiz_type_id = 2;
if ($uri == 'trac-nghiem-tong-hop') {
    $quiz_type_id = 3;
} else if ($uri == 'thi-thu-thpt') {
    $quiz_type_id = 1;
}
?>

<!-- Page content -->
<div class="w3-container main_content">
    <p class="w3-text-teal w3-center" style="margin-bottom: 30px" id="title">Luyện thi trắc nghiệm online</p>
    <div class="w3-col l2 m2 s12 box_left">
        <ul class="list_subject">
            <?php foreach ($arr_subjects as $k => $subject) {
                $arr_left_bar = ['w3-border-blue', 'w3-border-red', 'w3-border-green', 'w3-border-blue', 'w3-border-red', 'w3-border-green', 'w3-border-blue', 'w3-border-red', 'w3-border-green'];
                ?>
                <a href="<?php echo Url::toRoute(['/' . $uri . '/' . $subject['name_n']]) ?>"><li class="w3-leftbar <?php echo (($sj_id != '' && $sj_id == $subject['id']) ? 'w3-border-green w3-text-green' : 'w3-border-grey') ?>"> <?php echo Icon::show($subject['icon']) . ' ' . $subject['name'] ?> <i class="fa fa-angle-right" aria-hidden="true"></i></li></a>
            <?php } ?>
        </ul>
    </div>
    <div class="w3-col l6 m6 s12">
        <div class="quiz_category">
            <ul>
                <li class="<?php echo ($uri == 'trac-nghiem-theo-chuyen-de') ? 'active' : '' ?>"><a href="<?php echo Url::toRoute(['/trac-nghiem-theo-chuyen-de']) ?>">Luyện theo chuyên đề</a></li>
                <li class="<?php echo ($uri == 'trac-nghiem-tong-hop') ? 'active' : '' ?>"><a href="<?php echo Url::toRoute(['/trac-nghiem-tong-hop']) ?>">Trắc nghiệm tổng hợp</a></li>
                <li class="<?php echo ($uri == 'thi-thu-thpt') ? 'active' : '' ?>"><a href="<?php echo Url::toRoute(['/thi-thu-thpt']) ?>">Đề thi thử THPT</a></li>
            </ul>
        </div>
        <div class="list_quiz">
            <?php foreach ($arr_quiz as $quiz) {
                $subject = Subject::findOne(['id' => $quiz['subject_id']]);
                $topic = Topic::findOne(['id' => $quiz['topic_id']]);
                $total_attempts = QuizAttempt::get_total_attempts($quiz['id']);
                ?>
                <div class="w3-row w3-card box-item">
                    <p id="quiz-title"><span><i class="fa fa-<?php echo $subject['icon'] ?>" aria-hidden="true"></i> <?php echo $subject['name'] ?></span> | <?php echo $quiz['time_length'] ?> phút</p>
                    <p id="quiz-name"><a href="<?php echo Url::toRoute(['/chi-tiet/' . Utility::rewrite($quiz['name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $quiz['id'])]) ?>" class="w3-text-teal"><?php echo $quiz['name'] ?></a></p>
                    <div class="w3-col l6 m6 s6 w3-left" id="quiz-info">
                        <p>
                            <span><i class="fa fa-users" aria-hidden="true"></i> <?php echo number_format($total_attempts) ?> lượt thi</span>
                            |
                            <span><i class="fa fa-building-o" aria-hidden="true"></i> <?php echo $quiz['total_question'] ?> câu hỏi</span>
                        </p>
                    </div>
                    <div class="w3-col l6 m6 s6 w3-right" id="btn-detail">
                        <a href="<?php echo Url::toRoute(['/chi-tiet/' . Utility::rewrite($quiz['name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $quiz['id'])]) ?>" role="button">Chi tiết >></a>
                    </div>
                </div>
            <?php } ?>
            <?php
            echo LinkPager::widget([
                'pagination' => $pages,
            ]);
            ?>
        </div>
    </div>
    <div class="w3-col l4 m4 s12 leaderboard">
        <div class="">
            <p id="title" class="w3-text-teal">Bảng xếp hạng</p>
            <ul class="nav nav-pills">
                <li class="active"><a data-toggle="pill" href="#week" data-div_id="week" onclick="leaderboard('week', this)">Tuần</a></li>
                <li><a data-toggle="pill" href="#month" data-div_id="month" onclick="leaderboard('month', this)">Tháng</a></li>
            </ul>

            <div class="tab-content">
                <div id="week" class="tab-pane fade in active">
                    <?php echo $this->render('leaderboard.php', [
                        'leaderboard' => $leaderboard
                    ]) ?>
                </div>
                <div id="month" class="tab-pane fade">
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    .main_content {
        font-family: 'Taviraj', serif;
    }
    #btn-detail a {
        font-style: italic;
        font-size: 13px;
        color: orange;
    }
    .main_content > p#title {
        font-size: 2.0em;
        margin-bottom: 50px;
        position: relative;
    }
    .main_content > p#title:after {
        content: "";
        position: absolute;
        bottom: -4px;
        left: 50%;
        margin-left: -100px;
        width: 210px;
        background: #009688;
        height: 2px;
    }
    .quiz_category li.active a {
        background: rgba(17, 113, 183, 0.81);
        color: #FFF;
    }
    .list_subject a li.active {

    }
</style>

<script>
    $(document).ready(function () {
        $(".box_left, .leaderboard").stick_in_parent();
    });

    function leaderboard(type = 'week', element) {
        var quiz_type = '<?php echo $quiz_type_id ?>';
        var subject_id = '<?php echo $sj_id ?>';
        var div = $(element).data('div_id');
        console.log(div);
        $.ajax({
            method: 'GET',
            data: {'type' : type, 'quiz_type_id' : quiz_type, 'subject_id' : subject_id},
            url: '<?php echo Url::toRoute(['/quiz/get-leaderboard']) ?>',
            success: function (data) {
                $("div#" + div).html(data);
            }
        });
    }
</script>