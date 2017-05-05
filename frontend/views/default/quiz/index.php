<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 10:49 CH
 */
use yii\helpers\Url;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);
?>

<!-- Page content -->
<div class="w3-container main_content">
    <div class="w3-col l2 m2 s12">
        <ul class="list_subject">
            <?php foreach ($arr_subjects as $k => $subject) {
                $arr_left_bar = ['w3-border-blue', 'w3-border-red', 'w3-border-green', 'w3-border-blue', 'w3-border-red', 'w3-border-green', 'w3-border-blue', 'w3-border-red', 'w3-border-green'];
                ?>
                <a href="<?php echo Url::toRoute(['/']) ?>"><li class="w3-leftbar <?php echo (isset($arr_left_bar[$k]) ? $arr_left_bar[$k] : 'w3-border-green') ?>"> <?php echo Icon::show($subject['icon']) . ' ' . $subject['name'] ?> <i class="fa fa-angle-right" aria-hidden="true"></i></li></a>
            <?php } ?>
        </ul>
    </div>
    <div class="w3-col l7 m7 s12">
        <div class="quiz_category">
            <ul>
                <li><a href="#">Trắc nghiệm theo chuyên đề</a></li>
                <li><a href="#">Đề kiểm tra</a></li>
                <li><a href="#">Đề thi thử THPT QG</a></li>
            </ul>
        </div>
        <div class="list_quiz">
            <div class="w3-row w3-card box-item">
                <p id="quiz-title"><span><i class="fa fa-calculator" aria-hidden="true"></i> Toán học</span> | Trắc nghiệm theo chuyên đề | 60 phút</p>
                <p id="quiz-name"><a href="#" class="w3-text-teal">Đề thi Online Trắc nghiệm Khảo sát hàm số lần 3</a></p>
                <div class="w3-col l6 m6 s6 w3-left" id="quiz-info">
                    <p>
                        <span><i class="fa fa-users" aria-hidden="true"></i> 30 lượt thi</span>
                        |
                        <span><i class="fa fa-building-o" aria-hidden="true"></i> 40 câu hỏi</span>
                    </p>
                </div>
                <div class="w3-col l6 m6 s6 w3-right" id="btn-detail">
                    <a href="#" role="button">Chi tiết >></a>
                </div>
            </div>

            <div class="w3-row w3-card box-item">
                <p id="quiz-title"><span><i class="fa fa-calculator" aria-hidden="true"></i> Toán học</span> | Trắc nghiệm theo chuyên đề | 60 phút</p>
                <p id="quiz-name"><a href="#" class="w3-text-teal">Đề thi Online Trắc nghiệm Khảo sát hàm số lần 3</a></p>
                <div class="w3-col l6 m6 s6 w3-left" id="quiz-info">
                    <p>
                        <span><i class="fa fa-users" aria-hidden="true"></i> 30 lượt thi</span>
                        |
                        <span><i class="fa fa-building-o" aria-hidden="true"></i> 40 câu hỏi</span>
                    </p>
                </div>
                <div class="w3-col l6 m6 s6 w3-right" id="btn-detail">
                    <a href="#" role="button">Chi tiết >></a>
                </div>
            </div>

        </div>
    </div>
    <div class="w3-col l3 m3 s13">
        <div class="leaderboard">
            <p id="title" class="w3-text-teal">Bảng xếp hạng</p>
            <ul class="nav nav-pills">
                <li class="active"><a data-toggle="pill" href="#home">Tuần</a></li>
                <li><a data-toggle="pill" href="#menu1">Tháng</a></li>
            </ul>

            <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
                    <table class="w3-table">
                        <tr>
                            <th>TT</th>
                            <th>Học sinh</th>
                            <th>Điểm</th>
                        </tr>
                        <tr>
                            <td class="w3-center"><i class="fa fa-trophy" aria-hidden="true" style="color: yellow;font-size: 30px;"></i></td>
                            <td>Smith</td>
                            <td>50</td>
                        </tr>
                        <tr>
                            <td><i class="fa fa-trophy" aria-hidden="true" style="color: honeydew;    font-size: 30px;"></i></td>
                            <td>Smith</td>
                            <td>50</td>
                        </tr>
                        <tr>
                            <td><i class="fa fa-trophy" aria-hidden="true" style="color: #5b4411;    font-size: 30px;"></i></td>
                            <td>Smith</td>
                            <td>50</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Smith</td>
                            <td>50</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Smith</td>
                            <td>50</td>
                        </tr>
                    </table>
                </div>
                <div id="menu1" class="tab-pane fade">

                </div>
            </div>
        </div>
    </div>
</div>

<style>
    body {
        background: #f7f7f7;
    }
    .main_content {
        font-family: 'Taviraj', serif;
    }
    #btn-detail a {
        font-style: italic;
        font-size: 13px;
        color: orange;
    }
    .w3-table td, .w3-table th {
        text-align: center;
    }
</style>