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

<link rel="stylesheet" type="text/css" href="/themes/default/css/lesson.css">

<div class="w3-container lesson_detail">
    <div class="w3-container">
        <div class="w3-row box_top">
            <div class="w3-col l3 w3-left prev"><a href="#" ><?php echo Icon::show('angle-left') ?> Bài trước</a></div>
            <div class="w3-col l6 w3-center"><a href="#" >Chuyên đề 1: Dao động cơ học</a></div>
            <div class="w3-col l3 w3-right next"><a href="#" >Bài tiếp theo <?php echo Icon::show('angle-right') ?></a></div>
        </div>
    </div>
    <div class="w3-container">
        <div class="w3-col l3 box_left">
            <p id="lesson_title">Bài 1: Tế bào và hệ thống các cấp tổ chức sống</p>
            <ul class="lesson_assets">
                <li class="active"><a href="#"><span><?php echo Icon::show('play-circle', ['style' => 'color: #2ab573']) ?> Video</span></a></li>
                <li><a href="#"><span><?php echo Icon::show('file-text', ['style' => 'color: #c39322']) ?> Bài giảng (PDF)</span></a></li>
                <li><a href="#"><span><?php echo Icon::show('star-o', ['style' => 'color: #0d3ae6']) ?> Quiz 1</span></a></li>
                <li><a href="#"><span><?php echo Icon::show('star-o', ['style' => 'color: #0d3ae6']) ?> Quiz 2</span></a></li>
                <li><a href="#"><span><?php echo Icon::show('star-o', ['style' => 'color: #0d3ae6']) ?> Quiz 3</span></a></li>
            </ul>
        </div>

        <div class="w3-col l9 box_right">
            <div class="video_container">
                <iframe src="https://d3c33hcgiwev3.cloudfront.net/X7ooto0AEeWisRLkE7o57Q.processed/full/540p/index.mp4?Expires=1494633600&Signature=GYSk~fddic2f2Bj2VWQrmKgJ1J1JtSWPgz7DuAN7onGoT9tSdsGT8-Phdtfg1TslSapM--U1Q8M0ysCb93eUtvWMdd~Ci0xCRVhntYuQGQBogXT52wz8QIxH228NObtCidc0BJQ0UX463JAb9q4yQFlSiljiCgzCrdm37o6gCcU_&Key-Pair-Id=APKAJLTNE6QMUY6HBC5A">
                </iframe>
            </div>
        </div>
    </div>
</div>
