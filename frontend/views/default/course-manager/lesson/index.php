<?php

use yii\helpers\Html;
use yii\widgets\Pjax;
use kartik\icons\Icon;
use yii\grid\GridView;
use backend\models\Course;
use common\components\Utility;
use yii\helpers\Url;

Icon::map($this, Icon::FA);

\common\components\AssetApp::regCssFile('course_manager.css');

/* @var $this yii\web\View */
/* @var $searchModel common\models\search\LessonSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
?>

<div class="w3-container">
    <!-- Sidebar -->
    <div class="w3-sidebar w3-bar-block w3-border-right" style="display:none;" id="mySidebar2">
        <button onclick="w3_close2()" class="w3-bar-item w3-large">&times;</button>
        <?php foreach ($arr_course as $k => $c) {
            $class_active = '';
            if ($c['id'] == $course['id']) {
                $class_active = 'active';
            } ?>
            <a href="<?php echo Url::toRoute(['/quan-ly-khoa-hoc/lesson', 'course_id' => $c['id']]) ?>" class="w3-bar-item w3-border-bottom w3-button <?php echo $class_active ?>"><?php echo ($k + 1) . '. ' . Utility::truncateStringWords($c['name'], 70) ?></a>
        <?php } ?>
    </div>
</div>

<!-- Header -->
<header id="portfolio">
    <span class="w3-button w3-hide-large w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <div class="w3-container">
        <h4 class="w3-text-teal"><b><button class="w3-button w3-large" onclick="w3_open2()"><?php echo Icon::show('list') ?></button> DANH SÁCH BÀI GIẢNG KHÓA HỌC: <?php echo $course['name'] ?></b></h4>
        <div class="w3-section w3-bottombar"></div>
    </div>
</header>

<div class="w3-container">
    <a href="<?php echo Url::toRoute(['/quan-ly-khoa-hoc/create-lesson', 'course_id' => $course['id']]) ?>" class="btn btn-info"><?php echo Icon::show('plus') ?> Tạo bài giảng mới</a>
</div>

<div class="w3-container">
    <?php Pjax::begin(['id' => 'admin-grid-view']);?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
//    'filterModel' => $searchModel,
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
                'attribute' => 'status',
                'format' => 'raw',
                'value' => function ($model) {
                    return ($model['status'] == 1) ? '<span class="w3-text-green">Active</span>' : '<span class="w3-text-red">Inactive</span>';
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'vertical-align: middle;']
            ],
            [
                'attribute' => 'publish_date',
                'format' => 'raw',
                'value' => function ($model) {
                    return Utility::formatDataTime($model['publish_date'], '-', '/', false);
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'vertical-align: middle;']
            ],
            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{view} {update} {delete}',
                'header' => Yii::t('cms', 'Actions'),
                'headerOptions' => ['style'=>'text-align: center;'],
                'contentOptions'=>['style'=>'text-align: center;'],
                'options' => ['width' => '120px'],
                'buttons' => [
                    'view' => function ($url, $model) {
                        $url = Url::toRoute(['/quan-ly-khoa-hoc/view-lesson', 'lesson_id' => $model['id'], 'course_id' => $model['course_id']]);
                        return Html::a(Icon::show('info-circle'), $url, [
                            'title' => Yii::t('cms', 'View'),
                            'class'=>'btn btn-primary btn-xs btn-app',
                            'data-pjax' => '0',
                        ]);
                    },
                    'update' => function ($url, $model) {
                        $url = Url::toRoute(['/quan-ly-khoa-hoc/update-lesson', 'lesson_id' => $model['id'], 'course_id' => $model['course_id']]);
                        return Html::a(Icon::show('pencil-square-o'), $url, [
                            'title' => Yii::t('cms', 'Update'),
                            'class'=>'btn btn-primary btn-xs btn-app',
                            'data-pjax' => '0',
                        ]);
                    },
                    'delete' => function ($url, $model) {
                        $url = Url::toRoute(['/quan-ly-khoa-hoc/delete-lesson', 'lesson_id' => $model['id'], 'course_id' => $model['course_id']]);
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
</div>
<style>
    a.active {
        color: red;
    }
</style>
<script>
    function w3_open2() {
        document.getElementById("mySidebar2").style.display = "block";
    }
    function w3_close2() {
        document.getElementById("mySidebar2").style.display = "none";
    }
</script>