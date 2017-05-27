<?php

use yii\helpers\Html;
use yii\widgets\Pjax;
use kartik\icons\Icon;
use yii\grid\GridView;
use backend\models\Subject;
use yii\helpers\Url;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $searchModel common\models\search\TopicSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title = $this->params['title'] = Yii::t('cms', 'Topics');
$this->params['breadcrumbs'][] = $this->title;
$this->params['menu'] = [
    ['label'=>Icon::show('plus') . " " . Yii::t('cms', 'Create'), 'url' => ['create'], 'options' => ['class' => 'btn btn-primary']],
    ['label'=>Icon::show('file-excel-o') . " " . Yii::t('cms', 'Import chủ đề'), 'url' => Url::toRoute(['/import-file/create', 'type' => 'topic_subject']), 'options' => ['class' => 'btn btn-info']],
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
                'options' => ['width' => '40px'],
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            'name',
            [
                'attribute' => 'description',
                'format' => 'html',
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'vertical-align: middle;']
            ],
            [
                'attribute' => 'status',
                'options' => ['width' => '100px'],
                'format' => 'raw',
                'value' => function ($model) {
                    return ($model['status'] == 1) ? '<span class="txt_active">Active</span>' : '<span class="txt_deactive">DeActive</span>';
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'attribute' => 'subject_id',
                'format' => 'raw',
                'value' => function ($model) {
                    return Subject::getAttributeValue(['id' => $model['subject_id']], 'name');
                }
            ],
            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{view} {update} {delete}',
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