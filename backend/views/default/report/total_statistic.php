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

<style>
    .item {
        padding-right: 15px;
    }
    .txt_center {
        text-align: center;
    }
    .table > thead > tr > th {
        background: cornflowerblue;
        color: #f7f7f7;
        font-size: 13px;
    }
</style>

<div class="filter-content">
    <fieldset>
        <legend>Lọc thống kê</legend>
        <?php $form = ActiveForm::begin([
            'type' => ActiveForm::TYPE_HORIZONTAL,
            'formConfig' => [
                'labelSpan' => 2,
                'deviceSize' => ActiveForm::SIZE_SMALL
            ],
            'method' => 'GET',
            'action' => \yii\helpers\Url::toRoute(['/report/total-statistic'])
        ]) ?>

        <div class="row">
            <div class="col-md-4 item">
                <?php
                echo '<label class="control-label">Khoảng thời gian</label>';
                echo '<div class="drp-container" id="form_time">';
                echo \kartik\daterange\DateRangePicker::widget([
                    'name' => 'daterange',
                    'value' => $daterange,
                    'presetDropdown' => true,
                    'hideInput' => true,
                    'pluginOptions' => [
                        'locale' => ['format' => 'D/M/YYYY'],
                        'allowClear' => true
                    ],
                    'options' => [
                        'placeholder' => 'Khoảng thời gian ...',
                        'id' => 'notification_daterange'
                    ]
                ]);
                echo '</div>';
                ?>

            </div>
        </div>

        <div class="row" style="margin-top: 20px;text-align: center">
            <div class="form-group">
                <?= Html::submitButton(Icon::show('search') . " " .  Yii::t('cms', 'search'), ['class' => 'btn btn-primary', 'name' => 'search']) ?>
                <?= Html::resetButton(Icon::show('undo') . " " .  Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']); ?>
            </div>
        </div>

        <?php ActiveForm::end(); ?>
    </fieldset>
</div>

<div class="reaults">
    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
        <thead>
        <tr>
            <th class="txt_center">Thời gian</th>
            <th class="txt_center">Tổng số lượt đăng ký</th>
            <th class="txt_center">Tổng số lượt nạp tiền</th>
            <th class="txt_center">Doanh thu nạp tiền</th>
        </tr>
        </thead>
        <tbody>
        <?php $total_subscribe = 0; $total_charge = 0; $total_revenue_charge = 0;?>
        <?php foreach ($results as $k => $item) {
            $total_subscribe += $item['total_subscribe'];
            $total_charge += $item['total_charge'];
            $total_revenue_charge += $item['total_revenue_charge'];
            ?>
            <tr>
                <td class="txt_center"><b><?php echo $k ?></b></td>
                <td class="txt_center"><?php echo number_format($item['total_subscribe']) ?></td>
                <td class="txt_center"><?php echo number_format($item['total_charge']) ?></td>
                <td class="txt_center"><?php echo number_format($item['total_revenue_charge']) ?></td>
            </tr>
        <?php } ?>
        <tr>
            <th class="txt_center">Tổng</th>
            <th class="txt_center"><?php echo number_format($total_subscribe) ?></th>
            <th class="txt_center"><?php echo number_format($total_charge) ?></th>
            <th class="txt_center"><?php echo number_format($total_revenue_charge) ?></th>
        </tr>
        </tbody>
    </table>
</div>