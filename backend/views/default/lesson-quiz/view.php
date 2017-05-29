<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\icons\Icon;
use yii\helpers\Url;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\LessonQuiz */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Lesson Quizzes'), 'url' => ['index', 'lesson_id' => $model->lesson_id]];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lesson-quiz-view">

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
        <?= Html::a(Icon::show('question-circle') . " " .Yii::t('cms', 'Quản lý câu hỏi'), Url::toRoute(['lesson-quiz-question/index', 'lesson_quiz_id' => $model->id]), ['class' => 'btn btn-info']) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            [
                'attribute' => 'course_id',
                'label' => 'Khóa học',
                'format' => 'raw',
                'value' => function ($model) {
                    return \backend\models\Course::getAttributeValue(['id' => $model['course_id']], 'name');
                }
            ],
            [
                'attribute' => 'lesson_id',
                'label' => 'Bài giảng',
                'format' => 'raw',
                'value' => function ($model) {
                    return \backend\models\Lesson::getAttributeValue(['id' => $model['lesson_id']], 'name');
                }
            ],
            [
                'attribute' => 'pass_exam',
                'label' => 'Điều kiện qua',
                'value' => function ($model) {
                    return $model['pass_exam'] . '/' . $model['total_question'];
                }
            ],
            [
                'attribute' => 'total_question',
                'label' => 'Tổng số câu hỏi',
            ],
            [
                'attribute' => 'time_length',
                'label' => 'Thời gian trả lời',
            ],
        ],
    ]) ?>

</div>

<style>
    .table > tbody > tr > th {
        width: 20%;
    }
</style>