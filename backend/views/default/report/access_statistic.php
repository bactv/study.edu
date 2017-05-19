<?php

use yii\helpers\Html;
use yii\widgets\Pjax;
use kartik\icons\Icon;
use yii\grid\GridView;
use kartik\form\ActiveForm;
use kartik\widgets\DatePicker;
use kartik\daterange\DateRangePicker;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $searchModel common\models\search\LessonQuizSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title = $this->params['title'] = Yii::t('cms', 'Thống kê truy cập');
$this->params['breadcrumbs'][] = $this->title;
?>

<script src="/themes/default/js/jquery.min.js"></script>

<div class="form-filter">
    <fieldset>
        <legend>Lọc thông tin</legend>
        <?php $form = ActiveForm::begin([
            'type' => ActiveForm::TYPE_HORIZONTAL,
            'formConfig' => [
                'labelSpan' => 2,
                'deviceSize' => ActiveForm::SIZE_SMALL
            ]
        ]); ?>

        <div class="row">
        <div class="col-md-4" style="margin-right: 20px">
            <?php
            $addon = <<< HTML
            <span class="input-group-addon">
            <i class="glyphicon glyphicon-calendar"></i>
            </span>
HTML;
            echo '<div class="input-group drp-container">';
            echo '<label class="control-label">Khoảng thời gian</label>';
            echo DateRangePicker::widget([
                    'name'=>'kvdate2',
                    'useWithAddon'=>true,
                    'convertFormat'=>true,
                    'startAttribute' => 'from_date',
                    'endAttribute' => 'to_date',
                    'startInputOptions' => ['value' => '2017-06-11'],
                    'endInputOptions' => ['value' => '2017-07-20'],
                    'pluginOptions'=>[
                        'locale'=>['format' => 'Y-m-d'],
                    ]
                ]) . $addon;
            echo '</div>';
            ?>
        </div>

        <div class="col-md-4">
            <?php
            echo '<div class="input-group drp-container">';
            echo '<label class="control-label">Loại</label>';
            echo Html::dropDownList('type_filter', '', [
                0 => 'Tất cả',
                1 => 'Đã đăng ký',
                2 => 'Vãng lai'
            ], ['class' => 'form-control']);
            echo '</div>';
            ?>
        </div>

        </div>
        <div class="row" style="margin-top: 20px">
            <div class="form-group">
                <?= Html::submitButton(Yii::t('cms', 'Search'), ['class' => 'btn btn-primary']) ?>
                <?= Html::resetButton(Icon::show('undo') . " " .  Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']); ?>
            </div>
        </div>

        <?php ActiveForm::end() ?>

    </fieldset>
</div>
