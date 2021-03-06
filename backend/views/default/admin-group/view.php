<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\AdminGroup */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Admin Groups'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="admin-group-view">

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

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            [
                'attribute' => 'description',
                'format' => 'html'
            ],
            [
                'attribute' => 'status',
                'value' => function ($model) {
                    return ($model['status'] == 1) ? 'Active' : 'Inactive';
                }
            ],
            [
                'attribute' => 'created_time',
                'value' => function ($model) {
                    return \common\components\Utility::formatDataTime($model['created_time'], '-', '/', true);
                }
            ],
            [
                'attribute' => 'updated_time',
                'value' => function ($model) {
                    return \common\components\Utility::formatDataTime($model['updated_time'], '-', '/', true);
                }
            ]
        ],
    ]) ?>

</div>

<style>
    .table > tbody > tr > th {
        width: 20%;
    }
</style>
