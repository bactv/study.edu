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
<div class="main_content">
    <div class="w3-container">
        <p id="title" class="w3-center w3-text-teal">LUYỆN THI THPT QUỐC GIA MÔN  <?php echo $subject['short_name'] ?></p>
    </div>
    <div class="w3-container">
        <div class="w3-row">
            <div class="w3-col l8 m8 s12">
                <div class="list_course">
                    <?php if (count($courses) > 0) { ?>
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
                        <div class="w3-row item">
                            <div class="">
                                <p id="course_name"><a href="<?php echo $url_course ?>"><?php echo $course['name'] ?></a></p>
                                <div class="w3-col l4 m4 s12">
                                    <div class="course_logo">
                                        <a href="<?php echo $url_course ?>"><img src="<?php echo $logo ?>" alt="<?php echo $course['name'] ?>" /></a>
                                    </div>
                                    <div class="course_teacher">
                                        <span>Giáo viên: </span><?php echo $teachers ?>
                                    </div>
                                </div>
                                <div class="w3-col l8 m8 s12">
                                    <div class="course_desc">
                                        <?php echo Utility::truncateStringWords($course['description'], 400) ?>
                                    </div>
                                    <div class="course_fee">
                                        <span><?php echo ($course['price'] > 0) ? number_format($course['price']) . ' VNĐ' : 'Miễn phí' ?></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                    <?php } else {
                        echo "<p id='null_course'>Chưa có khóa học nào</p>";
                    }?>
                </div>
            </div>

            <div class="w3-col l4 m4 s12">
                <?php if (count($list_quiz) > 0) { ?>
                <div class="box">
                    <p id="tt_box">Luyện thi trắc nghiệm</p>
                    <div class="list_quiz">
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
                </div>
                <?php } ?>
                <?php if (count($list_teacher) > 0) { ?>
                <div class="box">
                    <p id="tt_box">Giáo viên</p>
                    <div class="list_teacher">
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
                            $url_teacher = Url::toRoute(['/giao-vien/' . Utility::rewrite($teacher['full_name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $teacher['user_id'])]);
                            ?>
                            <div class="w3-row item">
                                <a href="<?php echo $url_teacher ?>">
                                    <div class="w3-col l2 m2 s2">
                                        <div class="avatar">
                                            <img src="<?php echo $avatar ?>" alt="<?php echo $teacher['full_name'] ?>"/>
                                        </div>
                                    </div>
                                    <div class="w3-col l10 m10 s10">
                                        <div class="name"><?php echo $teacher['full_name'] ?></div>
                                    </div>
                                </a>
                            </div>
                        <?php } ?>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>

<style>
    p#title {
        font-size: 1.5em;
        margin-bottom: 50px;
        position: relative;
        text-transform: uppercase;
    }
    p#title:after {
        content: "";
        position: absolute;
        bottom: -4px;
        left: 50%;
        right: 50%;
        margin-left: -100px;
        width: 210px;
        background: #009688;
        height: 2px;
    }
    .list_course {}
    .list_course .item {
        padding: 10px;
        border: 1px solid #ccc;
        margin-bottom: 20px;
        box-shadow: 0px 5px 5px 0px rgba(0,0,0,0.2);
        padding-bottom: 20px;
    }
    .list_course .item:hover {
        background: rgba(0, 165, 171, 0.03);;
    }
    .list_course .item #course_name a {
        font-size: 1.8em;
        color: teal;
        margin-bottom: 20px;
        font-family: 'Roboto Condensed',Roboto, Tahoma,Helvetica,Verdana,Arial;
    }
    .list_course .item .course_logo {
        height: 150px;
        margin-bottom: 5px;
    }
    .list_course .item .course_logo img {
        width: 100%;
        height: 100%;
    }
    .list_course .item .course_teacher {}
    .list_course .item .course_desc {
        padding-left: 10px;
    }
    .list_course .item .course_fee {
        text-align: right;
        margin-top: 30px;
    }
    .list_course .item .course_fee span {
        padding: 5px 7px;
        background: orange;
        color: #f7f7f7;
        font-weight: bold;
    }

    .box {
        margin-left: 20px;
        border: 1px solid #ccc;
        margin-bottom: 20px;
        box-shadow: 0px 5px 5px 0px rgba(0,0,0,0.2);
    }
    .box #tt_box {
        font-size: 1.3em;
        text-align: center;
        padding: 5px 0;
        background-color: rgba(8, 154, 126, 0.75);
        color: #f7f7f7;
    }
    .box .list_quiz {
        margin: 0;
        padding: 5px 10px;
    }
    .box .list_quiz .item {
        padding-bottom: 5px;
        border-bottom: 1px dotted #ccc;
        margin-bottom: 10px;
    }
    .box .list_quiz .item:last-child {
        border-bottom: none;
    }
    .box .list_quiz .item .quiz_name {}

    .box .list_teacher {}
    .box .list_teacher .item {
        padding: 0 0 5px 10px;
        border-bottom: 1px dotted #ccc;
        margin-bottom: 10px;
    }
    .box .list_teacher .item .avatar {
        height: 50px;
    }
    .box .list_teacher .item .avatar img {
        width: 50px;
        border-radius: 50%;
        height: 50px;
    }
    .box .list_teacher .item .name {
        line-height: 50px;
        margin-left: 10px;
    }
    #null_course {
        text-align: center;
        padding-top: 30px;
        font-size: 30px;
        color: #ccc;
        font-style: italic;
    }
</style>