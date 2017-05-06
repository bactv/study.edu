<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 9:08 SA
 */
use yii\helpers\Url;
use common\components\Utility;
?>

<!-- Page content -->
<div class="w3-container main_content">
    <div class="quiz_detail">
        <div id="title"> Đề thi thử môn Hóa lần 2 - THPT Chuyên Hạ Long - Quảng Ninh</div>
        <div class="quiz_desc">
            Đề thi trắc nghiệm “Thi Online Đề thi thử môn Hóa lần 2 - THPT Chuyên Hạ Long - Quảng Ninh” có cấu trúc 60%
            kiến thức cơ bản và 40% kiến thức nâng cao với độ khó tăng dần theo từng câu hỏi. Cấu trúc ra đề được biên
            soạn theo định hướng mới của Bộ GD & ĐT giúp các em có những trải nghiệm thực tế.
        </div>
        <div class="quiz_info">
            <p><i class="fa fa-question-circle"></i> Số câu hỏi: 30</p>
            <p><i class="fa fa-clock-o"></i> Thời gian: 50 phút</p>
            <p><i class="fa fa-user"></i> Số lượt thi: 30</p>
        </div>
        <p id="btn-start"><a href="<?php echo Url::toRoute(['/luyen-de/' . Utility::rewrite('Đề thi thử môn Hóa lần 2 - THPT Chuyên Hạ Long - Quảng Ninh') . '-cn' . Utility::encrypt_decrypt('encrypt', '145')]) ?>" role="button" class="btn btn-success"><i class="fa fa-clock-o"></i> Bắt đầu</a></p>
    </div>
</div>
<style>
    body {
        background: #f7f7f7;
    }
    .quiz_detail{
        width: 50%;
        margin: auto;
        padding: 10px;
        border: 1px solid #ccc;
        background-color: rgba(35, 125, 169, 0.25);
        box-shadow: 0 0 20px #ccc;
    }
    .quiz_detail #title{
        text-align: center;
        color: teal;
        font-size: 20px;
        font-weight: bold;
        margin-bottom: 20px;

        padding-bottom: 5px;
        border-bottom: 1px solid teal;
    }
    .quiz_detail .quiz_desc {
        margin-bottom: 10px;
        text-align: justify;
        padding-bottom: 10px;
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
