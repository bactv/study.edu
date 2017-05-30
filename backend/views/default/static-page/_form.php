<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\icons\Icon;
use zxbodya\yii2\tinymce\TinyMce;
use zxbodya\yii2\elfinder\TinyMceElFinder;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\StaticPage */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="static-page-form">

    <?php $form = ActiveForm::begin([
        'type' => ActiveForm::TYPE_HORIZONTAL,
        'formConfig' => [
            'labelSpan' => 2,
            'deviceSize' => ActiveForm::SIZE_SMALL
        ]
    ]); ?>

    <?= $form->field($model, 'type')->textInput(['maxlength' => 60])->label('Loại') ?>

    <?= $form->field($model, 'content')->widget(
        TinyMce::className(),
        [
            'fileManager' => [
                'class' => TinyMceElFinder::className(),
                'connectorRoute' => 'el-finder/connector',
            ],
        ]
    )->label('Nội dung') ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Icon::show('floppy-o') . " " .  Yii::t('cms', 'Create') : Yii::t('cms', 'Update'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Icon::show('undo') . " " .  Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']); ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
