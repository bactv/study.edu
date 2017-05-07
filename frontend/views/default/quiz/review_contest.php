<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 10:17 SA
 */
use common\components\AssetApp;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);
?>

<div class="main_content">
    <div class="w3-row review_contest">
        <div class="box-top">
            <p id="quiz_name">Đề thi Online Trắc nghiệm Khảo sát hàm số lần 3</p>
            <p id="time">Thời gian: 30 phút</p>
        </div>

        <div class="w3-col l8 list_questions">
            <div class="box_question" id="box_question_1">
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
                <div class="info" style="margin-bottom: 10px">
                    <span class="w3-text-red" style="margin-right: 10px"><?php echo Icon::show('close') . ' Sai'?></span>
                    <span class="w3-text-teal"><a href="javascript:void(0)" id="1" class="btn_show_solution">Xem đáp án</a></span>
                    <span class="w3-text-blue w3-right"><a href="javascript:void(0)" id="report"><?php echo Icon::show('commenting-o') . ' Báo cáo' ?></a></span>
                </div>
                <div class="show_solution">
                    <p class="w3-leftbar w3-border-blue w3-pale-blue w3-padding">
                        Có thể những cố gắng trong 3 vòng đấu cuối này sẽ chỉ là vô nghĩa, song lòng thù hận không cho phép
                        Barcelona buông xuôi. Họ phải tạo ra sức ép liên tục khiến cho Real không thể tập trung nguồn lực cho
                        Champions League. Cứ nhìn Messi và các đồng đội nỗ lực ra sao ở trận Siêu kinh điển, chúng ta sẽ hiểu được điều đó.
                        Vì lẽ đó, Villarreal chưa bao giờ là đối thủ dễ chơi song nhiệm vụ của Barcelona không gì khác ngoài
                        3 điểm. Ở lượt đi, Barca bị cầm hòa 1-1 tại sân Ceramica, thậm chí đó còn là một thất bại nếu Messi không cứu rỗi
                        với bàn thắng phút 90. Hai lần đối đầu gần nhất trên sân khách, trận đấu đều kết thúc bằng tỷ số hòa
                        (1-1 và 2-2).
                    </p>
                </div>
            </div>

            <div class="box_question" id="box_question_2">
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
                <div class="info" style="margin-bottom: 10px">
                    <span class="w3-text-green" style="margin-right: 10px"><?php echo Icon::show('check') . ' Đúng'?></span>
                    <span class="w3-text-teal"><a href="javascript:void(0)" id="2"  class="btn_show_solution">Xem đáp án</a></span>
                    <span class="w3-text-blue w3-right"><a href="javascript:void(0)" id="report"><?php echo Icon::show('commenting-o') . ' Báo cáo' ?></a></span>
                </div>
                <div class="show_solution">
                    <p class="w3-leftbar w3-border-blue w3-pale-blue w3-padding">
                        Có thể những cố gắng trong 3 vòng đấu cuối này sẽ chỉ là vô nghĩa, song lòng thù hận không cho phép
                        Barcelona buông xuôi. Họ phải tạo ra sức ép liên tục khiến cho Real không thể tập trung nguồn lực cho
                        Champions League. Cứ nhìn Messi và các đồng đội nỗ lực ra sao ở trận Siêu kinh điển, chúng ta sẽ hiểu được điều đó.
                        Vì lẽ đó, Villarreal chưa bao giờ là đối thủ dễ chơi song nhiệm vụ của Barcelona không gì khác ngoài
                        3 điểm. Ở lượt đi, Barca bị cầm hòa 1-1 tại sân Ceramica, thậm chí đó còn là một thất bại nếu Messi không cứu rỗi
                        với bàn thắng phút 90. Hai lần đối đầu gần nhất trên sân khách, trận đấu đều kết thúc bằng tỷ số hòa
                        (1-1 và 2-2).
                    </p>
                </div>
            </div>
        </div>

        <div class="w3-col l4 box_right">
            <div class="box_item">
                <p id="title">Thống kê</p>
                <p>Thời gian bắt đấu: 05.05.2017 23:33:00</p>
                <p>Thời gian kết thúc: 05.05.2017 23:33:00</p>
                <p>Số câu đúng: 15/30</p>
            </div>
            <div class="box_item">
                <p id="title">Rating</p>
                <p>Vui lòng dành thời gian để rating cho đề thi này.</p>
                <select id="rating">
                    <option value="2">1</option>
                    <option value="4">2</option>
                    <option value="6">3</option>
                    <option value="8">4</option>
                    <option value="10">5</option>
                </select>
            </div>
            <div class="box_item">
                <p id="title">Đề thi khác</p>
                <ul style="text-align: left">
                    <li><a href="#">Đề thi Online Trắc nghiệm Khảo sát hàm số lần 3</a></li>
                    <li><a href="#">Đề thi Online Trắc nghiệm Khảo sát hàm số lần 3</a></li>
                    <li><a href="#">Đề thi Online Trắc nghiệm Khảo sát hàm số lần 3</a></li>
                    <li><a href="#">Đề thi Online Trắc nghiệm Khảo sát hàm số lần 3</a></li>
                    <li><a href="#">Đề thi Online Trắc nghiệm Khảo sát hàm số lần 3</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<style>
    body {
        background-color: #f7f7f7;
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
    $(function() {
        $('#rating').barrating({
            theme: 'fontawesome-stars',
            initialRating: 6
//            initialRating: '<?php //echo $info['point'] ?>//',
//            onSelect:function(value, text, event) {
//                var student_id = '<?php //echo isset(Yii::$app->user->identity->student_id) ? Yii::$app->user->identity->student_id : "" ?>//';
//                var ip = '<?php //echo DetectClient::get_ip_client() ?>//';
//
//                var _csrf = $("meta[name='csrf-param']").attr('content');
//                var data = {'_csrf' : _csrf, 'student_id' : student_id, 'ip' : ip, 'rate_value' : value, 'quiz_id' : '<?php //echo $quiz_id ?>//'};
//                $.ajax({
//                    method: 'POST',
//                    data: data,
//                    url: '<?php //echo Url::toRoute(['/quiz/rating-quiz']) ?>//',
//                    success: function (data) {
//                        var res = JSON.parse(data);
//                        BootstrapDialog.show({
//                            title: res.info,
//                            message: res.message,
//                        });
//                    }
//                });
//            }
        });


    });
</script>
<script>
    $(document).on('click', '.btn_show_solution', function () {
        var id = $(this).attr('id');
        $("#box_question_" + id + " .show_solution").toggle(100);
    });
</script>
