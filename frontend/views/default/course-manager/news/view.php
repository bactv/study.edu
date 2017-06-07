<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 07/06/2017
 * Time: 12:54 CH
 */

use yii\widgets\DetailView;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

?>
<header id="portfolio">
    <div class="w3-container">
        <h3 class="w3-text-teal"><b><button class="w3-button w3-large" onclick="w3_open2()"><?php echo Icon::show('list') ?></button> THÔNG BÁO: <?php echo $model['title'] ?></b></h3>
        <div class="w3-section w3-bottombar"></div>
    </div>
</header>

<div class="w3-container">
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            [
                'attribute' => 'course_id',
                'format' => 'raw',
                'value' => function ($model) {
                    return \backend\models\Course::getAttributeValue(['id' => $model['course_id']], 'name');
                }
            ],
            'title',
            [
                'attribute' => 'content',
                'format' => 'html'
            ],
            'user_id',
            'created_time',
            'updated_time',
        ],
    ]) ?>
</div>
