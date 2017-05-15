<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\icons\Icon;
use common\components\Utility;
use backend\models\Admin;
use common\components\AssetApp;
use backend\models\AdminGroup;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\Admin */

$this->title = $model->username;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Admins'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="admin-view">

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

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'username',
            'full_name',
            'email',
            'profession',
            [
                'attribute' => 'avatar',
                'format' => ['image',['width'=>'70','height'=>'70']],
                'value' => function ($model) {
                    $img = AssetApp::getImageBaseUrl() . '/avatar_icon_backend_3.png';
                    $path = Yii::$app->params['assets_path']['img.admin'] . Yii::$app->user->identity->getId() . '.png';
                    if (Utility::check_url_file_exists($path) !== false) {
                        $img = $path;
                    }
                    return $img;
                }
            ],
            [
                'attribute' => 'status',
                'value' => ($model['status'] == 1) ? 'Active' : 'Deactive'
            ],
            [
                'attribute' => 'last_active_time',
                'label' => Yii::t('cms','Last active time' ),
                'value' => Utility::formatDataTime($model['last_active_time'], '-', '/', true),
            ],
            [
                'attribute' => 'created_by',
                'label' => Yii::t('cms','Created By' ),
                'value' => Admin::getAttributeValue(['id' => $model['created_by']], 'username')
            ],
            [
                'attribute' => 'updated_by',
                'label' => Yii::t('cms','Updated By' ),
                'value' => Admin::getAttributeValue(['id' => $model['updated_by']], 'username')
            ],
            [
                'attribute' => 'created_time',
                'label' => Yii::t('cms','Created Time' ),
                'value' => Utility::formatDataTime($model['created_time'], '-', '/', true),
            ],
            [
                'attribute' => 'updated_time',
                'label' => Yii::t('cms','Updated Time' ),
                'value' => Utility::formatDataTime($model['updated_time'], '-', '/', true),
            ],
            [
                'attribute' => 'group_ids',
                'label' => Yii::t('cms','Admin Groups' ),
                'format' => ['html'],
                'value' => function ($model) {
                    $str_ids = ($model['group_ids'] != '') ? json_decode($model['group_ids']) : [];
                    $str = '';
                    foreach ($str_ids as $gr_id) {
                        $str .= '<p>' . AdminGroup::getAttributeValue(['id' => $gr_id], 'name') . '</p>';
                    }
                    return $str;
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