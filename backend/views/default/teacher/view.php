<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\icons\Icon;
use common\components\AssetApp;
use common\components\Utility;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Teacher */

$this->title = $model->full_name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Teachers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="teacher-view">

    <h1 style="margin-bottom: 10px"><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Icon::show('pencil-square-o') . " " .Yii::t('cms', 'Update'), ['update', 'id' => $model->user_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Icon::show('trash-o') . " " .Yii::t('cms', 'Delete'), ['delete', 'id' => $model->user_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('cms', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'user_id',
            [
                'attribute' => 'avatar',
                'format' => ['image',['width'=>'70','height'=>'70']],
                'value' => function ($model) {
                    $img = AssetApp::getImageBaseUrl() . '/avatar_icon_backend_3.png';
                    $path = Yii::$app->params['assets_path']['img.user'] . $model['user_id'] . '.png';
                    if (Utility::check_url_file_exists($path) !== false) {
                        $img = $path;
                    }
                    return $img;
                }
            ],
            'full_name',
            'email',
            [
                'attribute' => 'gender',
                'value' => ($model['gender'] == 1) ? 'Nam' : 'Nữ'
            ],
            [
                'attribute' => 'intro',
                'format' => 'html'
            ],
            'work_place',
            'phone',
            'degree',
            'created_time',
            'updated_time',
        ],
    ]) ?>

</div>

<style>
    .table > tbody > tr > th {
        width: 20%;
    }
</style>