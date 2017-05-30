<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\StaticPage */

$this->title = $model->type;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Static Pages'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="static-page-view">

    <h1 style="margin-bottom: 10px"><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Icon::show('pencil-square-o') . " " .Yii::t('cms', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            [
                'attribute' => 'type',
                'label' => 'Loại',
            ],
            [
                'attribute' => 'content',
                'format' => 'raw',
                'label' => 'Nội dung',
            ],
            [
                'attribute' => 'created_time',
                'format' => 'raw',
                'value' => function ($model) {
                    return \common\components\Utility::formatDataTime($model['created_time'], '-', '/', true);
                }
            ],
            [
                'attribute' => 'updated_time',
                'format' => 'raw',
                'value' => function ($model) {
                    return \common\components\Utility::formatDataTime($model['updated_time'], '-', '/', true);
                }
            ],
        ],
    ]) ?>

</div>
