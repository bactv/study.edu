<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\search\LessonQuizSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="lesson-quiz-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'course_id') ?>

    <?= $form->field($model, 'lesson_id') ?>

    <?= $form->field($model, 'pass_exam') ?>

    <?= $form->field($model, 'total_question') ?>

    <?php // echo $form->field($model, 'time_length') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('cms', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
