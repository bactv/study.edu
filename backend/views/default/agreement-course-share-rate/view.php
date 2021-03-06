<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\AgreementCourseShareRate */

$this->title = \backend\models\Agreement::getAttributeValue(['agreement_id' => $model->agreement_id], 'agreement_code');
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Tỷ lệ chia sẻ khóa học'), 'url' => ['/agreement/view', 'id' => $model->agreement_id]];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="agreement-course-share-rate-view">

    <h1 style="margin-bottom: 10px"><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Icon::show('pencil-square-o') . " " .Yii::t('cms', 'Update'), ['update', 'agreement_id' => $model->agreement_id, 'course_id' => $model->course_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Icon::show('trash-o') . " " .Yii::t('cms', 'Delete'), ['delete', 'agreement_id' => $model->agreement_id, 'course_id' => $model->course_id], [
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
            'agreement_id',
            [
                'attribute' => 'course_id',
                'format' => 'raw',
                'value' => function ($model) {
                    return \backend\models\Course::getAttributeValue(['id' => $model['course_id']], 'name');
                }
            ],
            'share_rate',
        ],
    ]) ?>

</div>

<style>
    .table > tbody > tr > th {
        width: 20%;
    }
</style>