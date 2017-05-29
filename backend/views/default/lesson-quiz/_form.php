<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\LessonQuiz */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="lesson-quiz-form">

    <?php $form = ActiveForm::begin([
        'type' => ActiveForm::TYPE_HORIZONTAL,
        'formConfig' => [
            'labelSpan' => 2,
            'deviceSize' => ActiveForm::SIZE_SMALL
        ]
    ]); ?>

    <?= $form->field($model, 'pass_exam')->textInput([
            'type' => 'number',
            'placeholder' => 'Số câu đúng / Tổng số câu'
    ])->label('Điều kiện vượt qua') ?>

    <?= $form->field($model, 'total_question')->textInput(['type' => 'number'])->label('Tổng số câu hỏi') ?>

    <?= $form->field($model, 'time_length')->textInput(['type' => 'number'])->label('Thời gian trả lời') ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Icon::show('floppy-o') . " " .  Yii::t('cms', 'Create') : Yii::t('cms', 'Update'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Icon::show('undo') . " " .  Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']); ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
