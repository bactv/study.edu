<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 10:51 CH
 */
use yii\helpers\Url;
use yii\helpers\Html;
use common\components\Utility;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

?>

<div class="main_content">
    <p class="w3-text-teal w3-center" id="title">Khóa học luyện thi THPT Quốc Gia <?php echo (!empty($subject) ? ' - ' . $subject['name'] : '') ?></p>
    <div class="list_course">
        <div class="box_category">
            <?php if (empty($subject)) { ?>
                <p id="category_name" class="w3-text-teal"><a href="<?php echo Url::toRoute(['khoa-hoc-truc-tuyen/toan-hoc']) ?>"><?php echo Icon::show('calculator') ?>Môn toán >></a></p>
            <?php  } ?>
            <div class="box_list_course owl-carousel">
                <div class="w3-margin-bottom item">
                    <?php
                        $url =  Url::toRoute(['/khoa-hoc/' . Utility::rewrite("Khoá H2 - Luyện thi THPT Quốc gia môn Toán năm 2018") . '-cn' . Utility::encrypt_decrypt('encrypt', '134')]);
                    ?>
                    <a href="<?php echo $url ?>"><img src="https://www.w3schools.com/w3images/team2.jpg" alt="John" style="width:100%"></a>
                    <div class="info">
                        <a href="<?php echo $url ?>"><h5 class="w3-text-teal">Khoá H2 - Luyện thi THPT Quốc gia môn Toán năm 2018</h5></a>
                        <p class="w3-opacity"><b>Giáo viên:</b> <span><a href="#">Ts. Phạm Sỹ Nam</a></span>, <span><a href="#">Ts. Phạm Sỹ Nam</a></span></p>
                        <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
                        <p class="course_fee">300.000 VNĐ</p>
                    </div>
                </div>
                <div class="w3-margin-bottom item">
                    <img src="https://www.w3schools.com/w3images/team4.jpg" alt="John" style="width:100%">
                    <div class="info">
                        <h5 class="w3-text-teal">Khoá H2 - Luyện thi THPT Quốc gia môn Toán năm 2018</h5>
                        <p class="w3-opacity"><b>Giáo viên:</b> <span><a href="#">Ts. Phạm Sỹ Nam</a></span>, <span><a href="#">Ts. Phạm Sỹ Nam</a></span></p>
                        <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
                        <p class="course_fee">300.000 VNĐ</p>
                    </div>
                </div>
                <div class="w3-margin-bottom item">
                    <img src="https://www.w3schools.com/w3images/team2.jpg" alt="John" style="width:100%">
                    <div class="info">
                        <h5 class="w3-text-teal">Khoá H2 - Luyện thi THPT Quốc gia môn Toán năm 2018</h5>
                        <p class="w3-opacity"><b>Giáo viên:</b> <span><a href="#">Ts. Phạm Sỹ Nam</a></span>, <span><a href="#">Ts. Phạm Sỹ Nam</a></span></p>
                        <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
                        <p class="course_fee">300.000 VNĐ</p>
                    </div>
                </div>
                <div class="w3-margin-bottom item">
                    <img src="https://www.w3schools.com/w3images/team4.jpg" alt="John" style="width:100%">
                    <div class="info">
                        <h5 class="w3-text-teal">Khoá H2 - Luyện thi THPT Quốc gia môn Toán năm 2018</h5>
                        <p class="w3-opacity"><b>Giáo viên:</b> <span><a href="#">Ts. Phạm Sỹ Nam</a></span>, <span><a href="#">Ts. Phạm Sỹ Nam</a></span></p>
                        <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
                        <p class="course_fee">300.000 VNĐ</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    p#title {
        font-size: 2.0em;
        margin-bottom: 50px;
        position: relative;
    }
    p#title:after {
        content: "";
        position: absolute;
        bottom: -4px;
        left: 50%;
        margin-left: -100px;
        width: 210px;
        background: #009688;
        height: 2px;
    }
    .list_course {}
    .list_course .box_category {}
    .list_course .box_category #category_name{
        font-size: 1.4em;
    }
    .list_course .box_category .box_list_course {}
    .list_course .box_category .box_list_course .item {
        border: 1px solid #ccc;
    }
    .list_course .box_category .box_list_course img {
        height: 180px;
    }
    .list_course .box_category .box_list_course .item .info {
        padding: 10px;
    }
    .list_course .box_category .box_list_course .item .info .course_fee {
        color: red;
        font-weight: bold;
    }
</style>

<script>
    $(document).ready(function(){
        $('.owl-carousel').owlCarousel({
            center: false,
            items:4,
            loop:false,
            margin:10,
            responsive:{
                600:{
                    items:4
                }
            }
        });
    });
</script>