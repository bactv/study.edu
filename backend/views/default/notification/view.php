<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Notification */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Notifications'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="notification-view">

    <h1 style="margin-bottom: 10px"><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Icon::show('trash-o') . " " .Yii::t('cms', 'Delete'), ['delete', 'id' => $model->id, 'receiver_id' => $model->receiver_id], [
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
            [
                'attribute' => 'sender_id',
                'format' => 'raw',
                'value' => function ($model) {
                    return \backend\models\User::findOne(['id' => $model['sender_id']])['username'];
                },
            ],
            [
                'attribute' => 'type',
                'label' => 'Loại feedback',
                'format' => 'raw',
                'value' => function ($model) {
                    $type = isset(Yii::$app->params['type_notification_name'][$model['type']]) ? Yii::$app->params['type_notification_name'][$model['type']] : '';
                    return $type;
                },
            ],
            'content:ntext',
            'status',
            'created_time',
        ],
    ]) ?>

</div>
