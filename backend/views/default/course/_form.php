<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\icons\Icon;
use yii\helpers\Url;
use backend\models\Teacher;
use backend\models\CourseType;
use kartik\select2\Select2;
use backend\models\Party;
use backend\models\Subject;
use yii\helpers\ArrayHelper;
use kartik\file\FileInput;
use zxbodya\yii2\tinymce\TinyMce;
use zxbodya\yii2\elfinder\TinyMceElFinder;
use kartik\date\DatePicker;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Course */
/* @var $form yii\widgets\ActiveForm */
?>

<script type="text/javascript" src="/themes/default/plugins/ckeditor/ckeditor.js"></script>

<div class="course-form">
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

        <?= $form->field($model, 'teacher_ids')->widget(Select2::className(), [
            'data' => ArrayHelper::map(Teacher::get_all_teacher_active(), 'user_id', 'full_name'),
            'options' => [
                'multiple' => true,
            ]
        ]) ?>

        <?= $form->field($model, 'party_id')->widget(Select2::className(), [
            'data' => ArrayHelper::map(Party::find()->where(['party_type_id' => 1])->all(), 'party_id', 'party_name'),
            'options' => [
                'prompt' => 'Đối tác cung cấp ...'
            ]
        ]) ?>

        <?= $form->field($model, 'course_type_id')->widget(Select2::className(), [
            'data' => ArrayHelper::map(CourseType::find()->all(), 'id', 'name'),
        ]) ?>

        <?= $form->field($model, 'subject_id')->widget(Select2::className(), [
            'data' => ArrayHelper::map(Subject::find()->all(), 'id', 'name'),
        ]) ?>
        <?= $form->field($model, 'price')->textInput(['maxlength' => 10, 'type' => 'number', 'min' => 10000]) ?>

        <?= $form->field($model, 'deadline_register')->widget(DatePicker::className(), [
            'type' => DatePicker::TYPE_COMPONENT_PREPEND,
            'options' => [
                'placeholder' => 'dd/mm/yyyy',
            ],
            'pluginOptions' => [
                'autoclose'=>true,
                'format' => 'dd/mm/yyyy'
            ]
        ]) ?>

        <?= $form->field($model, 'description')->widget(
            TinyMce::className(),
            [
                'fileManager' => [
                    'class' => TinyMceElFinder::className(),
                    'connectorRoute' => 'el-finder/connector',
                ],
            ]
        ) ?>

        <?= $form->field($model, 'limit')->textInput(['maxlength' => 10, 'type' => 'number', 'min' => 10000])->label('Giới hạn đăng ký') ?>

        <?php if (!$model->isNewRecord) { ?>
            <?= $form->field($model, 'status')->checkbox(['label' => false])->label(Yii::t('cms', 'Status')) ?>

            <?= $form->field($model, 'deleted')->checkbox(['label' => false])->label('Xóa?') ?>

            <?= $form->field($model, 'approved')->dropDownList([
                -1 => 'Từ chối phê duyệt',
                0 => 'Đang xem xét',
                1 => 'Đã phê duyệt'
            ]) ?>

        <?php } ?>

        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? Icon::show('floppy-o') . " " .  Yii::t('cms', 'Create') : Yii::t('cms', 'Update'), ['class' => 'btn btn-primary']) ?>
            <?= Html::resetButton(Icon::show('undo') . " " .  Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']); ?>
        </div>

        <?php ActiveForm::end(); ?>
    </fieldset>

</div>
