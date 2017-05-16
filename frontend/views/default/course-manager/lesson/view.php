<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 16/05/2017
 * Time: 5:27 CH
 */
use yii\helpers\Html;
use kartik\icons\Icon;
use common\components\Utility;
use yii\helpers\Url;
use yii\widgets\DetailView;

Icon::map($this, Icon::FA);

?>
<div class="w3-container">
    <!-- Sidebar -->
    <div class="w3-sidebar w3-bar-block w3-border-right" style="display:none;" id="mySidebar2">
        <button onclick="w3_close2()" class="w3-bar-item w3-large">&times;</button>
        <?php foreach ($all_lesson as $k => $ls) {
            $class_active = '';
            if ($ls['id'] == $model['id']) {
                $class_active = 'active';
            } ?>
            <a href="<?php echo Url::toRoute(['/quan-ly-khoa-hoc/view-lesson', 'lesson_id' => $ls['id'], 'course_id' => $ls['course_id']]) ?>" class="w3-bar-item w3-border-bottom w3-button <?php echo $class_active ?>"><?php echo ($k + 1) . '. ' . Utility::truncateStringWords($ls['name'], 70) ?></a>
        <?php } ?>
    </div>
</div>
<header id="portfolio">
    <div class="w3-container">
        <h3 class="w3-text-teal"><b><button class="w3-button w3-large" onclick="w3_open2()"><?php echo Icon::show('list') ?></button> BÀI GIẢNG: <?php echo $model['name'] ?></b></h3>
        <div class="w3-section w3-bottombar"></div>
    </div>
</header>

<div class="w3-container">
    <?php echo Html::a(Icon::show('reply') . ' Quay lại', Url::toRoute(['/quan-ly-khoa-hoc/view-lesson', 'lesson_id' => $model['id'], 'course_id' => $model['course_id']]), ['class' => 'btn btn-warning']) ?>
</div>

<div class="w3-container">
    <div class="lesson-view">

        <h1 style="margin-bottom: 10px"><?= Html::encode($this->title) ?></h1>

        <p>
            <?= Html::a(Icon::show('pencil-square-o') . " " .Yii::t('cms', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
            <?= Html::a(Icon::show('trash-o') . " " .Yii::t('cms', 'Delete'), ['delete', 'id' => $model->id], [
                'class' => 'btn btn-danger',
                'data' => [
                    'confirm' => Yii::t('cms', 'Are you sure you want to delete this item?'),
                    'method' => 'post',
                ],
            ]) ?>
        </p>

        <p style="margin-top: 20px">
            <?= Html::a(Icon::show('pencil-square-o') . " " .Yii::t('cms', 'Quản lý tài liệu tham khảo'), Url::toRoute(['/lesson-document', 'lesson_id' => $model->id]) , ['class' => 'btn btn-info']) ?>
            <?= Html::a(Icon::show('pencil-square-o') . " " .Yii::t('cms', 'Quản lý đề kiểm tra'), Url::toRoute(['/lesson-quiz', 'lesson_id' => $model->id]) , ['class' => 'btn btn-warning']) ?>
        </p>

        <?= DetailView::widget([
            'model' => $model,
            'attributes' => [
                'id',
                [
                    'attribute' => 'course_id',
                    'format' => 'raw',
                    'value' => function ($model) {
                        return \backend\models\Course::getAttributeValue(['id' => $model['course_id']], 'name');
                    }
                ],
                'name',
                'description:ntext',
                [
                    'attribute' => 'link_video',
                    'format' => 'raw',
                    'value' => function ($model) {
                        // ưu tiên video upload lên trước
                        $link = Utility::get_embed_video_link($model['link_video']);
                        $path = Yii::$app->params['assets_path']['assets.course'] . $model['course_id'] . '/' . $model['id'] . '/video/' . $model['video_name'];
                        if (Utility::check_url_file_exists($path) !== false) {
                            return '<video width="600" height="350" controls>
                                <source src="' . $path . '">
                                Your browser does not support the video tag.
                                </video>';
                        }
                        return '<object width="600" height="350" data="' . $link . '" type="application/x-shockwave-flash"><param name="src" value="' . $link . '" /></object>';
                    }
                ],
                [
                    'attribute' => 'time_length',
                    'format' => 'raw',
                    'value' => function ($model) {
                        return $model['time_length'] . ' phút';
                    }
                ],
                'sort',
                'number_view',
                [
                    'attribute' => 'status',
                    'format' => 'raw',
                    'value' => function ($model) {
                        return ($model['status'] == 1) ? 'Active' : 'Inactive';
                    }
                ],
                [
                    'attribute' => 'publish_date',
                    'format' => 'raw',
                    'value' => function ($model) {
                        return \common\components\Utility::formatDataTime($model['publish_date'], '-', '/', false);
                    }
                ],
                [
                    'attribute' => 'created_time',
                    'format' => 'raw',
                    'value' => function ($model) {
                        return \common\components\Utility::formatDataTime($model['created_time'], '-', '/', true);
                    }
                ],
                [
                    'attribute' => 'updated_time',
                    'format' => 'raw',
                    'value' => function ($model) {
                        return \common\components\Utility::formatDataTime($model['updated_time'], '-', '/', true);
                    }
                ],
            ],
        ]) ?>

    </div>
</div>

<style>
    .table > tbody > tr > th {
        width: 20%;
    }
    #mySidebar2 {
        height: 600px;
        overflow-y: scroll;
        width: 30%;
    }
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
