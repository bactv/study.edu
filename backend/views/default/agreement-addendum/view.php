<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\AgreementAddendum */

$this->title = $model->addendum_number;
$this->params['breadcrumbs'][] = ['label' => Yii::t('cms', 'Hợp đồng'), 'url' => ['/agreement/view', 'id' => $model->agreement_id]];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="agreement-addendum-view">

    <h1 style="margin-bottom: 10px"><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Icon::show('pencil-square-o') . " " .Yii::t('cms', 'Update'), ['update', 'id' => $model->addendum_id], ['class' => 'btn btn-primary']) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'addendum_id',
            [
                'attribute' => 'agreement_id',
                'label' => Yii::t('cms', 'Số HĐ'),
                'value' => \backend\models\Agreement::getAttributeValue(['agreement_id' => $model['agreement_id']], 'agreement_code')
            ],
            'addendum_number',
            [
                'attribute' => 'addendum_content',
                'format' => 'raw'
            ],
            [
                'attribute' => 'from_date',
                'label' => Yii::t('cms', 'Ngày hiệu lực'),
                'value' => \common\components\Utility::formatDataTime($model['from_date'], '-', '/', false)
            ],
            [
                'attribute' => 'to_date',
                'label' => Yii::t('cms', 'Ngày hết hạn'),
                'value' => \common\components\Utility::formatDataTime($model['to_date'], '-', '/', false)
            ],
            [
                'attribute' => 'addendum_created_time',
                'label' => Yii::t('cms', 'Created Time'),
                'value' => \common\components\Utility::formatDataTime($model['addendum_created_time'], '-', '/', true)
            ],
            [
                'attribute' => 'addendum_updated_time',
                'label' => Yii::t('cms', 'Updated Time'),
                'value' => \common\components\Utility::formatDataTime($model['addendum_updated_time'], '-', '/', true)
            ],
            [
                'attribute' => 'addendum_created_by',
                'label' => Yii::t('cms', 'Created By'),
                'value' => \backend\models\Admin::getAttributeValue(['id' => $model['addendum_created_by']], 'username')
            ],
            [
                'attribute' => 'addendum_updated_by',
                'label' => Yii::t('cms', 'Updated By'),
                'value' => \backend\models\Admin::getAttributeValue(['id' => $model['addendum_updated_by']], 'username')
            ]
        ],
    ]) ?>

</div>
