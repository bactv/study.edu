<?php

use yii\helpers\Html;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\CourseNews */

$this->title = Yii::t('cms', 'Cập nhật', [
    'modelClass' => 'Course News',
]) . ' ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Thông báo khóa học'), 'url' => ['index', 'course_id' => $model->course_id]];
$this->params['breadcrumbs'][] = Yii::t('cms', 'Update');
$this->params['title'] = Yii::t('cms', 'Update');
$this->params['menu'] = [
];
?>
<div class="course-news-update">
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
