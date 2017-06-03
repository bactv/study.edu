<?php

use yii\helpers\Html;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\AgreementCourseShareRate */

$this->title = Yii::t('cms', 'Update {modelClass}: ', [
    'modelClass' => 'Agreement Course Share Rate',
]) . ' ' . $model->agreement_id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Agreement Course Share Rates'), 'url' => ['index']];
$this->params['breadcrumbs'][] = Yii::t('cms', 'Update');
$this->params['title'] = Yii::t('cms', 'Update');
$this->params['menu'] = [
    ['label'=>Icon::show('reply') . " " . Yii::t('cms', 'Back'), 'url' => ['index'], 'options' => ['class' => 'btn btn-primary']],
];
?>
<div class="agreement-course-share-rate-update">
    <?= $this->render('_form', [
        'model' => $model,
        'agreement_id' => $agreement_id
    ]) ?>

</div>
