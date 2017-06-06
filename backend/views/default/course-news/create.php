<?php

use yii\helpers\Html;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\CourseNews */

$this->title = Yii::t('cms', 'Thêm mới', [
    'modelClass' => 'Course News',
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Thông báo khóa học'), 'url' => ['index', 'course_id' => $course_id]];
$this->params['breadcrumbs'][] = $this->title;
$this->params['title'] = Yii::t('cms', 'Create');
$this->params['menu'] = [
];
?>
<div class="course-news-update">
    <?= $this->render('_form', [
        'model' => $model,
        'course_id' => $course_id
    ]) ?>
</div>

