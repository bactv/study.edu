<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\CourseNews */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Thông báo khóa học'), 'url' => ['index', 'course_id' => $model->course_id]];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="course-news-view">

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
                'attribute' => 'course_id',
                'format' => 'raw',
                'value' => function ($model) {
                    return \backend\models\Course::getAttributeValue(['id' => $model['course_id']], 'name');
                }
            ],
            'title',
            [
                'attribute' => 'content',
                'format' => 'html'
            ],
            'user_id',
            'created_time',
            'updated_time',
        ],
    ]) ?>

</div>
