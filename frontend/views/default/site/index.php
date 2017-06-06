<?php

/* @var $this yii\web\View */

$this->title = 'Hệ thống luyệ thi THPT Quốc Gia - Luyện thi ĐH, CĐ - Luyện thi trắc nghiệm trực tuyến.';
use common\components\Utility;
use common\components\AssetApp;
use frontend\models\Teacher;
use yii\helpers\Url;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

AssetApp::regJsFilePlugin('dist/scrollreveal.js', 'scrollreveal')

?>
<link rel="stylesheet" type="text/css" href="/themes/default/css/site.css">
<link rel="stylesheet" type="text/css" href="/themes/default/css/mobile_index.css">
<link href="https://fonts.googleapis.com/css?family=Roboto|Source+Sans+Pro" rel="stylesheet">

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


<!-- TRẮC NGHIỆM VÀ SỰ KIỆN -->

<div class="w3-container w3-center main_content_2">
    <div class="w3-col l6 m6 s12 list_quiz">
        <p id="title"><span><?php echo Icon::show('th-list') ?></span>Thi trắc nghiệm online</p>
        <?php if (isset($list_quiz) && count($list_quiz) > 0) { ?>
            <div class="list_item">
                <?php foreach ($list_quiz as $quiz) {
                    $url = Url::toRoute(['/chi-tiet/' . Utility::rewrite($quiz['name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $quiz['id'])]);
                    ?>
                    <div class="item">
                        <a href="<?php echo $url ?>">
                            <div class="quiz_name"><span class="icon" style="color: <?php echo $quiz['icon_color'] ?>"><?php echo Icon::show($quiz['subject_icon']) ?></span> <?php echo $quiz['name'] ?> </div>
                        </a>
                    </div>
                    <div class="clear" style="clear: both"></div>
                <?php } ?>
            </div>
        <?php } ?>
    </div>

    <div class="w3-col l6 m6 s12 list_events">
        <p id="title"><span><?php echo Icon::show('leaf') ?></span>Sự kiện nổi bật</p>
        <div class="list_item">
            <?php $colors = ['yellow', 'blue', 'green', 'teal', 'red', 'brow']; ?>
            <?php foreach ($list_event as $event) {
                $ran = mt_rand(0, 5);
                $from_date = Utility::formatDataTime($event['from_date'], '-', '/', false);
                $to_date = Utility::formatDataTime($event['to_date'], '-', '/', false);
                ?>
                <div class="item">
                    <a href="#">
                        <div class="event_name"><span class="icon" style="color: <?php echo $colors[$ran] ?>"><?php echo Icon::show('briefcase') ?></span> <?php echo $event['name'] . '<i id="date_event">( ' . $from_date  . ' - ' . $to_date . ' )</i>' ?> </div>
                    </a>
                </div>
                <div class="clear" style="clear: both"></div>
            <?php } ?>
        </div>
    </div>
</div>


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
                    $url_teacher = Url::toRoute(['/giao-vien/' . Utility::rewrite($tch) . '-cn' . Utility::encrypt_decrypt('encrypt', $item)]);
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
                <div class="w3-display-topleft w3-teal w3-padding flag">Miễn phí</div>
            <?php } ?>
            <div class="course_item">
                <a href="<?php echo $url_course ?>" class="course_img"><img src="<?php echo $logo ?>" alt="<?php echo $course['name'] ?>" /></a>
                <div class="w3-container w3-white course_desc" style="padding: 0">
                    <p class="course_name"><a href="<?php echo $url_course ?>" class="w3-text-teal"><?php echo $course['name'] ?> </a></p>
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
<!--    <div class="w3-container w3-padding-32" id="projects">-->
<!--        <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16 w3-center w3-text-teal">Giáo viên</h3>-->
<!--    </div>-->
<!---->
<!--    <div class="w3-row-padding w3-grayscale owl-carousel" style="padding: 0 30px;">-->
<!--        --><?php //foreach ($list_teacher as $teacher) {
//            if ($teacher['gender'] == 1) {
//                $avatar = AssetApp::getImageBaseUrl() . '/icons/male_teacher_icon.png';
//            } else {
//                $avatar = AssetApp::getImageBaseUrl() . '/icons/female_teacher_icon.png';
//            }
//            $url = Yii::$app->params['assets_path']['img.user'] . $teacher['user_id'] . '.png';
//            if (Utility::check_url_file_exists($url)) {
//                $avatar = $url;
//            }
//            $url_teacher = Url::toRoute(['/gioi-thieu-giao-vien/' . Utility::rewrite($teacher['full_name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $teacher['user_id'])]);
//            ?>
<!--        <div class="w3-margin-bottom">-->
<!--            <img src="--><?php //echo $avatar ?><!--" alt="--><?php //echo $teacher['full_name'] ?><!--" style="width:100%;border-radius: 50%;">-->
<!--            <h3 class="w3-text-teal">--><?php //echo $teacher['degree'] . '. ' . $teacher['full_name'] ?><!--</h3>-->
<!--            <p class="w3-opacity">CEO & Founder</p>-->
<!--            <p>--><?php //echo Utility::truncateStringWords($teacher['intro'], 70) ?><!--</p>-->
<!--            <p><a href="--><?php //echo $url_teacher ?><!--" ><a class="w3-button w3-light-grey w3-block w3-text-teal">Xem chi tiết >></button></a></p>-->
<!--        </div>-->
<!--        --><?php //} ?>
<!--    </div>-->
</div>

<div class="w3-container w3-center intro">
    <p id="tt1">Tại sao bạn nên chọn chúng tôi?</p>
    <div class="w3-col l4 into-col-1">
        <p id="tt2">Hiện đại nhất</p>
        <p id="ct2">
            Học sinh được tự chọn chương trình học phù hợp với năng lực và dễ dàng điều chỉnh chương trình học theo điểm số kỳ vọng. Hệ thống lưu lại toàn bộ lịch sử học tập, tự động phát hiện nhanh các lỗ hổng kiến thức, và đề xuất giải pháp khắc phục cho hiệu quả ngay lập tức.
        </p>
    </div>
    <div class="w3-col l4 into-col-2">
        <p id="tt2">Thuận tiện nhất</p>
        <p id="ct2">
            Hệ thống tối ưu trên nhiều loại màn hình khác nhau bao gồm cả laptop và các thiết bị smartphone.
        </p>
    </div>
    <div class="w3-col l4 into-col-3">
        <p id="tt2">Khoa học nhất</p>
        <p id="ct2">
            Hệ thống ứng dụng những thành tựu mới nhất của tâm lí học giáo dục và khoa học nghiên cứu về não bộ. Chương trình học được thiết kế để phù hợp nhất cho việc tự học, dành riêng cho từng đối tượng học sinh.
        </p>
    </div>
</div>

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
    $(document).ready(function () {
        // Changing the defaults
        window.sr = ScrollReveal({ reset: true });
        sr.reveal('.into-col-1', { duration: 2100 });
        sr.reveal('.into-col-2', { duration: 2100 });
        sr.reveal('.into-col-3', { duration: 2100 });
        sr.reveal('.list_quiz', { duration: 1500 });
        sr.reveal('.list_events', { duration: 1500 });
//        $('.into-col-1').addClass('animated bounceInLeft');
//        $('.into-col-2').addClass('animated bounceInDown');
//        $('.into-col-3').addClass('animated bounceInRight');
    });
</script>

<style>
    #date_event {
        color: brown;
        font-size: 11px;
    }
</style>