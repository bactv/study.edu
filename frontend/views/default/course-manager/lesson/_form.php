<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\icons\Icon;
use mihaildev\ckeditor\CKEditor;
use kartik\file\FileInput;
use kartik\date\DatePicker;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Lesson */
/* @var $form yii\widgets\ActiveForm */
?>
<!-- Header -->
<header id="portfolio">
    <span class="w3-button w3-hide-large w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <div class="w3-container">
        <h3 class="w3-text-teal"><b><?php echo Icon::show('list') ?> CẬP NHẬT BÀI GIẢNG: <?php echo $model['name'] ?></b></h3>
        <div class="w3-section w3-bottombar"></div>
    </div>
</header>

<div class="w3-container">
    <div class="lesson-form">

        <?php $form = ActiveForm::begin([
            'type' => ActiveForm::TYPE_HORIZONTAL,
            'formConfig' => [
                'labelSpan' => 2,
                'deviceSize' => ActiveForm::SIZE_SMALL
            ],
            'options' => ['enctype' => 'multipart/form-data']
        ]); ?>

        <?= $form->field($model, 'name')->textInput(['maxlength' => 255]) ?>

        <?= $form->field($model, 'description')->widget(CKEditor::className(),[
            'editorOptions' => [
                'preset' => 'basic',
                'inline' => false,
            ],
        ]); ?>


        <?= $form->field($model, 'link_video')->textInput(['maxlength' => 255]) ?>

        <?= $form->field($model, 'video')->widget(FileInput::className()) ?>

        <?php if ((isset($model['approved']) && $model['approved'] != 1) || $model->isNewRecord) { ?>
            <?= $form->field($model, 'publish_date')->widget(DatePicker::className(), [
                'type' => DatePicker::TYPE_COMPONENT_PREPEND,
                'value' => date('d/m/Y'),
                'pluginOptions' => [
                    'autoclose' => true,
                    'format' => 'dd/mm/yyyy'
                ]
            ]) ?>
        <?php } ?>

        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? Icon::show('floppy-o') . " " .  Yii::t('cms', 'Create') : Yii::t('cms', 'Update'), ['class' => 'btn btn-primary']) ?>
            <?= Html::resetButton(Icon::show('undo') . " " .  Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']); ?>
        </div>

        <?php ActiveForm::end(); ?>

    </div>
</div>

<style>
    form {
        padding: 10px;
    }
    form .control-label {
        text-align: left !important;
    }
    .form-horizontal .form-group {
        margin: 0;
    }
</style>
