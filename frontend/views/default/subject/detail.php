<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 10:16 CH
 */
use common\components\AssetApp;
use common\components\Utility;
use kartik\icons\Icon;
use frontend\models\Teacher;
use yii\helpers\Url;

Icon::map($this, Icon::FA);
?>

<div class="w3-container main_content prep-subject">
    <p id="title" class="w3-center w3-text-teal">Ôn thi THPT Quốc Gia môn <?php echo $subject['short_name'] ?></p>

    <div class="w3-row-padding list_quiz">
        <p id="category">Thi trắc nghiệm online</p>
        <div class="box">
            <div class="w3-col l6 m6 s12">
                <ul style="border-right: 1px solid #ccc;">
                    <li><a href="#">Thi Online Đề thi thử môn Hóa lần 2 - THPT Chuyên Hạ Long - Quảng Ninh</a></li>
                    <li><a href="#">Thi Online Đề thi thử môn Hóa lần 2 - THPT Chuyên Hạ Long - Quảng Ninh</a></li>
                    <li><a href="#">Thi Online Đề thi thử môn Hóa lần 2 - THPT Chuyên Hạ Long - Quảng Ninh</a></li>
                    <li><a href="#">Thi Online Đề thi thử môn Hóa lần 2 - THPT Chuyên Hạ Long - Quảng Ninh</a></li>
                    <li><a href="#">Thi Online Đề thi thử môn Hóa lần 2 - THPT Chuyên Hạ Long - Quảng Ninh</a></li>
                </ul>
            </div>
            <div class="w3-col l6 m6 s12">
                <ul>
                    <li><a href="#">Thi Online Đề thi thử môn Hóa lần 2 - THPT Chuyên Hạ Long - Quảng Ninh</a></li>
                    <li><a href="#">Thi Online Đề thi thử môn Hóa lần 2 - THPT Chuyên Hạ Long - Quảng Ninh</a></li>
                    <li><a href="#">Thi Online Đề thi thử môn Hóa lần 2 - THPT Chuyên Hạ Long - Quảng Ninh</a></li>
                    <li><a href="#">Thi Online Đề thi thử môn Hóa lần 2 - THPT Chuyên Hạ Long - Quảng Ninh</a></li>
                    <li><a href="#">Thi Online Đề thi thử môn Hóa lần 2 - THPT Chuyên Hạ Long - Quảng Ninh</a></li>
                </ul>
            </div>
        </div>
    </div>

    <?php if (isset($courses) && count($courses) > 0) { ?>
    <div class="w3-row-padding list_course">
        <p id="category">Khóa học trực tuyến</p>

        <?php foreach ($courses as $course) {
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
        <p class="w3-center"><a href="<?php echo Yii::$app->request->getBaseUrl() . '?page=' . ($page + 1) ?>"><button id="view_more" class="w3-button w3-center w3-teal w3-hover-teal w3-hover-text-light-gray"><?php echo Icon::show('search-plus') ?> Xem thêm</button></a></p>
    <?php } ?>

</div>

<style>
    .prep-subject {
        font-family: 'Taviraj', serif;
        max-width: 1150px;
        margin: 0 auto;
    }
    .prep-subject p#title {
        font-size: 2.0em;
        margin-bottom: 50px;
        position: relative;
    }
    .prep-subject p#title:after {
        content: "";
        position: absolute;
        bottom: -4px;
        left: 50%;
        margin-left: -100px;
        width: 210px;
        background: #009688;
        height: 2px;
    }
    .prep-subject .list_quiz {
        margin-bottom: 30px;
        font-size: 15px;
        border: 1px dotted #ccc;
        background-color: #f3f3f3;
        padding-bottom: 20px;
    }
    .prep-subject .list_quiz p#category {
        font-size: 1.4em;
        color: #009688;
        text-align: center;
        margin-bottom: 20px;
        padding-top: 20px;
    }
    .prep-subject .list_quiz .box {}
    .prep-subject .list_quiz .box ul {

    }
    .prep-subject .list_quiz .box ul li {}
    .prep-subject .list_quiz .box ul li a {}

    .prep-subject .list_course {}
    .prep-subject .list_course p#category{
        font-size: 1.4em;
        color: #009688;
        text-align: center;
        margin-bottom: 20px;
        padding-top: 20px;
    }
</style>