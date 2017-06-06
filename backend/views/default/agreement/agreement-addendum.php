<?php
/**
 * Created by PhpStorm.
 * User: Bac Truong Van
 * Date: 16/03/2017
 * Time: 9:47 CH
 */

use yii\widgets\Pjax;
use yii\grid\GridView;
use yii\helpers\Html;
use kartik\icons\Icon;
use backend\models\Agreement;
use common\components\Utility;

Icon::map($this, Icon::FA);

?>

<div class="list_action" style="margin-bottom: 20px">
    <?php echo Html::a(Icon::show('plus') . " " . Yii::t('cms', 'Create'), ['/agreement-addendum/create', 'agreement_id' => $agreement_id], ['class' => 'btn btn-primary']) ?>
</div>

<?php Pjax::begin(['id' => 'admin-grid-view']);?>
<?= GridView::widget([
    'dataProvider' => $dataProvider,
//    'filterModel' => $searchModel,
    'columns' => [
        [
            'class' => 'yii\grid\CheckboxColumn',
            'options' => ['width' => '50px'],
            'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            'contentOptions' => ['style' => 'text-align: center; vertical-align: middle'],
        ],
        [
            'attribute' => 'addendum_id',
            'options' => ['width' => '50px'],
            'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            'contentOptions' => ['style' => 'text-align: center; vertical-align: middle'],
        ],

        [
            'attribute' => 'addendum_number',
            'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            'contentOptions' => ['style' => 'text-align: left; vertical-align: middle'],
        ],
        [
            'attribute' => 'addendum_content',
            'format' => 'raw',
            'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            'contentOptions' => ['style' => 'text-align: left; vertical-align: middle'],
        ],
        [
            'attribute' => 'from_date',
            'format' => 'raw',
            'value' => function ($model) {
                return Utility::formatDataTime($model['from_date'], '-', '/', false);
            },
            'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            'contentOptions' => ['style' => 'text-align: left; vertical-align: middle'],
        ],
        [
            'attribute' => 'to_date',
            'format' => 'raw',
            'value' => function ($model) {
                return Utility::formatDataTime($model['to_date'], '-', '/', false);
            },
            'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            'contentOptions' => ['style' => 'text-align: left; vertical-align: middle'],
        ],
        [
            'attribute' => 'addendum_created_time',
            'label' => Yii::t('cms', 'Created Time'),
            'format' => 'raw',
            'value' => function ($model) {
                return Utility::formatDataTime($model['addendum_created_time'], '-', '/', true);
            },
            'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            'contentOptions' => ['style' => 'text-align: center; vertical-align: middle'],
        ],
        [
            'attribute' => 'addendum_updated_time',
            'label' => Yii::t('cms', 'Updated Time'),
            'format' => 'raw',
            'value' => function ($model) {
                return Utility::formatDataTime($model['addendum_updated_time'], '-', '/', true);
            },
            'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            'contentOptions' => ['style' => 'text-align: center; vertical-align: middle'],
        ],
        [
            'class' => 'yii\grid\ActionColumn',
            'template' => '{view} {update}',
            'header' => Yii::t('cms', 'Actions'),
            'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            'contentOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            'options' => ['width' => '120px'],
            'buttons' => [
                'view' => function ($url, $model) {
                    $url = \yii\helpers\Url::toRoute(['/agreement-addendum/view', 'id' => $model['addendum_id']]);
                    return Html::a(Icon::show('info-circle'), $url, [
                        'title' => Yii::t('cms', 'View'),
                        'class'=>'btn btn-primary btn-xs btn-app',
                        'data-pjax' => '0',
                        'target' => '_blank'
                    ]);
                },
                'update' => function ($url, $model) {
                    $url = \yii\helpers\Url::toRoute(['/agreement-addendum/update', 'id' => $model['addendum_id']]);
                    return Html::a(Icon::show('pencil-square-o'), $url, [
                        'title' => Yii::t('cms', 'Update'),
                        'class'=>'btn btn-primary btn-xs btn-app',
                        'data-pjax' => '0',
                        'target' => '_blank'
                    ]);
                },
            ]
        ],
    ],
]); ?>
<?php Pjax::end();?>
