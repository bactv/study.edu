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
            $quiz = LessonQuiz::findAll(['lesson_id' => $lesson['id']]);
            ?>
            <div class="panel panel-default">
                <div class="panel-heading"><a href="javascript:void(0)" data-lesson_id="<?php echo $lesson['id'] ?>" onclick="toggle_panel_body(this)"><span class="w3-text-green"><?php echo Icon::show('check') ?> </span><span style="text-transform: uppercase;font-weight: bold"><?php echo 'Bài: ' . ($k + 1) . ': ' . $lesson['name'] ?></span></a></div>
                <div class="panel-body" style="display: none" id="pb_<?php echo $lesson['id'] ?>">
                    <div class="w3-col l5" style="padding-right: 10px">
                        <div><a href="#">Bài giảng</a></div>
                        <div>
                            <p>Tài liệu tham khảo</p>
                            <ul>
                                <li><a href="#">DC1</a></li>
                                <li><a href="#">DC1</a></li>
                                <li><a href="#">DC1</a></li>
                                <li><a href="#">DC1</a></li>
                                <li><a href="#">DC1</a></li>
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
                                <tr>
                                    <td><span class="w3-text-teal"><?php echo Icon::show('star') ?></span> Quiz 1</td>
                                    <td><span>100%</td>
                                    <td><span>20.04.2015</td>
                                </tr>
                                <tr>
                                    <td><span><?php echo Icon::show('star') ?></span> Quiz 2</td>
                                    <td><span>5%</td>
                                    <td><span>20.04.2015</td>
                                </tr>
                                <tr>
                                    <td><span><?php echo Icon::show('star') ?></span> Quiz 3</td>
                                    <td><span>40%</td>
                                    <td><span>20.04.2015</td>
                                </tr>
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
        $("div#pb_" + lesson_id).toggle(200);
    }
</script>