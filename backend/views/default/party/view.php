<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Party */

$this->title = $model->party_name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Parties'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="party-view">

    <h1 style="margin-bottom: 10px"><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Icon::show('pencil-square-o') . " " .Yii::t('cms', 'Update'), ['update', 'id' => $model->party_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Icon::show('trash-o') . " " .Yii::t('cms', 'Delete'), ['delete', 'id' => $model->party_id], [
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
            'party_id',
            [
                'attribute' => 'party_type_id',
                'value' => function ($model) {
                    return \backend\models\PartyType::findOne(['id' => $model['party_type_id']])['name'];
                }
            ],
            'party_name',
            'party_rep_title',
            'party_address',
            'party_tax_code',
            'party_phone',
            [
                'attribute' => 'party_created_time',
                'value' => function ($model) {
                    return \common\components\Utility::formatDataTime($model['party_created_time'], '-', '/', true);
                }
            ],
            [
                'attribute' => 'party_updated_time',
                'value' => function ($model) {
                    return \common\components\Utility::formatDataTime($model['party_updated_time'], '-', '/', true);
                }
            ],
            [
                'attribute' => 'party_created_by',
                'value' => function ($model) {
                    return \backend\models\Admin::getAttributeValue(['id' => $model['party_created_by']], 'full_name');
                }
            ],
            [
                'attribute' => 'party_updated_by',
                'value' => function ($model) {
                    return \backend\models\Admin::getAttributeValue(['id' => $model['party_updated_by']], 'full_name');
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
