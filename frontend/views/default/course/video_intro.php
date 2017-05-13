<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 12:12 CH
 */
use yii\helpers\Url;
use common\components\Utility;
use kartik\icons\Icon;
use common\components\AssetApp;
use frontend\models\Teacher;
use frontend\models\Lesson;
use frontend\models\StudentCourse;

Icon::map($this, Icon::FA);

?>

<?php
    $teachers = '';
    $ex = json_decode($course['teacher_ids']);
    if (is_array($ex)) {
        foreach ($ex as $item) {
            $tch = Teacher::getAttributeValue(['user_id' => $item], 'full_name');
            $url_teacher = Url::toRoute(['/gioi-thieu-giao-vien/' . Utility::rewrite($tch) . '-cn' . Utility::encrypt_decrypt('encrypt', $item)]);
            $teachers .= '<span><a href="' . $url_teacher . '">' . $tch . '</a></span>';
        }
    }
    $teachers = substr(trim($teachers), 0, strlen(trim($teachers)) - 1);
?>


<link rel="stylesheet" type="text/css" href="/themes/default/css/course.css">

<div class="main_content">
    <div class="w3-row course_video_detail">
        <div class="box_top">
            <img src="<?php echo AssetApp::getImageBaseUrl() . '/bg/course_bg.jpg' ?>">
            <div class="info">
                <p class="w3-center w3-text-white" id="course_name"><?php echo $course['name'] ?></p>
                <p class="w3-center w3-text-white" id="course_teacher">Giáo viên: <?php echo $teachers ?></p>
                <br><br><br>
                <p class="w3-center w3-text-white" id="lesson_course">
                    <span style="margin-right: 20px"><?php echo Icon::show('book') . ' ' . count($lessons) . ' bài giảng' ?></span>
                    <span><?php echo Icon::show('book') . ' ' . count($lesson_quiz) . ' bài tập, contest' ?></span>
                </p>
            </div>
        </div>
        <div class="w3-container-fluid">
            <div class="w3-col l8 box_left">
                <div class="box_item">
                    <p id="title">Giới thiệu khóa học</p>
                    <div class="course_desc"><?php echo $course['description'] ?></div>
                </div>
                <div class="box_item">
                    <p id="title">Danh sách bài học</p>
                    <ul class="list_lesson">
                        <?php foreach ($lessons as $k => $lesson) {
                            $url = Url::toRoute(['/bai-giang/' . Utility::rewrite($lesson['name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $lesson['id'])]);
                            $public_data  = Utility::formatDataTime($lesson['publish_date'], '-', '.', false);
                            ?>
                        <a href="<?php echo $url ?>" target="_blank">
                            <li>
                                <p id="lesson_name"><?php echo 'Bài ' . ($k + 1) . ': ' . $lesson['name'] ?></p>
                                <div class="lesson_info">
                                    <span id="icon"><?php echo Icon::show('play-circle') .  ' ' . $lesson['time_length'] . ' phút' ?></span>
                                    <span id="icon"><?php echo Icon::show('users') . ' ' . $lesson['number_view'] . ' lượt xem' ?></span>
                                    <span id="icon"><?php echo Icon::show('calendar') . ' ' . $public_data ?></span>
                                </div>
                            </li>
                        </a>
                        <?php } ?>
                    </ul>
                </div>
            </div>
            <div class="w3-col l4 box_right">
                <div class="course_info">
                    <?php
                        $price = number_format($course['price']) . ' VNĐ';
                        $deadline = 'Không giới hạn';
                        if ($course['deadline_register'] != '') {
                            $deadline = Utility::formatDataTime($course['deadline_register'], '-', '.', false);
                        }
                        $total_student = count(StudentCourse::findAll(['course_id' => $course['id']]));
                        $user_id = !empty(Yii::$app->user->identity) ? Yii::$app->user->identity->getId() : 0;
                        $check_student_count = false;
                        if ($user_id > 0) {
                            $c = StudentCourse::findOne(['course_id' => $course['id'], 'student_id' => $user_id]);
                            if (!empty($c)) {
                                $check_student_count = true;
                            }
                        }
                    ?>
                    <p class="w3-text-red" id="course_fee"><?php echo $price ?></p>
                    <p id="span"><?php echo Icon::show('calendar') ?> Hạn đăg ký: <?php echo $deadline ?></p>
                    <p id="span"><?php echo Icon::show('users') ?> Số học sinh đăng ký: <?php echo number_format($total_student) ?></p>
                    <?php if ($check_student_count) { ?>
                        <p class="btn_reg"><a href="<?php echo Url::toRoute(['/course/detail']) ?>" role="button" class="btn btn-warning" id="btn_reg">Vào lớp <?php echo Icon::show('angle-double-right ') ?></a></p>
                    <?php } else { ?>
                        <p class="btn_reg"><a href="" role="button" class="btn btn-warning" id="btn_reg"><?php echo Icon::show('cart-arrow-down') ?> Đăng ký khóa học</a></p>
                    <?php } ?>
                </div>

                <div class="other_course">
                    <p id="title">Khóa học khác</p>
                    <div class="w3-row item">
                        <a href="#">
                            <div class="w3-col l6 course_logo">
                                <img src="<?php echo AssetApp::getImageBaseUrl() . '/icons/course_logo.png' ?>">
                            </div>
                            <div class="w3-col l6 info">
                                <div class="course_name">PEN-I VẬT LÍ (TB-TBK) - THẦY PHẠM VĂN TÙNG</div>
                                <div class="course_free">Học phí: <b>500.000 đ</b> </div>
                            </div>
                        </a>
                    </div>
                    <div class="w3-row item">
                        <a href="#">
                            <div class="w3-col l6 course_logo">
                                <img src="<?php echo AssetApp::getImageBaseUrl() . '/icons/course_logo.png' ?>">
                            </div>
                            <div class="w3-col l6 info">
                                <div class="course_name">PEN-I VẬT LÍ (TB-TBK) - THẦY PHẠM VĂN TÙNG</div>
                                <div class="course_free">Học phí: <b>500.000 đ</b> </div>
                            </div>
                        </a>
                    </div>
                    <div class="w3-row item">
                        <a href="#">
                            <div class="w3-col l6 course_logo">
                                <img src="<?php echo AssetApp::getImageBaseUrl() . '/icons/course_logo.png' ?>">
                            </div>
                            <div class="w3-col l6 info">
                                <div class="course_name">PEN-I VẬT LÍ (TB-TBK) - THẦY PHẠM VĂN TÙNG</div>
                                <div class="course_free">Học phí: <b>500.000 đ</b> </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
//        $(".box_right").stick_in_parent();
    });
</script>