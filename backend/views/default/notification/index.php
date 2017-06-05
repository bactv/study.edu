<?php

use yii\helpers\Html;
use yii\widgets\Pjax;
use kartik\icons\Icon;
use yii\grid\GridView;
use kartik\form\ActiveForm;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $searchModel common\models\search\NotificationSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title = $this->params['title'] = Yii::t('cms', 'Phản hồi mới');
$this->params['breadcrumbs'][] = $this->title;
$this->params['menu'] = [
    ['label'=>Icon::show('plus') . " " . Yii::t('cms', 'Create'), 'url' => ['create'], 'options' => ['class' => 'btn btn-primary']],
    ['label'=>Icon::show('trash-o') . " " . Yii::t('cms', 'Delete'), 'url' => 'javascript:void(0)', 'options' => ['class' => 'btn btn-danger', 'onclick' => 'deleteAllItems()']]
];
?>

<style>
    .item {
        padding-right: 15px;
    }
</style>

<div class="filter-content">
    <fieldset>
        <legend>Lọc thông báo</legend>
        <?php $form = ActiveForm::begin([
            'type' => ActiveForm::TYPE_HORIZONTAL,
            'formConfig' => [
                'labelSpan' => 2,
                'deviceSize' => ActiveForm::SIZE_SMALL
            ],
            'method' => 'GET',
            'action' => \yii\helpers\Url::toRoute(['index'])
        ]) ?>

        <div class="row">
            <div class="col-md-3 item">
                <?php
                echo '<label class="control-label">Khoảng thời gian</label>';
                echo '<div class="drp-container" id="form_time">';
                echo \kartik\daterange\DateRangePicker::widget([
                    'name' => 'notification_daterange',
                    'value' => $notification_daterange,
                    'presetDropdown' => true,
                    'hideInput' => true,
                    'pluginOptions' => [
                        'locale' => ['format' => 'D/M/YYYY'],
                        'allowClear' => true
                    ],
                    'options' => [
                        'placeholder' => 'Khoảng thời gian ...',
                        'id' => 'notification_daterange'
                    ]
                ]);
                echo '</div>';
                ?>

            </div>
            <div class="col-md-3 item">
                <?php
                echo '<label class="control-label">Loại phản hồi</label>';
                echo \kartik\select2\Select2::widget([
                    'name' => 'notification_type',
                    'value' => $notification_type,
                    'data' => Yii::$app->params['type_notification_name'],
                    'options' => [
                        'prompt' => 'Loại phản hồi',
                    ],
                    'pluginOptions' => [
                        'allowClear' => true
                    ],
                ]);
                ?>
            </div>
            <div class="col-md-3 item">
                <?php
                echo '<label class="control-label">Trạng thái</label>';
                echo \kartik\select2\Select2::widget([
                    'name' => 'notification_status',
                    'value' => $notification_status,
                    'data' => [1 => 'Đã xem', 0 => 'Chưa xem'],
                    'options' => [
                        'prompt' => 'Trạng thái'
                    ],
                    'pluginOptions' => [
                        'allowClear' => true
                    ],
                ]);
                ?>
            </div>
            <div class="col-md-3 item">
                <?php
                echo '<label class="control-label">Hình thức</label>';
                echo \kartik\select2\Select2::widget([
                    'name' => 'notification_role',
                    'value' => $notification_role,
                    'data' => [1 => 'Gửi', 2 => 'Nhận'],
                    'options' => [
                        'prompt' => 'Hình thức'
                    ],
                    'pluginOptions' => [
                        'allowClear' => true
                    ],
                ]);
                ?>
            </div>
        </div>

        <div class="row" style="margin-top: 20px;text-align: center">
            <div class="form-group">
                <?= Html::submitButton(Icon::show('search') . " " .  Yii::t('cms', 'search'), ['class' => 'btn btn-primary', 'name' => 'search']) ?>
                <?= Html::resetButton(Icon::show('undo') . " " .  Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']); ?>
            </div>
        </div>

        <?php ActiveForm::end(); ?>
    </fieldset>
</div>


<?php Pjax::begin(['id' => 'admin-grid-view']);?> 
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            [
                'class' => 'yii\grid\CheckboxColumn',
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'attribute' => 'id',
                'label' => 'ID',
                'options' => ['width' => '40px'],
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'attribute' => 'sender_id',
                'label' => 'Người gửi',
                'format' => 'raw',
                'value' => function ($model) {
                    return \backend\models\User::findOne(['id' => $model['sender_id']])['username'];
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'attribute' => 'type',
                'label' => 'Loại feedback',
                'format' => 'raw',
                'value' => function ($model) {
                    $type = isset(Yii::$app->params['type_notification_name'][$model['type']]) ? Yii::$app->params['type_notification_name'][$model['type']] : '';
                    return $type;
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'attribute' => 'content',
                'format' => 'raw',
                'value' => function ($model) {
                    return strip_tags($model['content']);
                }
            ],
            [
                'attribute' => 'status',
                'format' => 'raw',
                'value' => function ($model) {
                    return $model['status'] == 1 ? 'Đã xem' : 'Chưa xem';
                }
            ],
             'created_time',
            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{view} {delete}',
                'header' => Yii::t('cms', 'Actions'),
                'headerOptions' => ['style'=>'text-align: center;'],
                'contentOptions'=>['style'=>'text-align: center;'],
                'options' => ['width' => '120px'],
                'buttons' => [
                    'view' => function ($url) {
                        return Html::a(Icon::show('info-circle'), $url, [
                            'title' => Yii::t('cms', 'View'),
                            'class'=>'btn btn-primary btn-xs btn-app',
                            'data-pjax' => '0',
                        ]);
                    },
                    'delete' => function ($url) {
                        return Html::a(Icon::show('trash-o'), $url, [
                            'title' => Yii::t('cms', 'Delete'),
                            'class'=>'btn btn-primary btn-xs btn-app',
                            'data-confirm' => Yii::t('yii', 'Are you sure you want to delete this item?'),
                            'data-method' => 'post',
                            'data-pjax' => 'w0'
                        ]);
                    },
                ]
            ],
        ],
    ]); ?>
<?php Pjax::end();?> 