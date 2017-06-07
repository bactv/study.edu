<?php

use yii\helpers\Html;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Lesson */

?>
<div class="lesson-update">
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>
</div>

