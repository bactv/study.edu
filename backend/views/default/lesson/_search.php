<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\search\LessonSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="lesson-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'course_id') ?>

    <?= $form->field($model, 'name') ?>

    <?= $form->field($model, 'description') ?>

    <?= $form->field($model, 'link_video') ?>

    <?php // echo $form->field($model, 'time_length') ?>

    <?php // echo $form->field($model, 'sort') ?>

    <?php // echo $form->field($model, 'number_view') ?>

    <?php // echo $form->field($model, 'status') ?>

    <?php // echo $form->field($model, 'publish_date') ?>

    <?php // echo $form->field($model, 'created_time') ?>

    <?php // echo $form->field($model, 'updated_time') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('cms', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
