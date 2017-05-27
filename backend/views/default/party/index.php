<?php

use yii\helpers\Html;
use yii\widgets\Pjax;
use kartik\icons\Icon;
use yii\grid\GridView;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $searchModel common\models\search\PartySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title = $this->params['title'] = Yii::t('cms', 'Parties');
$this->params['breadcrumbs'][] = $this->title;
$this->params['menu'] = [
    ['label'=>Icon::show('plus') . " " . Yii::t('cms', 'Create'), 'url' => ['create'], 'options' => ['class' => 'btn btn-primary']],
    ['label'=>Icon::show('trash-o') . " " . Yii::t('cms', 'Delete'), 'url' => 'javascript:void(0)', 'options' => ['class' => 'btn btn-danger', 'onclick' => 'deleteAllItems()']]
];
?>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

<?php Pjax::begin(['id' => 'admin-grid-view']);?> 
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            [
                'class' => 'yii\grid\CheckboxColumn',
                'options' => ['width' => '40px'],
                'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
                'contentOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            ],
            [
                'attribute' => 'party_id',
                'options' => ['width' => '40px'],
                'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
                'contentOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            ],
            [
                'attribute' => 'party_type_id',
                'label' => Yii::t('cms', 'Party Types'),
                'format' => 'raw',
                'value' => function ($model) {
                    return \backend\models\PartyType::findOne(['id' => $model['party_type_id']])['name'];
                },
                'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
                'contentOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            ],
            [
                'attribute' => 'party_name',
                'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
                'contentOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            ],
            [
                'attribute' => 'party_rep_title',
                'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
                'contentOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            ],
            [
                'attribute' => 'party_address',
                'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
                'contentOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            ],
            [
                'attribute' => 'party_tax_code',
                'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
                'contentOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            ],
            [
                'attribute' => 'party_phone',
                'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
                'contentOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            ],
            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{view} {update} {delete}',
                'header' => Yii::t('cms', 'Actions'),
                'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
                'contentOptions' => ['style' => 'text-align: center; vertical-align: middle'],
                'options' => ['width' => '120px'],
                'buttons' => [
                    'view' => function ($url) {
                        return Html::a(Icon::show('info-circle'), $url, [
                            'title' => Yii::t('cms', 'View'),
                            'class'=>'btn btn-primary btn-xs btn-app',
                            'data-pjax' => '0',
                        ]);
                    },
                    'update' => function ($url) {
                        return Html::a(Icon::show('pencil-square-o'), $url, [
                            'title' => Yii::t('cms', 'Update'),
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