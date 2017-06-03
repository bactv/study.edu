<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\icons\Icon;
use backend\models\Agreement;
use kartik\select2\Select2;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\AgreementCourseShareRate */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="agreement-course-share-rate-form">

    <?php $form = ActiveForm::begin([
        'type' => ActiveForm::TYPE_HORIZONTAL,
        'formConfig' => [
            'labelSpan' => 2,
            'deviceSize' => ActiveForm::SIZE_SMALL
        ]
    ]); ?>

    <?= $form->field($model, 'agreement_id')->textInput([
        'disabled' => 'true',
        'value' => ''
    ]) ?>

    <?= $form->field($model, 'course_id')->textInput() ?>

    <?= $form->field($model, 'share_rate')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Icon::show('floppy-o') . " " .  Yii::t('cms', 'Create') : Yii::t('cms', 'Update'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Icon::show('undo') . " " .  Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']); ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>