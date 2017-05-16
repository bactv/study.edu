<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\icons\Icon;
use common\components\AssetApp;
use common\components\Utility;
use yii\helpers\Url;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Lesson */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Lessons'), 'url' => ['index', 'course_id' => $model->course_id]];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lesson-view">

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

    <p style="margin-top: 20px">
        <?= Html::a(Icon::show('pencil-square-o') . " " .Yii::t('cms', 'Quản lý tài liệu tham khảo'), Url::toRoute(['/lesson-document', 'lesson_id' => $model->id]) , ['class' => 'btn btn-info']) ?>
        <?= Html::a(Icon::show('pencil-square-o') . " " .Yii::t('cms', 'Quản lý đề kiểm tra'), Url::toRoute(['/lesson-quiz', 'lesson_id' => $model->id]) , ['class' => 'btn btn-warning']) ?>
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
            'name',
            'description:ntext',
            [
                'attribute' => 'link_video',
                'format' => 'raw',
                'value' => function ($model) {
                    // ưu tiên video upload lên trước
                    $link = Utility::get_embed_video_link($model['link_video']);
                    $path = Yii::$app->params['assets_path']['assets.course'] . $model['course_id'] . '/' . $model['id'] . '/video/' . $model['video_name'];
                    if (Utility::check_url_file_exists($path) !== false) {
                        return '<video width="600" height="350" controls>
                                <source src="' . $path . '">
                                Your browser does not support the video tag.
                                </video>';
                    }
                    return '<object width="600" height="350" data="' . $link . '" type="application/x-shockwave-flash"><param name="src" value="' . $link . '" /></object>';
                }
            ],
            [
                'attribute' => 'time_length',
                'format' => 'raw',
                'value' => function ($model) {
                    return $model['time_length'] . ' phút';
                }
            ],
            'sort',
            'number_view',
            [
                'attribute' => 'status',
                'format' => 'raw',
                'value' => function ($model) {
                    return ($model['status'] == 1) ? 'Active' : 'Inactive';
                }
            ],
            [
                'attribute' => 'publish_date',
                'format' => 'raw',
                'value' => function ($model) {
                    return \common\components\Utility::formatDataTime($model['publish_date'], '-', '/', false);
                }
            ],
            [
                'attribute' => 'created_time',
                'format' => 'raw',
                'value' => function ($model) {
                    return \common\components\Utility::formatDataTime($model['created_time'], '-', '/', true);
                }
            ],
            [
                'attribute' => 'updated_time',
                'format' => 'raw',
                'value' => function ($model) {
                    return \common\components\Utility::formatDataTime($model['updated_time'], '-', '/', true);
                }
            ],
        ],
    ]) ?>

</div>

<style>
    .table > tbody > tr > th {
        width: 20%;
    }
</style>
