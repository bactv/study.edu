<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 4:23 CH
 */

use yii\helpers\Url;
use common\components\Utility;
use common\components\AssetApp;
use frontend\models\Teacher;
use frontend\models\StudentCourse;
use frontend\models\Course;

?>

<div class="w3-container w3-card-2 w3-white w3-margin-bottom">
    <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Khóa học của tôi</h2>
    <div class="w3-container">
        <p id="title"><i class="fa fa-tag" aria-hidden="true"></i> CÁC KHÓA ĐÃ THAM GIA (<?php echo count($list_course) ?>)</p>
        <!-- First Photo Grid-->
        <div class="w3-row-padding list_course">
            <?php foreach ($list_course as $c) {
                $course = Course::findOne(['id' => $c['course_id']]);
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
                $url_course = Url::toRoute(['/detail/' . Utility::rewrite($course['name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $course['id'])]);

                $student_course = StudentCourse::findOne(['student_id' => Yii::$app->user->identity->getId(), 'course_id' => $course['id']]);
                ?>
            <div class="w3-third w3-container w3-margin-bottom">
                <div class="course_item">
                    <a href="<?php echo $url_course ?>" class="course_img"><img src="<?php echo $logo ?>" alt="Norway" /></a>
                    <div class="w3-container w3-white course_desc" style="padding: 0">
                        <p class="course_name"><a href="<?php echo $url_course ?>" class="w3-text-teal"><?php echo $course['name'] ?></a></p>
                        <p class="course_teacher">Giáo viên: <?php echo $teachers ?></p>
                    </div>
                    <div class="progress">
                        <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="<?php echo $student_course['progress'] ?>" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo $student_course['progress'] . '%' ?>;">
                            <span class="show"><?php echo $student_course['progress'] . '%' ?></span>
                        </div>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>


    <div class="w3-container">
        <p id="title"><i class="fa fa-tag" aria-hidden="true"></i> CÁC KHÓA ĐÃ HỌC THỬ (<?php echo count($try_list_course) ?>)</p>
        <!-- First Photo Grid-->
        <div class="w3-row-padding list_course">
            <?php foreach ($try_list_course as $c) {
                $course = Course::findOne(['id' => $c['course_id']]);
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
                $url_course = Url::toRoute(['/khoa-hoc/' . Utility::rewrite($course['name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $course['id'])]);

                $student_course = StudentCourse::findOne(['student_id' => Yii::$app->user->identity->getId(), 'course_id' => $course['id']]);
                ?>
                <div class="w3-third w3-container w3-margin-bottom">
                    <div class="course_item">
                        <a href="<?php echo $url_course ?>" class="course_img"><img src="<?php echo $logo ?>" alt="Norway" /></a>
                        <div class="w3-container w3-white course_desc" style="padding: 0">
                            <p class="course_name"><a href="<?php echo $url_course ?>" class="w3-text-teal"><?php echo $course['name'] ?></a></p>
                            <p class="course_teacher">Giáo viên: <?php echo $teachers ?></p>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>

<style>
    .active_mc {
        background: #9acfea;
        color: #0000aa;
    }
</style>