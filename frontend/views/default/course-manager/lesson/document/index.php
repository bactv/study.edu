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
        <?php foreach ($arr_lesson as $k => $ls) {
            $class_active = '';
            if ($ls['id'] == $lesson['id']) {
                $class_active = 'active';
            } ?>
            <a href="<?php echo Url::toRoute(['/quan-ly-khoa-hoc/lesson-document', 'course_id' => $ls['course_id'], 'lesson_id' => $ls['id']]) ?>" class="w3-bar-item w3-border-bottom w3-button <?php echo $class_active ?>"><?php echo ($k + 1) . '. ' . Utility::truncateStringWords($ls['name'], 70) ?></a>
        <?php } ?>
    </div>
</div>

<!-- Header -->
<header id="portfolio">
    <span class="w3-button w3-hide-large w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <div class="w3-container">
        <h4 class="w3-text-teal"><b><button class="w3-button w3-large" onclick="w3_open2()"><?php echo Icon::show('list') ?></button> DANH SÁCH TÀI LIỆU: <?php echo $ls['name'] ?></b></h4>
        <div class="w3-section w3-bottombar"></div>
    </div>
</header>

<div class="w3-container" style="margin-bottom: 20px">
    <a href="<?php echo Url::toRoute(['/quan-ly-khoa-hoc/create-lesson-document', 'course_id' => $lesson['course_id'], 'lesson_id' => $lesson['id']]) ?>" class="btn btn-info"><?php echo Icon::show('plus') ?> Upload tài liệu</a>
</div>

<div class="w3-container">
    <?php Pjax::begin(['id' => 'admin-grid-view']);?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
//    'filterModel' => $searchModel,
        'columns' => [
            [
                'attribute' => 'id',
                'options' => ['width' => '70px'],
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'attribute' => 'document_name',
                'format' => 'raw',
                'value' => function ($model) {
                    $lesson = \frontend\models\Lesson::findOne(['id' => $model['lesson_id']]);
                    $link = Yii::$app->params['assets_path']['assets.course'] .  $lesson['course_id'] . '/' . $model['lesson_id'] . '/document/' . $model['document_name'];
                    return Html::a($model['document_name'], $link, ['class' => 'w3-text-blue', 'target' => '_blank']);
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'vertical-align: middle;']
            ],
            [
                'attribute' => 'created_time',
                'format' => 'raw',
                'value' => function ($model) {
                    return Utility::formatDataTime($model['created_time'], '-', '/', true);
                },
                'headerOptions' => ['style'=>'text-align: center; vertical-align: middle;'],
                'contentOptions' => ['style'=>'text-align: center; vertical-align: middle;']
            ],
            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{update} {delete}',
                'header' => Yii::t('cms', 'Actions'),
                'headerOptions' => ['style'=>'text-align: center;'],
                'contentOptions'=>['style'=>'text-align: center;'],
                'options' => ['width' => '120px'],
                'buttons' => [
                    'update' => function ($url, $model) {
                        $ls = \frontend\models\Lesson::findOne(['id' => $model['lesson_id']]);
                        $url = Url::toRoute(['/quan-ly-khoa-hoc/update-lesson-document', 'document_id' => $model['id'], 'lesson_id' => $model['lesson_id'], 'course_id' => $ls['course_id']]);
                        return Html::a(Icon::show('pencil-square-o'), $url, [
                            'title' => Yii::t('cms', 'Update'),
                            'class'=>'btn btn-primary btn-xs btn-app',
                            'data-pjax' => '0',
                        ]);
                    },
                    'delete' => function ($url, $model) {
                        $ls = \frontend\models\Lesson::findOne(['id' => $model['lesson_id']]);
                        $url = Url::toRoute(['/quan-ly-khoa-hoc/delete-lesson-document', 'document_id' => $model['id'], 'lesson_id' => $model['lesson_id'], 'course_id' => $ls['course_id']]);
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