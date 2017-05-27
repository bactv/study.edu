<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\icons\Icon;
use kartik\file\FileInput;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\ImportFile */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="import-file-form">

    <?php $form = ActiveForm::begin([
        'type' => ActiveForm::TYPE_HORIZONTAL,
        'formConfig' => [
            'labelSpan' => 2,
            'deviceSize' => ActiveForm::SIZE_SMALL
        ],
        'options' => [
                'enctype' => 'multipart/form-data'
        ]
    ]); ?>

    <?= $form->field($model, 'file_name')->textInput()->label('Tên import') ?>

    <?= $form->field($model, 'type')->dropDownList(Yii::$app->params['type_file_import'])->label(Yii::t('cms', 'Type File Import')) ?>

    <?= $form->field($model, 'file')->widget(FileInput::className()) ?>

    <div class="form-group item_file">
        <p><b>Mẫu file import: </b></p>
        <p>1. Hợp đồng: <a href="<?php echo Yii::$app->params['assets_path']['assets_common'] . 'mau_import_hop_dong.xlsx' ?>">mau_import_hop_dong.xlsx</a> </p>
        <p>2. Phụ lục Hợp đồng: <a href="<?php echo Yii::$app->params['assets_path']['assets_common'] . 'mau_import_hop_dong.xlsx' ?>">mau_import_hop_dong.xlsx</a> </p>
        <p>3. Chuyên đề môn học: <a href="<?php echo Yii::$app->params['assets_path']['assets_common'] . 'mau_import_chuyen_de_mon_hoc.xlsx' ?>">mau_import_chuyen_de_mon_hoc.xlsx</a> </p>
    </div>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Icon::show('floppy-o') . " " .  Yii::t('cms', 'Create') : Yii::t('cms', 'Update'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Icon::show('undo') . " " .  Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']); ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

<style>
    .item_file {
        border: 1px solid #ccc;
        padding: 10px;
        border-radius: 4px;
        background: #ccc;
        font-size: 12px;
    }
</style>
