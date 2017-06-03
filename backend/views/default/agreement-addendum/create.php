<?php

use yii\helpers\Html;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\AgreementAddendum */

$this->title = Yii::t('cms', 'Thêm phụ lục HĐ', [
    'modelClass' => 'Agreement Addendum',
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Phụ lục HĐ'), 'url' => ['/agreement/view', 'id' => $agreement_id]];
$this->params['breadcrumbs'][] = $this->title;
$this->params['title'] = Yii::t('cms', 'Create');
$this->params['menu'] = [
    ['label'=>Icon::show('reply') . " " .Yii::t('cms', 'Back'), 'url' => ['/agreement/view', 'id' => $agreement_id], 'options' => ['class' => 'btn btn-primary']],
];
?>
<div class="agreement-addendum-update">
    <?= $this->render('_form', [
    'model' => $model,
        'agreement_id' => $agreement_id
    ]) ?>
</div>

