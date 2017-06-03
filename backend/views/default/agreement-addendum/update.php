<?php

use yii\helpers\Html;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\AgreementAddendum */

$this->title = Yii::t('cms', 'Cập nhật: ', [
    'modelClass' => 'Agreement Addendum',
]) . ' ' . $model->addendum_id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Phụ lục'), 'url' => ['/agreement/view', 'id' => $model->agreement_id]];
$this->params['breadcrumbs'][] = Yii::t('cms', 'Update');
$this->params['title'] = Yii::t('cms', 'Update');
$this->params['menu'] = [
    ['label'=>Icon::show('reply') . " " . Yii::t('cms', 'Back'), 'url' => ['/agreement/view', 'id' => $model->agreement_id], 'options' => ['class' => 'btn btn-primary']],
];
?>
<div class="agreement-addendum-update">
    <?= $this->render('_form', [
        'model' => $model,
        'agreement_id' => $agreement_id
    ]) ?>

</div>
