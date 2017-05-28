<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\icons\Icon;
use zxbodya\yii2\tinymce\TinyMce;
use zxbodya\yii2\elfinder\TinyMceElFinder;
use kartik\file\FileInput;
use kartik\date\DatePicker;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Lesson */
/* @var $form yii\widgets\ActiveForm */
?>

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


    <?= $form->field($model, 'description')->widget(
        TinyMce::className(),
        [
            'fileManager' => [
                'class' => TinyMceElFinder::className(),
                'connectorRoute' => 'el-finder/connector',
            ],
        ]
    ) ?>


    <?= $form->field($model, 'link_video')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'video')->widget(FileInput::className()) ?>

    <?= $form->field($model, 'time_length')->textInput() ?>

    <?= $form->field($model, 'sort')->textInput(['type' => 'number']) ?>

    <?= $form->field($model, 'status')->checkbox(['label' => false])->label(Yii::t('cms', 'Status')) ?>

    <?= $form->field($model, 'publish_date')->widget(DatePicker::className(), [
        'type' => DatePicker::TYPE_COMPONENT_PREPEND,
        'value' => date('d/m/Y'),
        'pluginOptions' => [
            'autoclose' => true,
            'format' => 'dd/mm/yyyy'
        ]
    ]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Icon::show('floppy-o') . " " .  Yii::t('cms', 'Create') : Yii::t('cms', 'Update'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Icon::show('undo') . " " .  Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']); ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
