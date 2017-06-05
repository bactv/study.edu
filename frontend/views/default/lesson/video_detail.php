<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 1:09 CH
 */
use yii\helpers\Url;
use yii\helpers\Html;
use common\components\Utility;
use frontend\components\widgets\CommentWidget;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);
?>

<div class="video_container">
    <?php
    // ưu tiên video upload lên trước
    $link = Utility::get_embed_video_link($lesson['link_video']);
    $path = Yii::$app->params['assets_path']['assets.course'] . $lesson['course_id'] . '/' . $lesson['id'] . '/video/' . $lesson['video_name'];
    if (Utility::check_url_file_exists($path) !== false) {
        return '<video width="854" height="480" controls>
                                <source src="' . $path . '">
                                Your browser does not support the video tag.
                                </video>';
    }
    echo '<object width="854" height="480" data="' . $link . '" type="application/x-shockwave-flash"><param name="src" value="' . $link . '" /></object>';
    ?>
</div>
