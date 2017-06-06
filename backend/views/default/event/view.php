<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Event */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Sự kiện'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="event-view">

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
                'attribute' => 'event_group',
                'format' => 'raw',
                'value' => function ($model) {
                    $event_group = \backend\models\EventGroup::findOne(['id' => $model['event_group']]);
                    if (!empty($event_group)) {
                        return $event_group->name;
                    }
                    return '';
                }
            ],
            [
                'attribute' => 'description',
                'format' => 'raw',
            ],
            [
                'attribute' => 'point',
                'format' => 'raw',
                'value' => function ($model) {
                    return number_format($model['point']);
                }
            ],
            [
                'attribute' => 'money',
                'format' => 'raw',
                'value' => function ($model) {
                    return number_format($model['money'] * 1000 ) . ' VNĐ';
                }
            ],
            [
                'attribute' => 'status',
                'format' => 'raw',
                'value' => function ($model) {
                    return $model['status'] == 1 ? 'Active' : 'Deactive';
                }
            ],
            [
                'attribute' => 'from_date',
                'format' => 'raw',
                'value' => function ($model) {
                    return \common\components\Utility::formatDataTime($model['from_date'], '-', '/', false);
                }
            ],
            [
                'attribute' => 'to_date',
                'format' => 'raw',
                'value' => function ($model) {
                    return \common\components\Utility::formatDataTime($model['to_date'], '-', '/', false);
                }
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
