<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\icons\Icon;
use kartik\select2\Select2;
use backend\models\AdminGroup;
use yii\helpers\ArrayHelper;
use kartik\date\DatePicker;
use kartik\file\FileInput;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Admin */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="admin-form">

    <?php $form = ActiveForm::begin([
        'type' => ActiveForm::TYPE_HORIZONTAL,
        'formConfig' => [
            'labelSpan' => 2,
            'deviceSize' => ActiveForm::SIZE_SMALL
        ],
        'options' => [
            'enctype' => 'multipart/form-data',
            'enableAjaxValidation' => true,
            'enableClientValidation' => true,
            'clientOptions' => [
                'validateOnSubmit'=>true,
            ]
        ],
    ]); ?>

    <?= $form->field($model, 'username')->textInput(['maxlength' => 50, 'disabled' => (!$model->isNewRecord ? true : false)]) ?>

    <?php echo $form->field($model, 'password')->passwordInput(['maxlength' => 255, 'value' => '']); ?>

    <?= $form->field($model, 'full_name')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => 100]) ?>

    <?= $form->field($model, 'profession')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'birthday')->widget(DatePicker::className(), [
        'type' => DatePicker::TYPE_COMPONENT_PREPEND,
        'options' => [
            'placeholder' => 'dd/mm/yyyy',
        ],
        'pluginOptions' => [
            'autoclose'=>true,
            'format' => 'dd/mm/yyyy'
        ]
    ]) ?>

    <?php if (Yii::$app->user->identity->getUsername() == 'admin') { ?>
        <?= $form->field($model, 'group_ids')->widget(Select2::className(), [
            'data' => ArrayHelper::map(AdminGroup::getAllAdminGroups(['status' => 1]), 'id', 'name'),
            'options' => [
                'multiple' => true,
                'placeholder' => 'Chọn danh sách nhóm quyền ...',
            ],
            'pluginOptions' => [
                'allowClear' => true
            ],
        ]) ?>
    <?php } ?>

    <?= $form->field($model, 'status')->checkbox(['label' => false])->label(Yii::t('cms', 'Status')) ?>

    <?= $form->field($model, 'avatar')->widget(FileInput::className(), [
        'options'=>[
            'multiple' => false
        ],
        'pluginOptions' => [
        ]
    ]) ?>


    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Icon::show('floppy-o') . " " .  Yii::t('cms', 'Create') : Yii::t('cms', 'Update'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Icon::show('undo') . " " .  Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']); ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
