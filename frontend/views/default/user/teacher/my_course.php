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
use frontend\models\Subject;

?>

<div class="w3-container w3-card-2 w3-white w3-margin-bottom">
    <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Khóa học của tôi</h2>
    <div class="w3-container">
        <table class="table table-condensed table-bordered table-hover table-responsive">
            <thead>
            <tr class="bg_tb">
                <th>STT</th>
                <th>Khóa học</th>
                <th>Môn học</th>
                <th>Trạng thái</th>
                <th>Phê duyệt</th>
            </tr>
            </thead>
            <tbody>
            <?php foreach ($list_course as $k => $c) {
                $course = Course::findOne(['id' => $c['course_id']]);
                ?>
                <tr>
                    <td style="text-align: center"><?php echo ($k + 1) ?></td>
                    <td><a href="#"><?php echo $course['name'] ?></a></td>
                    <td><?php echo Subject::getAttributeValue(['id' => $course['subject_id']], 'name') ?></td>
                    <td><?php echo ($course['status'] == 1) ? 'Công khai' : 'Riêng tư' ?></td>
                    <td>
                        <?php
                            if ($course['approved'] == 0) {
                                echo 'Đang chờ phê duyệt';
                            } else if ($course['approved'] == 1) {
                                echo 'Đã phê duyệt';
                            } else {
                                echo 'Đã từ chối phê duyệt';
                            }
                        ?>
                    </td>
                </tr>
            <?php } ?>
            </tbody>
        </table>
    </div>
</div>

<style>
    .active_mc {
        background: #9acfea;
        color: #0000aa;
    }
    th {
        background: #134E5E;  /* fallback for old browsers */
        background: -webkit-linear-gradient(to bottom, #71B280, #134E5E);  /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to bottom, #71B280, #134E5E); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        color: #FFF;
    }
</style>