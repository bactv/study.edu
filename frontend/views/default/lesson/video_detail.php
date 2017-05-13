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
    <object width="560" height="315">
        <param name="movie" value="http://www.youtube.com/v/aBcDeFg?hl=en_US&amp;version=3"></param>
        <param name="allowFullScreen" value="true"></param>
        <param name="allowscriptaccess" value="always"></param>
        <embed src="http://www.youtube.com/v/aBcDeFg?hl=en_US&amp;version=3" type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true"></embed>
    </object>
</div>
