<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Quiz */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Quizzes'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="quiz-view">

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
        <?= Html::a(Icon::show('question-circle ') . " " .Yii::t('cms', 'Quản lý câu hỏi'), ['question', 'quiz_id' => $model->id], ['class' => 'btn btn-info']) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            [
                'attribute' => 'description',
                'format' => 'html'
            ],
            [
                'attribute' => 'quiz_type_id',
                'format' => 'raw',
                'value' => function ($model) {
                    return \backend\models\QuizType::getAttributeValue(['id' => $model['quiz_type_id']], 'name');
                }
            ],
            [
                'attribute' => 'subject_id',
                'format' => 'raw',
                'value' => function ($model) {
                    return \backend\models\Subject::getAttributeValue(['id' => $model['subject_id']], 'name');
                }
            ],
            [
                'attribute' => 'topic_id',
                'format' => 'raw',
                'value' => function ($model) {
                    return \backend\models\Topic::getAttributeValue(['id' => $model['topic_id']], 'name');
                }
            ],
            [
                'attribute' => 'time_length',
                'format' => 'raw',
                'value' => function ($model) {
                    return $model['time_length'] . ' phút';
                }
            ],
            'level',
            'total_question',
            [
                'attribute' => 'status',
                'format' => 'raw',
                'value' => function ($model) {
                    return $model['status'] == 1 ? 'Active' : 'Inactive';
                }
            ],
            [
                'attribute' => 'privacy',
                'format' => 'raw',
                'value' => function ($model) {
                    return $model['privacy'] == 1 ? 'Yêu cầu đăng nhập' : 'Tự do';
                }
            ],
            'created_time',
            'updated_time',
        ],
    ]) ?>

</div>

<style>
    .table > tbody > tr > th {
        width: 20%;
    }
</style>