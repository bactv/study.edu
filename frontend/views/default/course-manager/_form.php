<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\icons\Icon;
use yii\helpers\Url;
use frontend\models\Teacher;
use frontend\models\CourseType;
use kartik\select2\Select2;
use frontend\models\Subject;
use yii\helpers\ArrayHelper;
use kartik\file\FileInput;
use mihaildev\ckeditor\CKEditor;
use common\components\AssetApp;
use kartik\date\DatePicker;
use yii\bootstrap\Alert;
use common\components\Utility;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Course */
/* @var $form yii\widgets\ActiveForm */
?>


    <?php if (Yii::$app->session->hasFlash('error')) { ?>
        <div class="error" style="margin-bottom: 20px;padding: 20px">
            <?php echo Alert::widget([
                'options' => ['class' => 'alert-danger'],
                'body' => Yii::$app->session->getFlash('error'),
            ]); ?>
        </div>
    <?php } ?>
    <?php if (Yii::$app->session->hasFlash('success')) { ?>
        <div class="error" style="margin-bottom: 20px;padding: 20px">
        <?php echo Alert::widget([
            'options' => ['class' => 'alert-success'],
            'body' => Yii::$app->session->getFlash('success'),
        ]); ?>
        </div>
    <?php } ?>

<div class="course-form" style="padding: 20px">
    <fieldset>
        <legend><?php echo ($model->isNewRecord)  ? 'Tạo khóa học mới' : 'Chỉnh sửa khóa học' ?></legend>
        <?php $form = ActiveForm::begin([
            'type' => ActiveForm::TYPE_HORIZONTAL,
            'formConfig' => [
                'labelSpan' => 3,
                'deviceSize' => ActiveForm::SIZE_SMALL
            ],
            'options' => ['enctype' => 'multipart/form-data']
        ]); ?>

        <?= $form->field($model, 'name')->textInput() ?>

        <?= $form->field($model, 'logo')->widget(FileInput::className(), [

        ]) ?>
        <div class="form-group">
            <div class="control-label col-sm-3"></div>
            <div class="control-label col-sm-9">
                <p>Mặc định</p>
                <div class="img">
                    <?php
                    $img = AssetApp::getImageBaseUrl() . '/icons/img_course_default.jpg';
                    if (isset($model['id']) && $model['id'] > 0) {
                        $path = Yii::$app->params['assets_path']['img.course'] . $model['id'] . '.png';
                        if (Utility::check_url_file_exists($path) !== false) {
                            $img = $path;
                        }
                    }
                    ?>
                    <img src="<?php echo $img ?>" style="width: 200px;height: 150px;margin-bottom: 20px;" />
                </div>
            </div>
        </div>

        <?= $form->field($model, 'course_type_id')->widget(Select2::className(), [
            'data' => ArrayHelper::map(CourseType::find()->all(), 'id', 'name'),
        ]) ?>

        <?= $form->field($model, 'subject_id')->widget(Select2::className(), [
            'data' => ArrayHelper::map(Subject::find()->all(), 'id', 'name'),
        ]) ?>
        <?= $form->field($model, 'price')->textInput(['maxlength' => 10, 'type' => 'number', 'min' => 10000]) ?>

        <?= $form->field($model, 'deadline_register')->widget(DatePicker::className(), [
            'type' => DatePicker::TYPE_COMPONENT_PREPEND,
            'value' => date('d/m/Y'),
            'pluginOptions' => [
                'autoclose' => true,
                'format' => 'dd/mm/yyyy'
            ]
        ]) ?>

        <?= $form->field($model, 'description')->widget(CKEditor::className(),[
            'editorOptions' => [
                'preset' => 'basic',
                'inline' => false,
            ],
        ]); ?>

        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? Icon::show('floppy-o') . " " .  Yii::t('cms', 'Create') : Yii::t('cms', 'Update'), ['class' => 'btn btn-primary']) ?>
            <?= Html::resetButton(Icon::show('undo') . " " .  Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']); ?>
        </div>

        <?php ActiveForm::end(); ?>
    </fieldset>

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