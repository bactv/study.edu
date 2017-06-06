<?php

use yii\helpers\Html;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\EventGroup */

$this->title = Yii::t('cms', 'Thêm mới', [
    'modelClass' => 'Event Group',
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Nhóm sự kiện'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
$this->params['title'] = Yii::t('cms', 'Create');
$this->params['menu'] = [
    ['label'=>Icon::show('reply') . " " .Yii::t('cms', 'Back'), 'url' => ['index'], 'options' => ['class' => 'btn btn-primary']],
];
?>
<div class="event-group-update">
    <?= $this->render('_form', [
    'model' => $model,
    ]) ?>
</div>

