<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 16/05/2017
 * Time: 12:30 SA
 */
use yii\helpers\Url;
use common\components\Utility;
?>

<div class="w3-container main_content">
    <div class="quiz_detail">
        <h2>Bài kiểm tra</h2>
        <div class="quiz_info">
            <p><i class="fa fa-question-circle w3-text-orange"></i> <b>Số câu hỏi:</b> <?php echo $quiz['total_question'] ?></p>
            <p><i class="fa fa-clock-o w3-text-blue"></i> <b>Thời gian:</b> <?php echo $quiz['time_length'] ?> phút</p>
            <p><i class="fa fa-clock-o w3-text-blue"></i> <b>Vượt qua bài thi:</b> <?php echo number_format($quiz['pass_exam'] / $quiz['total_question'] * 100, 2) . '%'  ?> hoặc cao hơn</p>
        </div>
        <p id="btn-start">
            <a href="<?php echo Url::toRoute(['/lesson/do-quiz', 'id' => Utility::encrypt_decrypt('encrypt', $quiz['id'])]) ?>" id="start" role="button" class="btn btn-success w3-text-white"><i class="fa fa-clock-o"></i> Bắt đầu</a>
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
        padding: 40px;
        border: 1px solid #ccc;
        background-color: #FFF;
        margin-top: 70px;
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
        text-align: left;
        margin-bottom: 20px;
    }
    .quiz_detail .quiz_info p{}
    .quiz_detail #btn-start {
        text-align: left;
    }
    .quiz_detail a[role="button"]{}
</style>
