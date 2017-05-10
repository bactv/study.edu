<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\icons\Icon;
use yii\helpers\Url;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Question */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="question-form">
    <fieldset>
        <legend><?php echo ($model->isNewRecord) ? 'Tạo mới câu hỏi' : 'Cập nhật câu hỏi' ?></legend>
        <?php $form = ActiveForm::begin([
            'type' => ActiveForm::TYPE_HORIZONTAL,
            'formConfig' => [
                'labelSpan' => 2,
                'deviceSize' => ActiveForm::SIZE_SMALL
            ]
        ]); ?>

        <?= $form->field($model, 'content')->textInput(['maxlength' => 500]) ?>

        <?= $form->field($model, 'solution')->textInput(['maxlength' => 500]) ?>

        <?= $form->field($model, 'status')->checkbox(['label' => false])->label(Yii::t('cms', 'Status')) ?>

        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? Icon::show('floppy-o') . " " .  Yii::t('cms', 'Create') : Yii::t('cms', 'Update'), ['class' => 'btn btn-primary']) ?>
            <?= Html::resetButton(Icon::show('undo') . " " .  Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']); ?>
        </div>

        <?php ActiveForm::end(); ?>
    </fieldset>
    <br><br><br>
    <?php echo Html::a(Icon::show('spinner fa-pulse') . ' Reload', 'javascript:void(0)', ['class' => 'btn btn-warning', 'onclick' => 'get_list_answer()']) ?>
    <br><br>
    <fieldset>
        <legend>Đáp án câu hỏi</legend>
        <div class="list_answer"></div>
    </fieldset>

</div>

<script>
    $(window).on('load', function () {
        get_list_answer();
    });

    function get_list_answer() {
        var question_id = '<?php echo $model['id'] ?>';
        $.ajax({
            method: 'GET',
            data: {'question_id' : question_id},
            url: '<?php echo Url::toRoute(['/question-answer/list-answer']) ?>',
            success: function (data) {
                $(".list_answer").html(data);
            }
        });
    }
</script>
