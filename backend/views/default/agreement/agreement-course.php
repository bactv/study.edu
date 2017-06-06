<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 02/06/2017
 * Time: 2:57 SA
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
        <?php echo Html::a(Icon::show('plus') . " " . Yii::t('cms', 'Create'), ['/agreement-course-share-rate/create', 'agreement_id' => $agreement_id], ['class' => 'btn btn-primary']) ?>
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
            'attribute' => 'agreement_id',
            'format' => 'raw',
            'value' => function ($model) {
                return Agreement::getAttributeValue(['agreement_id' => $model['agreement_id']], 'agreement_code');
            },
            'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            'contentOptions' => ['style' => 'text-align: center; vertical-align: middle'],
        ],

        [
            'attribute' => 'course_id',
            'format' => 'raw',
            'value' => function ($model) {
                return \backend\models\Course::getAttributeValue(['id' => $model['course_id']], 'name');
            },
            'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            'contentOptions' => ['style' => 'text-align: left; vertical-align: middle'],
        ],
        [
            'attribute' => 'share_rate',
            'headerOptions' => ['style' => 'text-align: center; vertical-align: middle'],
            'contentOptions' => ['style' => 'text-align: left; vertical-align: middle'],
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
                    $url = \yii\helpers\Url::toRoute(['/agreement-course-share-rate/view', 'agreement_id' => $model['agreement_id'], 'course_id' => $model['course_id']]);
                    return Html::a(Icon::show('info-circle'), $url, [
                        'title' => Yii::t('cms', 'View'),
                        'class'=>'btn btn-primary btn-xs btn-app',
                        'data-pjax' => '0',
                        'target' => '_blank'
                    ]);
                },
                'update' => function ($url, $model) {
                    $url = \yii\helpers\Url::toRoute(['/agreement-course-share-rate/update', 'agreement_id' => $model['agreement_id'], 'course_id' => $model['course_id']]);
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