<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 16/05/2017
 * Time: 4:24 CH
 */

use yii\helpers\Html;
use kartik\icons\Icon;
use yii\widgets\DetailView;
use common\components\AssetApp;
use common\components\Utility;
use yii\helpers\Url;
use frontend\models\Subject;
use frontend\models\CourseType;

Icon::map($this, Icon::FA);

?>
<!-- Header -->
<header id="portfolio">
    <span class="w3-button w3-hide-large w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <div class="w3-container">
        <h4 class="w3-text-teal"><b><?php echo Icon::show('list') ?>KHÓA HỌC: <?php echo $model['name'] ?></b></h4>
        <div class="w3-section w3-bottombar"></div>
    </div>
</header>


<div class="course-view" style="padding: 5px 30px 30px 30px;margin-bottom: 100px">

<h1 style="margin-bottom: 10px"><?= Html::encode($this->title) ?></h1>

<p>
    <?= Html::a(Icon::show('pencil-square-o') . " " .Yii::t('cms', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
</p>

<p style="margin-top: 20px">
    <?= Html::a(Icon::show('pencil-square-o') . " " .Yii::t('cms', 'Quản lý bài giảng'), Url::toRoute(['/quan-ly-khoa-hoc/lesson', 'course_id' => $model->id]), ['class' => 'btn btn-info', 'target' => '_blank']) ?>
</p>

<?= DetailView::widget([
    'model' => $model,
    'attributes' => [
        'id',
        'name',
        [
            'attribute' => 'logo',
            'format' => ['image',['width'=>'180','height'=>'120']],
            'value' => function ($model) {
                $img = AssetApp::getImageBaseUrl() . '/img_course_default.jpg';
                $path = Yii::$app->params['assets_path']['img.course'] . $model['id'] . '.png';
                if (Utility::check_url_file_exists($path) !== false) {
                    $img = $path;
                }
                return $img;
            }
        ],
        [
            'attribute' => 'party_id',
            'format' => 'raw',
            'value' => function ($model) {
                return \backend\models\Party::getAttributeValue(['party_id' => $model['party_id']], 'party_name');
            }
        ],
        [
            'attribute' => 'description',
            'format' => 'html'
        ],
        [
            'attribute' => 'deadline_register',
            'format' => 'raw',
            'value' => function ($model) {
                return Utility::formatDataTime($model['deadline_register'], '-', '/');
            }
        ],
        [
            'attribute' => 'status',
            'format' => 'raw',
            'value' => function ($model) {
                return ($model['status'] == 1) ? 'Công khai' : 'Riêng tư';
            }
        ],
        [
            'attribute' => 'approved',
            'format' => 'raw',
            'value' => function ($model) {
                if ($model['approved'] == 1) {
                    return 'Đã phê duyệt';
                } else if ($model['approved'] == 0) {
                    return 'Đang chờ phê duyệt';
                } else {
                    return 'Đã từ chối phê duyệt';
                }
            }
        ],
        [
            'attribute' => 'price',
            'format' => 'raw',
            'value' => function ($model) {
                return number_format($model['price']);
            }
        ],
        [
            'attribute' => 'course_type_id',
            'format' => 'raw',
            'value' => function ($model) {
                return CourseType::getAttributeValue(['id' => $model['course_type_id']], 'name');
            }
        ],
        [
            'attribute' => 'subject_id',
            'format' => 'raw',
            'value' => function ($model) {
                return Subject::getAttributeValue(['id' => $model['subject_id']], 'name');
            }
        ],
        [
            'attribute' => 'created_time',
            'format' => 'raw',
            'value' => function ($model) {
                return Utility::formatDataTime($model['created_time'], '-', '/', true);
            }
        ],
        [
            'attribute' => 'updated_time',
            'format' => 'raw',
            'value' => function ($model) {
                return Utility::formatDataTime($model['updated_time'], '-', '/', true);
            }
        ],
    ],
]) ?>

</div>

<style>
    .table > tbody > tr > th {
        width: 20%;
    }
</style>
