<?php

use yii\helpers\Html;
use yii\widgets\Pjax;
use kartik\icons\Icon;
use yii\grid\GridView;
use common\components\AssetApp;
use common\components\Utility;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $searchModel common\models\search\AdminSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title = $this->params['title'] = Yii::t('cms', 'Admins');
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
                'options' => ['width' => '40px'],
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'attribute' => 'avatar',
                'options' => ['width' => '120px'],
                'format' => 'raw',
                'value' => function ($model) {
                    $img = AssetApp::getImageBaseUrl() . '/avatar_icon_backend_3.png';
                    $path = Yii::$app->params['assets_path']['img.admin'] . $model['id'] . '.png';
                    if (Utility::check_url_file_exists($path) !== false) {
                        $img = $path;
                    }
                    return Html::img($img, [
                        'width' => '70px',
                        'height' => '70px',
                        'style' => 'border-radius: 50%'
                    ]);
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'attribute' => 'username',
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'attribute' => 'full_name',
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'attribute' => 'email',
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'attribute' => 'group_ids',
                'label' => 'Nhóm quản trị',
                'format' => 'raw',
                'value' => function ($model) {
                    $str =  '';
                    $ex = (!empty($model['group_ids'])) ? json_decode($model['group_ids']) : [];
                    foreach ($ex as $item) {
                        $str .= '<div>' . \backend\models\AdminGroup::getAttributeValue(['id' => $item], 'name') . '</div>';
                    }
                    return $str;
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'attribute' => 'status',
                'options' => ['width' => '100px'],
                'format' => 'raw',
                'value' => function ($model) {
                    if ($model['status'] == 1) {
                        return '<div id="item-status-'.$model['id'].'"><a href="javascript:void(0);" class="f-s-18" onclick = "changeStatusItems('.$model['id'].', 1, \''.\yii\helpers\Url::toRoute(['menu/change-status']).'\')"><i class="fa fa-check" style="color: green;"></i></a></div>';
                    } else {
                        return '<div id="item-status-'.$model['id'].'"><a href="javascript:void(0);" class="f-s-18" onclick = "changeStatusItems('.$model['id'].', 0, \''.\yii\helpers\Url::toRoute(['menu/change-status']).'\')"><i class="fa fa-dot-circle-o" style="color: red"></i></a></div>';
                    }
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{view} {update} {delete}',
                'header' => Yii::t('cms', 'Actions'),
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
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