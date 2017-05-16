<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 16/05/2017
 * Time: 10:15 CH
 */
use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\icons\Icon;
use kartik\file\FileInput;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\LessonDocument */
/* @var $form yii\widgets\ActiveForm */
?>
<header id="portfolio">
    <span class="w3-button w3-hide-large w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <div class="w3-container">
        <h4 class="w3-text-teal"><b><?php echo Icon::show('list') ?> UPLOAD TÀI LIỆU: <?php echo $lesson['name'] ?></b></h4>
        <div class="w3-section w3-bottombar"></div>
    </div>
</header>


<div class="w3-container">
    <div class="lesson-document-form">

        <?php $form = ActiveForm::begin([
            'type' => ActiveForm::TYPE_HORIZONTAL,
            'formConfig' => [
                'labelSpan' => 2,
                'deviceSize' => ActiveForm::SIZE_SMALL
            ],
            'options' => ['enctype' => 'multipart/form-data']
        ]); ?>

        <?= $form->field($model, 'file[]')->widget(FileInput::className(), [
            'options' => ['multiple' => true]
        ]) ?>

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
