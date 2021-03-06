<?php

use yii\helpers\Html;
use yii\widgets\Pjax;
use kartik\icons\Icon;
use yii\grid\GridView;
use backend\models\Teacher;
use common\components\Utility;
use backend\models\CourseType;
use backend\models\Subject;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $searchModel common\models\search\CourseSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title = $this->params['title'] = Yii::t('cms', 'Courses');
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
                'attribute' => 'name',
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'vertical-align: middle;']
            ],
            [
                'attribute' => 'teacher_ids',
                'format' => 'raw',
                'value' => function ($model) {
                    $str = '';
                    $ex = json_decode($model['teacher_ids']);
                    foreach ($ex as $item) {
                        $str .= Teacher::getAttributeValue(['user_id' => trim($item)], 'full_name') . ', ';
                    }
                    $str = substr(trim($str), 0, strlen(trim($str)) - 1);
                    return $str;
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'vertical-align: middle;']
            ],
            [
                'attribute' => 'party_id',
                'label' => 'Đối tác cung cấp',
                'format' => 'raw',
                'value' => function ($model) {
                    return \backend\models\Party::getAttributeValue(['party_id' => $model['party_id']], 'party_name');
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'vertical-align: middle;']
            ],
            [
                'attribute' => 'deadline_register',
                'format' => 'raw',
                'value' => function ($model) {
                    return Utility::formatDataTime($model['deadline_register'], '-', '/', false);
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'vertical-align: middle;']
            ],
            [
                'attribute' => 'course_type_id',
                'format' => 'raw',
                'value' => function ($model) {
                    return CourseType::getAttributeValue(['id' => $model['course_type_id']], 'name');
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'vertical-align: middle;']
            ],
            [
                'attribute' => 'price',
                'format' => 'raw',
                'value' => function ($model) {
                    return number_format($model['price']);
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'attribute' => 'status',
                'format' => 'raw',
                'value' => function ($model) {
                    return ($model['status'] == 1) ? '<span class="txt_active">Công khai</span>' : '<span class="txt_deactive">Riêng tư</span>';
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'attribute' => 'approved',
                'format' => 'raw',
                'value' => function ($model) {
                    if($model['approved'] == 1) {
                        return "<span class=\"txt_active\">Đã phê duyệt</span>";
                    } else if ($model['approved'] == 0) {
                        return "<span class=\"txt_considering\">Đang xem xét</span>";
                    }
                    return "<span class=\"txt_deactive\">Đã từ chối phê duyệt</span>";
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{view} {update} {delete} {approved} {refuse}',
                'header' => Yii::t('cms', 'Actions'),
                'headerOptions' => ['style'=>'text-align: center;'],
                'contentOptions'=>['style'=>'text-align: center;'],
                'options' => ['width' => '150px'],
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
                    'approved' => function ($url, $model) {
                        $url = \yii\helpers\Url::toRoute(['/course/approved-course', 'id' => $model['id']]);
                        return Html::a(Icon::show('check'), $url, [
                            'title' => Yii::t('cms', 'Approved'),
                            'class'=>'btn btn-primary btn-xs btn-app',
                            'data-confirm' => Yii::t('yii', 'Are you sure you want to approve this item?'),
                            'data-method' => 'post',
                            'data-pjax' => 'w0'
                        ]);
                    },

                    'refuse' => function ($url, $model) {
                        $url = \yii\helpers\Url::toRoute(['/course/refuse-course', 'id' => $model['id']]);
                        return Html::a(Icon::show('close'), $url, [
                            'title' => Yii::t('cms', 'Từ chối phê duyệt'),
                            'class'=>'btn btn-primary btn-xs btn-app',
                            'data-confirm' => Yii::t('yii', 'Are you sure you want to approve this item?'),
                            'data-method' => 'post',
                            'data-pjax' => 'w0'
                        ]);
                    },
                ]
            ],
        ],
    ]); ?>
<?php Pjax::end();?> 