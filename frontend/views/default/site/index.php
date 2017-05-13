<?php

/* @var $this yii\web\View */

$this->title = 'Hệ thống luyệ thi THPT Quốc Gia - Luyện thi ĐH, CĐ - Luyện thi trắc nghiệm trực tuyến.';
use common\components\Utility;
use common\components\AssetApp;
use frontend\models\Teacher;
use yii\helpers\Url;
?>
<!-- SLIDE SHOW -->
<?php if (isset($slides) && count($slides) > 0) { ?>
    <div class="slideshow">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <?php foreach ($slides as $k => $slide) {
                    $img = '';
                    $path = Yii::$app->params['assets_path']['img.slide'] . ($k + 1) . '.png';
                    if (Utility::check_url_file_exists($path) !== false) {
                        $img = $path;
                    }
                    if (!empty($img)) { ?>
                    <div class="item <?php echo ($k == 0) ? 'active' : '' ?>">
                        <a href="<?php echo $slide['url'] ?>" target="_blank">
                            <img src="<?php echo $img ?>" alt="<?php echo $slide['alt'] ?>">
                        </a>
                    </div>
                <?php } } ?>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
<?php } ?>


<!-- FORM TIM KIEM KHOA HOC -->
<div class="w3-center search-course w3-theme-l4 w3-padding-64">
    <h2 class="w3-text-white w3-margin-bottom w3-text-teal title">Tìm kiếm khóa học</h2>
    <div class="w3-col l6 m6 s12 sj" style="text-align: right;padding-right: 20px;">
        <select class="w3-select" name="option">
            <option value="1">-- Môn học --</option>
            <option value="2">Option 2</option>
            <option value="3">Option 3</option>
        </select>
    </div>
    <div class="w3-col l6 m6 s12 tp" style="text-align: left;padding-left: 20px;">
        <select class="w3-select" name="option">
            <option value="1">-- Chuyên đề --</option>
            <option value="2">Option 2</option>
            <option value="3">Option 3</option>
        </select>
    </div>
</div>

<hr>


<!-- Page content -->
<div class="w3-main w3-padding" style="max-width:1564px">

    <!-- Project Section -->
    <div class="w3-container w3-padding-32">
        <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16 w3-center w3-text-teal">Khóa học nổi bật</h3>
    </div>
    <!-- First Photo Grid-->
    <div class="w3-row-padding list_course">
        <?php foreach ($feature_course as $course) {
            $logo = AssetApp::getImageBaseUrl() . '/icons/img_course_default.jpg';
            $url = Yii::$app->params['assets_path']['img.course'] . $course['id'] . '.png';
            if (Utility::check_url_file_exists($url)) {
                $logo = $url;
            }
            $teachers = '';
            $ex = json_decode($course['teacher_ids']);
            if (is_array($ex)) {
                foreach ($ex as $item) {
                    $tch = Teacher::getAttributeValue(['user_id' => $item], 'full_name');
                    $url_teacher = Url::toRoute(['/gioi-thieu-giao-vien/' . Utility::rewrite($tch) . '-cn' . Utility::encrypt_decrypt('encrypt', $item)]);
                    $teachers .= '<a href="' . $url_teacher . '" class="teacher_name w3-text-teal" target="_blank">' . $tch . '</a>' . ', ';
                }
            }
            $teachers = substr(trim($teachers), 0, strlen(trim($teachers)) - 1);
            $deadline = 'Không giới hạn';
            if ($course['deadline_register'] != '') {
                $deadline = Utility::formatDataTime($course['deadline_register'], '-', '.', false);
            }
            $course_fee = number_format($course['price']);
            $url_course = Url::toRoute(['/khoa-hoc/' . Utility::rewrite($course['name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $course['id'])]);
            ?>
        <div class="w3-quarter w3-container w3-margin-bottom w3-display-container">
            <?php if ($course['price'] == 0) { ?>
                <div class="w3-display-topleft w3-teal w3-padding">Miễn phí</div>
            <?php } ?>
            <div class="course_item">
                <a href="<?php echo $url_course ?>" class="course_img"><img src="<?php echo $logo ?>" alt="<?php echo $course['name'] ?>" /></a>
                <div class="w3-container w3-white course_desc" style="padding: 0">
                    <p class="course_name"><a href="#" class="w3-text-teal"><?php echo $course['name'] ?> </a></p>
                    <p class="course_teacher">Giáo viên: <?php echo $teachers ?></p>

                    <div class="register_info">
                        <p class="course_student"><i class="fa fa-users" aria-hidden="true"></i> <?php echo $course['total_student'] ?> học sinh</p>
                        <p class="course_time"><i class="fa fa-calendar" aria-hidden="true"></i> Hạn đăng ký: <?php echo $deadline ?></p>
                        <p class="course_fee"><i class="fa fa-tag" aria-hidden="true"></i> Học phí: <?php echo $course_fee ?> VNĐ</p>
                    </div>

                    <div class="view_more"><a href="<?php echo $url_course ?>">Xem thêm >></a></div>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>





    <!-- Project Section -->
    <div class="w3-container w3-padding-32" id="projects">
        <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16 w3-center w3-text-teal">Giáo viên</h3>
    </div>

    <div class="w3-row-padding w3-grayscale owl-carousel" style="padding: 0 30px;">
        <?php foreach ($list_teacher as $teacher) {
            if ($teacher['gender'] == 1) {
                $avatar = AssetApp::getImageBaseUrl() . '/icons/male_teacher_icon.png';
            } else {
                $avatar = AssetApp::getImageBaseUrl() . '/icons/female_teacher_icon.png';
            }
            $url = Yii::$app->params['assets_path']['img.user'] . $teacher['user_id'] . '.png';
            if (Utility::check_url_file_exists($url)) {
                $avatar = $url;
            }
            $url_teacher = Url::toRoute(['/gioi-thieu-giao-vien/' . Utility::rewrite($teacher['full_name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $teacher['user_id'])]);
            ?>
        <div class="w3-margin-bottom">
            <img src="<?php echo $avatar ?>" alt="<?php echo $teacher['full_name'] ?>" style="width:100%;border-radius: 50%;">
            <h3 class="w3-text-teal"><?php echo $teacher['degree'] . '. ' . $teacher['full_name'] ?></h3>
            <p class="w3-opacity">CEO & Founder</p>
            <p><?php echo Utility::truncateStringWords($teacher['intro'], 70) ?></p>
            <p><a href="<?php echo $url_teacher ?>" ><a class="w3-button w3-light-grey w3-block w3-text-teal">Xem chi tiết >></button></a></p>
        </div>
        <?php } ?>
    </div>
</div>
<style>
    .carousel-inner>.item.active {
        height: 350px;
    }
    .carousel-inner>.item.active img {
        width: 100%;
        height: 100%;
    }
</style>

<script>
    $(document).ready(function(){
        $('.owl-carousel').owlCarousel({
            center: true,
            items:6,
            loop:true,
            margin:10,
            responsive:{
                600:{
                    items:4
                }
            }
        });
    });
</script>