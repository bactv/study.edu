<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 11/05/2017
 * Time: 11:52 CH
 */

use yii\helpers\Url;
use common\components\Utility;
use kartik\icons\Icon;
use common\components\AssetApp;
use frontend\models\LessonDocument;
use frontend\models\LessonQuiz;
use frontend\models\StudentLessonQuiz;
use frontend\models\Lesson;

Icon::map($this, Icon::FA);

?>

<!-- Header -->
<header id="portfolio">
    <span class="w3-button w3-hide-large w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <div class="w3-container">
        <h3 class="w3-text-teal"><b><?php echo Icon::show('list') ?> DANH SÁCH BÀI GIẢNG</b></h3>
        <div class="w3-section w3-bottombar"></div>
    </div>
</header>

<div class="w3-container">
    <div class="list_lessons">
        <?php foreach ($lessons as $k => $lesson) {
            // danh sách tài liệu
            $documents = LessonDocument::findAll(['lesson_id' => $lesson['id']]);
            // danh sách đề thi
            $arr_quiz = LessonQuiz::findAll(['lesson_id' => $lesson['id']]);

            if ($k == 0) {
                $panel = 'success';
                $icon = 'check';
                $color = 'w3-text-green';
                $complete = true;
            } else {
                // kiểm tra bài học trước đó
                $complete = Lesson::check_user_complete_lesson($lessons[$k - 1]['id'], Yii::$app->user->identity->getId());
                if ($k == 0 || $complete) {
                    $panel = 'success';
                    $icon = 'check';
                    $color = 'w3-text-green';
                    $complete = 1;
                } else {
                    $panel = 'warning';
                    $icon = 'close';
                    $color = 'w3-text-red';
                }
            }

            ?>
            <div class="panel panel-<?php echo $panel ?>">
                <div class="panel-heading"><a href="javascript:void(0)"  data-complete_lesson="<?php echo (($complete) ? 1 : 0) ?>" data-lesson_id="<?php echo $lesson['id'] ?>" onclick="toggle_panel_body(this)"><span class="<?php echo $color ?>"><?php echo Icon::show($icon) ?> </span><span style="text-transform: uppercase;"><?php echo 'Bài: ' . ($k + 1) . ': ' . $lesson['name'] ?></span></a></div>
                <div class="panel-body" style="display: none" id="pb_<?php echo $lesson['id'] ?>">
                    <div class="w3-col l5" style="padding-right: 10px">
                        <div><a href="<?php echo Url::toRoute(['/bai-giang/' . Utility::rewrite($lesson['name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $lesson['id'])]) ?>" target="_blank" style="font-size: 1.2em;">1. BÀI GIẢNG</a></div>
                        <div>
                            <p style="font-size: 1.2em;">2. TÀI LIỆU THAM KHẢO</p>
                            <ul>
                                <?php foreach ($documents as $doc) {
                                    $path = Yii::$app->params['assets.course'] . $lesson['course_id'] . '/' . $lesson['id'] . '/documents/' . $doc['document_name'];
                                    ?>
                                    <li><a href="<?php echo $path ?>"><?php echo $doc['document_name'] ?></a></li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                    <div class="w3-col l7" style="border-left: 1px solid #ccc;padding-left: 10px">
                        <table  class="table table-condensed">
                            <thead>
                                <tr>
                                    <th>Danh sách bài kiểm tra</th>
                                    <th>Điểm</th>
                                    <th>Ngày làm bài</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php foreach ($arr_quiz as $kq => $quiz) {
                                $check = StudentLessonQuiz::get_max_grade_student($quiz['id'], Yii::$app->user->identity->getId());
                                $class_star = '';
                                if (!empty($check) && $check['pass'] == 1) {
                                    $class_star = 'w3-text-green';
                                }
                                $grade = number_format($check['grade'] / $quiz['total_question'] * 100, 2);
                                $date = !empty($check['created_time']) ? date('d.m.Y', strtotime($check['created_time'])) : 'Chưa làm';
                                ?>
                                <tr>
                                    <td><a href="<?php echo Url::toRoute(['/lesson/quiz-detail', 'id' => Utility::encrypt_decrypt('encrypt', $quiz['id'])]) ?>"><span class="<?php echo $class_star ?>"><?php echo Icon::show('star') ?></span> Bài kiểm tra <?php echo ($kq + 1) ?></a></td>
                                    <td><span><?php echo $grade . '%' ?></td>
                                    <td><span><?php echo $date ?></td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
</div>

<script>
    function toggle_panel_body(element) {
        var lesson_id = $(element).data('lesson_id');
        var complete_lesson = $(element).data('complete_lesson');
        if (complete_lesson == 1) {
            $("div#pb_" + lesson_id).toggle(200);
        } else {
            BootstrapDialog.show({
                title: 'Info!',
                message: 'Bạn chưa hoàn thành bài học trước đó. Hãy hoàn thiện để chuyển sang bài kế tiếp.'
            })
        }
    }
</script>