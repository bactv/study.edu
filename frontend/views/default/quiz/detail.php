<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 9:08 SA
 */
use yii\helpers\Url;
use common\components\Utility;
use frontend\models\QuizAttempt;
use common\components\AssetApp;

$total_attempts = QuizAttempt::get_total_attempts($quiz['id']);

AssetApp::regJsFile('quiz.js');
?>

<?php
$url = Url::toRoute(['/luyen-de/' . Utility::rewrite($quiz['name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $quiz['id'])]);
$user_id = !empty(Yii::$app->user->identity->user_id) ? Yii::$app->user->identity->getId() : 0;
?>

<!-- Page content -->
<div class="w3-container main_content">
    <div class="quiz_detail">
        <div id="title"><?php echo $quiz['name'] ?></div>
        <div class="quiz_desc"><?php echo $quiz['description'] ?></div>
        <div class="quiz_info">
            <p><i class="fa fa-question-circle w3-text-orange"></i> Số câu hỏi: <?php echo $quiz['total_question'] ?></p>
            <p><i class="fa fa-clock-o w3-text-blue"></i> Thời gian: <?php echo $quiz['time_length'] ?> phút</p>
            <p><i class="fa fa-users w3-text-green"></i> Số lượt thi: <?php echo number_format($total_attempts) ?></p>
        </div>
        <p id="btn-start">
            <a href="javascript:void(0)"
                id="start" role="button" class="btn btn-success w3-text-white"
                onclick="do_contest(this)"
                data-url="<?php echo $url ?>"
                data-user_id="<?php echo $user_id ?>"
                data-quiz_id="<?php echo $quiz['id'] ?>">
                <i class="fa fa-clock-o"></i> Bắt đầu
            </a>
        </p>
    </div>
</div>
<style>
    body {
        /*background-color: #cad9da !important;*/
    }
    .quiz_detail{
        width: 80%;
        margin: auto;
        padding: 10px;
        border: 1px solid #ccc;
        background-color: #FFF;
        box-shadow: 0 0 20px #ccc;
    }
    .quiz_detail #title{
        text-align: center;
        color: #FFF;
        font-size: 20px;
        font-weight: bold;
        margin-bottom: 20px;
        border-bottom: 1px solid teal;
        background: #009688;
        padding: 10px;
    }
    .quiz_detail .quiz_desc {
        margin-bottom: 10px;
        text-align: justify;
        padding-bottom: 40px;
        line-height: 30px;
    }
    .quiz_detail .quiz_info{
        text-align: center;
        margin-bottom: 20px;
    }
    .quiz_detail .quiz_info p{}
    .quiz_detail #btn-start {
        text-align: center;
    }
    .quiz_detail a[role="button"]{}
</style>
