<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\icons\Icon;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use backend\models\PartyType;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Party */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="party-form">

    <?php $form = ActiveForm::begin([
        'type' => ActiveForm::TYPE_HORIZONTAL,
        'formConfig' => [
            'labelSpan' => 2,
            'deviceSize' => ActiveForm::SIZE_SMALL
        ]
    ]); ?>

    <?= $form->field($model, 'party_name')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'party_type_id')->widget(Select2::className(), [
        'data' => ArrayHelper::map(PartyType::find()->all(), 'id', 'name'),
    ])->label(Yii::t('cms', 'Party Types')) ?>

    <?= $form->field($model, 'party_rep_title')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'party_address')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'party_tax_code')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'party_phone')->textInput(['maxlength' => 255]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Icon::show('floppy-o') . " " .  Yii::t('cms', 'Create') : Yii::t('cms', 'Update'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Icon::show('undo') . " " .  Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']); ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
