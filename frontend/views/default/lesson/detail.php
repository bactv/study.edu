<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 1:09 CH
 */
use yii\helpers\Url;
use yii\helpers\Html;
use common\components\Utility;
use frontend\components\widgets\CommentWidget;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);
?>

<div class="main_content ls-detail">
    <div class="w3-row box_top">
        <div class="course_info">
            <p id="course_name">LUYỆN THI THPT QUỐC GIA PEN-M TOÁN</p>
            <p id="course_teacher">Giáo viên: <a href="#">Lê Bá Trần Phương</a></p>
        </div>
    </div>
    <div class="w3-row">
        <div class="w3-col l8 box_left">
            <div class="lesson_detail">
                <p id="lesson_name">Bài 1: Tế bào và hệ thống các cấp tổ chức sống</p>
                <p id="lesson_desc">
                    Hiểu và cảm nhận được vẻ đẹp của hình tượng Lor-ca trong mạch cảm xúc, suy tư đa chiều vừa sâu sắc, vừa mãnh liệt của tác giả từ đó cảm nhận được vẻ đẹp độc đáo trong hình thức biểu đạt mang phong cách hiện đại của tác giả Thanh Thảo.
                    Tìm hiểu nội dung thi phẩm qua:
                    Hình tượng Lor-ca
                    Sự đồng cảm của tác giả
                </p>
                <div class="lesson_video">
                    <?php $video = false; ?>
                    <?php if ($video) { ?>
                        <video controls>
                            <source src="https://www.youtube.com/watch?v=lPJNTLT9e-A">
                            Your browser does not support the video tag.
                        </video>
                    <?php } else { ?>
                        <iframe src="https://www.youtube.com/embed/XGSy3_Czz8k"></iframe>
                    <?php } ?>
                </div>
            </div>
            <p class="navigation">
                <a href="" class="w3-left"><< Bài trước</a>
                <a href="" class="w3-right">Bài tiếp theo >></a>
            </p>
            <div class="discussion_widget">
                <?php echo CommentWidget::widget([]) ?>
            </div>
        </div>

        <div class="w3-col l4 box_right">
            <div class="box_item">
                <p id="title">Danh sách bài giảng</p>
                <ul class="w3-ul">
                    <li><a href="#">Bài 2: Tế bào và hệ thống các cấp tổ chức sống</a></li>
                    <li><a href="#">Bài 3: Tế bào và hệ thống các cấp tổ chức sống</a></li>
                    <li><a href="#">Bài 4: Tế bào và hệ thống các cấp tổ chức sống</a></li>
                    <li><a href="#">Bài 5: Tế bào và hệ thống các cấp tổ chức sống</a></li>
                    <li><a href="#">Bài 6: Tế bào và hệ thống các cấp tổ chức sống</a></li>
                    <li><a href="#">Bài 7: Tế bào và hệ thống các cấp tổ chức sống</a></li>
                    <li><a href="#">Bài 8: Tế bào và hệ thống các cấp tổ chức sống</a></li>
                </ul>
            </div>

            <div class="box_item">
                <p id="title">Bài tập, contest</p>
                <ul class="w3-ul">
                    <li><a href="#">Bài 2: Tế bào và hệ thống các cấp tổ chức sống</a></li>
                    <li><a href="#">Bài 3: Tế bào và hệ thống các cấp tổ chức sống</a></li>
                    <li><a href="#">Bài 4: Tế bào và hệ thống các cấp tổ chức sống</a></li>
                    <li><a href="#">Bài 5: Tế bào và hệ thống các cấp tổ chức sống</a></li>
                    <li><a href="#">Bài 6: Tế bào và hệ thống các cấp tổ chức sống</a></li>
                    <li><a href="#">Bài 7: Tế bào và hệ thống các cấp tổ chức sống</a></li>
                    <li><a href="#">Bài 8: Tế bào và hệ thống các cấp tổ chức sống</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<style>
    .ls-detail {}
    .ls-detail .box_top {
        margin-bottom: 30px;
    }
    .ls-detail .box_top .course_info {
        padding-bottom: 5px;
        border-bottom: 1px solid teal;
    }
    .ls-detail .box_top .course_info #course_name {
        color: teal;
        font-weight: bold;
        font-size: 1.4em;
    }
    .ls-detail .box_top .course_info #course_teacher {}

    .ls-detail .box_left {
        border-right: 1px solid #ccc;
        padding-right: 30px;
    }
    .ls-detail .box_left .lesson_detail {
        /*padding: 10px;*/
        /*border: 1px solid #ccc;*/
        /*box-shadow: 0 0 10px #ccc;*/
    }
    .ls-detail .box_left .lesson_detail #lesson_name {
        font-size: 1.2em;
        font-weight: bold;
    }
    .ls-detail .box_left .lesson_detail #lesson_desc {
        margin-bottom: 20px;
    }
    .ls-detail .box_left .lesson_detail .lesson_video {}
    .ls-detail .box_left .lesson_detail .lesson_video video {
        width: 100%;
        height: 350px;
    }
    .ls-detail .box_left .lesson_detail .lesson_video iframe {
        width: 100%;
        height: 350px;
    }
    p.navigation {
        margin-top: 20px;
    }
    p.navigation a {

    }

</style>

<style>
    .ls-detail .box_right {padding-left: 10px;}
    .ls-detail .box_right .box_item {
        margin-bottom: 20px;
        border: 1px solid #ccc;
    }
    .ls-detail .box_right .box_item #title {
        color: teal;
        font-size: 1.4em;
        text-align: center;
        border-bottom: 1px solid teal;
        padding: 10px;
    }
    .ls-detail .box_right .box_item ul {}
    .ls-detail .box_right .box_item ul li {}
    .ls-detail .box_right .box_item ul li a {}

</style>
