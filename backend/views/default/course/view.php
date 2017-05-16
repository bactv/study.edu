<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\icons\Icon;
use backend\models\Teacher;
use backend\models\Subject;
use backend\models\CourseType;
use common\components\AssetApp;
use common\components\Utility;
use yii\helpers\Url;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Course */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Courses'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="course-view">

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
        <?= Html::a(Icon::show('pencil-square-o') . " " .Yii::t('cms', 'Quản lý bài giảng'), Url::toRoute(['/lesson', 'course_id' => $model->id]), ['class' => 'btn btn-info', 'target' => '_blank']) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            [
                'attribute' => 'logo',
                'format' => ['image',['width'=>'180','height'=>'120']],
                'value' => function ($model) {
                    $img = AssetApp::getImageBaseUrl() . '/img_course_default.jpg';
                    $path = Yii::$app->params['assets_path']['img.course'] . $model['id'] . '.png';
                    if (Utility::check_url_file_exists($path) !== false) {
                        $img = $path;
                    }
                    return $img;
                }
            ],
            [
                'attribute' => 'teacher_ids',
                'format' => 'raw',
                'value' => function ($model) {
                    $str = '';
                    $ex = json_decode($model['teacher_ids']);
                    foreach ($ex as $e) {
                        if (trim($e) != '' && trim($e) != ',') {
                            $str .= Teacher::getAttributeValue(['user_id' => trim($e)], 'full_name') . ', ';
                        }
                    }
                    return substr(trim($str), 0, strlen(trim($str)) - 1);
                }
            ],
            [
                'attribute' => 'party_id',
                'format' => 'raw',
                'value' => function ($model) {
                    return \backend\models\Party::getAttributeValue(['party_id' => $model['party_id']], 'party_name');
                }
            ],
            [
                'attribute' => 'description',
                'format' => 'html'
            ],
            [
                'attribute' => 'deadline_register',
                'format' => 'raw',
                'value' => function ($model) {
                    return $model->getTimeFormat('deadline_register', '-', '/', false);
                }
            ],
            [
                'attribute' => 'status',
                'format' => 'raw',
                'value' => function ($model) {
                    return $model->getStatus();
                }
            ],
            [
                'attribute' => 'approved',
                'format' => 'raw',
                'value' => function ($model) {
                    return $model->getApprovedStatus();
                }
            ],
            [
                'attribute' => 'price',
                'format' => 'raw',
                'value' => function ($model) {
                    return number_format($model['price']);
                }
            ],
            [
                'attribute' => 'course_type_id',
                'format' => 'raw',
                'value' => function ($model) {
                    return CourseType::getAttributeValue(['id' => $model['course_type_id']], 'name');
                }
            ],
            [
                'attribute' => 'subject_id',
                'format' => 'raw',
                'value' => function ($model) {
                    return Subject::getAttributeValue(['id' => $model['subject_id']], 'name');
                }
            ],
            [
                'attribute' => 'created_time',
                'format' => 'raw',
                'value' => function ($model) {
                    return $model->getTimeFormat('created_time');
                }
            ],
            [
                'attribute' => 'updated_time',
                'format' => 'raw',
                'value' => function ($model) {
                    return $model->getTimeFormat('updated_time');
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
