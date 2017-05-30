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

            ?>
            <div class="panel panel-success">
                <div class="panel-heading">
                    <span style="text-transform: uppercase;"><?php echo 'Bài: ' . ($k + 1) . ': ' . $lesson['name'] ?></span>
                    <span><a href="<?php echo Url::toRoute(['/course/live-streaming']) ?>" type="button" class="btn btn-danger"><?php echo Icon::show('video-camera') ?> Live Stream Now</a></span>
                </div>
            </div>
        <?php } ?>
    </div>
</div>