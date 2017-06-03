<?php

use yii\helpers\Html;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\AgreementCourseShareRate */

$this->title = Yii::t('cms', 'Thêm hợp đồng - Khóa học', [
    'modelClass' => 'Agreement Course Share Rate',
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Tỷ lệ chia sẻ'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
$this->params['title'] = Yii::t('cms', 'Create');
$this->params['menu'] = [
    ['label'=>Icon::show('reply') . " " .Yii::t('cms', 'Back'), 'url' => ['index'], 'options' => ['class' => 'btn btn-primary']],
];
?>
<div class="agreement-course-share-rate-update">
    <?= $this->render('_form', [
    'model' => $model,
        'agreement_id' => $agreement_id
    ]) ?>
</div>

