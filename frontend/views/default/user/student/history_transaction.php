<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 4:23 CH
 */

use yii\helpers\Url;
use common\components\Utility;
use yii\widgets\LinkPager;

?>

<div class="w3-container w3-card-2 w3-white w3-margin-bottom" style="padding-bottom: 30px">
    <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-history fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Lịch sử giao dịch</h2>
    <div class="w3-container">
        <table class="w3-table-all w3-hoverable">
            <thead>
            <tr class="w3-teal">
                <th>Mã giao dịch</th>
                <th>Thời gian</th>
                <th>Nội dung</th>
                <th>(+)</th>
                <th>(-)</th>
                <th>Số dư</th>
            </tr>
            </thead>
            <?php foreach ($transactions as $trans) {  ?>
                <tr>
                    <td><?php echo $trans['request_id'] ?></td>
                    <td><?php echo Utility::formatDataTime($trans['created_time'], '-', '/', true) ?></td>
                    <td><?php echo (isset(Yii::$app->params['transaction_action'][$trans['action']]) ? Yii::$app->params['transaction_action'][$trans['action']] : '') ?></td>
                    <td><?php echo number_format($trans['price']) ?></td>
                    <td><?php echo (intval($trans['price']) < 0) ? '-' . number_format($trans['price']) : 0 ?></td>
                    <td><?php echo number_format($trans['user_balance']) ?></td>
                </tr>
            <?php } ?>
        </table>
        <?php
        // display pagination
        echo LinkPager::widget([
            'pagination' => $pages,
        ]);
        ?>
    </div>
</div>

<style>
    .active_ht {
        background: #9acfea;
        color: #0000aa;
    }
</style>