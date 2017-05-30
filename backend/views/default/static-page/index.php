<?php

use yii\helpers\Html;
use yii\widgets\Pjax;
use kartik\icons\Icon;
use yii\grid\GridView;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $searchModel common\models\search\StaticPageSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title = $this->params['title'] = Yii::t('cms', 'Static Pages');
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
                'attribute' => 'type',
                'label' => 'Loại',
            ],
            [
                'attribute' => 'content',
                'format' => 'raw',
                'label' => 'Nội dung',
                'value' => function ($model) {
                    return \common\components\Utility::truncateStringWords($model['content'], 300);
                }
            ],
            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{view} {update}',
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
                    'update' => function ($url) {
                        return Html::a(Icon::show('pencil-square-o'), $url, [
                            'title' => Yii::t('cms', 'Update'),
                            'class'=>'btn btn-primary btn-xs btn-app',
                            'data-pjax' => '0',
                        ]);
                    },
                ]
            ],
        ],
    ]); ?>
<?php Pjax::end();?> 