<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\icons\Icon;
use zxbodya\yii2\tinymce\TinyMce;
use zxbodya\yii2\elfinder\TinyMceElFinder;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\LessonQuizQuestion */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="lesson-quiz-question-form">

    <?php $form = ActiveForm::begin([
        'type' => ActiveForm::TYPE_HORIZONTAL,
        'formConfig' => [
            'labelSpan' => 2,
            'deviceSize' => ActiveForm::SIZE_SMALL
        ]
    ]); ?>

    <?= $form->field($model, 'question')->widget(
        TinyMce::className(),
        [
            'fileManager' => [
                'class' => TinyMceElFinder::className(),
                'connectorRoute' => 'el-finder/connector',
            ],
        ]
    )->label('Câu hỏi') ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Icon::show('floppy-o') . " " .  Yii::t('cms', 'Create') : Yii::t('cms', 'Update'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Icon::show('undo') . " " .  Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']); ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

<?php if (!$model->isNewRecord) { ?>

<div>
    <br><br>
    <fieldset>
        <legend>Đáp án câu hỏi</legend>
        <p><?php echo Html::a(Icon::show('spinner fa-pulse') . ' Reload', 'javascript:void(0)', ['class' => 'btn btn-warning', 'onclick' => 'get_list_answer()']) ?></p>
        <div class="list_answer"></div>
    </fieldset>
</div>

    <script src="/themes/default/js/jquery.min.js"></script>

    <script>
        $(window).on('load', function () {
            get_list_answer();
        });

        function get_list_answer() {
            var question_id = '<?php echo $model['id'] ?>';
            $.ajax({
                method: 'GET',
                data: {'question_id' : question_id},
                url: '<?php echo \yii\helpers\Url::toRoute(['/lesson-quiz-question-answer/list-answer']) ?>',
                success: function (data) {
                    $(".list_answer").html(data);
                }
            });
        }
    </script>

<?php } ?>
