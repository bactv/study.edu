<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 10:17 SA
 */
use common\components\AssetApp;
use yii\helpers\Url;
?>

<div class="main_content">
    <div class="w3-row do_contest">
        <div class="box-top">
            <p id="quiz_name">Đề thi Online Trắc nghiệm Khảo sát hàm số lần 3</p>
            <p id="time">Thời gian: 30 phút</p>
        </div>

        <div class="w3-col l8 list_questions">
            <div class="box_question">
                <p id="question_number">Câu 1</p>
                <p id="question_name">(Nhận định bóng đá Barcelona - Villarreal, 23h30, 6/5, vòng 36 La Liga) Có thể Barcelona
                    sẽ chẳng lật đổ được Real. Nhưng cho đến giờ phút cuối cùng, người Catalan vẫn có quyền hy vọng.</p>
                <ul class="box_answer">
                    <li>
                        <input type="radio" name="question_1"><span id="ans_name"><span id="stt">A.</span> Justification changes spacing between words</span>
                    </li>
                    <li>
                        <input type="radio" name="question_1"><span id="ans_name"><span id="stt">B.</span> Justification changes spacing between words</span>
                    </li>
                    <li>
                        <input type="radio" name="question_1"><span id="ans_name"<span id="stt">C.</span> Justification changes spacing between words</span>
                    </li>
                    <li>
                        <input type="radio" name="question_1"><span id="ans_name"><span id="stt">D.</span> Justification changes spacing between words</span>
                    </li>
                </ul>
            </div>

            <div class="box_question">
                <p id="question_number">Câu 2</p>
                <p id="question_name">(Nhận định bóng đá Barcelona - Villarreal, 23h30, 6/5, vòng 36 La Liga) Có thể Barcelona
                    sẽ chẳng lật đổ được Real. Nhưng cho đến giờ phút cuối cùng, người Catalan vẫn có quyền hy vọng.</p>
                <ul class="box_answer">
                    <li>
                        <input type="radio" name="question_2"><span id="ans_name"><span id="stt">A.</span> Justification changes spacing between words</span>
                    </li>
                    <li>
                        <input type="radio" name="question_2"><span id="ans_name"><span id="stt">B.</span> Justification changes spacing between words</span>
                    </li>
                    <li>
                        <input type="radio" name="question_2"><span id="ans_name"><span id="stt">C.</span> Justification changes spacing between words</span>
                    </li>
                    <li>
                        <input type="radio" name="question_2"><span id="ans_name"><span id="stt">D.</span> Justification changes spacing between words</span>
                    </li>
                </ul>
            </div>
        </div>

        <div class="w3-col l4 box_right">
            <div class="box_item">
                <div class="clock_img">
                    <img src="<?php echo AssetApp::getImageBaseUrl() . '/icons/clock.png' ?>">
                </div>
                <div class="time">
                    70:00
                </div>
                <button id="make_exam" class="btn btn-success"><i class="fa fa-anchor" aria-hidden="true"></i> Nộp bài</button>
            </div>
        </div>
    </div>
</div>

<style>
    body {
        background-color: #f7f7f7;
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
