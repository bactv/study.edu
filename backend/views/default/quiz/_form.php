<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\icons\Icon;
use kartik\select2\Select2;
use backend\models\QuizType;
use backend\models\Topic;
use yii\helpers\ArrayHelper;
use zxbodya\yii2\tinymce\TinyMce;
use zxbodya\yii2\elfinder\TinyMceElFinder;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Quiz */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="quiz-form">
    <fieldset>
        <legend><?php  echo (!$model->isNewRecord) ? 'Cập nhập đề thi' : 'Tạo mới đề thi'?></legend>

        <?php $form = ActiveForm::begin([
            'type' => ActiveForm::TYPE_HORIZONTAL,
            'formConfig' => [
                'labelSpan' => 2,
                'deviceSize' => ActiveForm::SIZE_SMALL
            ]
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

        <?= $form->field($model, 'quiz_type_id')->widget(Select2::className(), [
            'data' => ArrayHelper::map(QuizType::find()->all(), 'id', 'name')
        ]) ?>

        <?= $form->field($model, 'subject_id')->widget(Select2::className(), [
            'data' => ArrayHelper::map(\backend\models\Subject::find()->all(), 'id', 'name'),
        ]) ?>

        <?= $form->field($model, 'time_length')->textInput([
            'type' => 'number',
            'max' => 200,
            'min' => 10
        ]) ?>

        <?= $form->field($model, 'level')->dropDownList([ 'easy' => 'Easy', 'normal' => 'Normal', 'hard' => 'Hard', ], ['prompt' => '']) ?>

        <?= $form->field($model, 'status')->checkbox(['label' => false])->label(Yii::t('cms', 'Status')) ?>

        <?= $form->field($model, 'privacy')->dropDownList([
            0 => 'Công khai',
            1 => 'Yêu cầu đăng nhập'
        ]) ?>

        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? Icon::show('floppy-o') . " " .  Yii::t('cms', 'Create') : Yii::t('cms', 'Update'), ['class' => 'btn btn-primary']) ?>
            <?= Html::resetButton(Icon::show('undo') . " " .  Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']); ?>
        </div>

        <?php ActiveForm::end(); ?>
    </fieldset>
</div>
