<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\LessonQuizQuestion */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Lesson Quiz Questions'), 'url' => ['index', 'lesson_quiz_id' => $model->quiz_id]];
$this->params['breadcrumbs'][] = $this->title;
?>
<script>
    var js = document.createElement("script");
    js.type = "text/javascript";
    js.src = "WIRISplugins.js?viewer=image";
    document.head.appendChild(js);
</script>
<div class="lesson-quiz-question-view">

    <h1 style="margin-bottom: 10px"><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Icon::show('pencil-square-o') . " " .Yii::t('cms', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Icon::show('trash-o') . " " .Yii::t('cms', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('cms', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>


    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            [
                'attribute' => 'question',
                'format' => 'raw'
            ],
            [
                'attribute' => 'id',
                'label' => 'Đáp án',
                'format' => 'raw',
                'value' => function ($model) {
                    $str = '';
                    $answers = \backend\models\LessonQuizQuestionAnswer::findAll(['question_id' => $model['id']]);
                    $arr = ['A', 'B', 'C', 'D', 'E', 'F', 'G'];
                    foreach ($answers as $k => $ans) {
                        $c = ($ans->is_true == 1) ? 'c_true' : 'c_false';
                        $str .= '<div class="' . $c . '">' . $arr[$k] . '. ' . $ans->ans_content . '</div>';
                    }
                    return $str;
                }
            ]
        ],
    ]) ?>

</div>

<style>
    div.c_true {
        color: #00aa00;
        font-weight: bold;
    }
</style>
