<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 4:23 CH
 */

use yii\helpers\Url;
use common\components\Utility;

?>
<div class="w3-container w3-card-2 w3-white w3-margin-bottom" style="padding-bottom: 30px">
    <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-bell fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Thông báo</h2>
    <div class="w3-container">
        <?php foreach ($list_notification as $item) { ?>
        <div class="w3-row item <?php echo ($item['status'] == 0) ? 'new_no' : '' ?>">
            <div class="w3-col l1">
                <div class="avatar">
                    <?php
                    $img = '';
                    if ($item['sender_id'] == 0) {
                        $img = Yii::$app->params['assets_path']['img.common'] . 'admin.png';
                    } else {
                        $img = Yii::$app->params['assets_path']['img.user'] . $item['sender_id'] . '.png';
                    }
                    if ($img == '') {
                        $img = Yii::$app->params['assets_path']['img.common'] . 'admin.png';
                    }
                    ?>
                    <img src="<?php echo $img ?>" style="width: 100%;height: 100%">
                </div>
            </div>
            <div class="w3-col l11">
                <a href="<?php echo Url::toRoute(['/thong-bao/' . $item['id']]) ?>">
                    <div class="content">
                        <?php echo Utility::truncateStringWords($item['content'], 200) ?><br>
                        <?php echo '<i style="font-size: 12px">' . $item['created_time'] . '</i>' ?>
                    </div>
                </a>
            </div>
        </div>
        <?php } ?>
    </div>
</div>

<style>
    .active_nt {
        background: #9acfea;
        color: #0000aa;
    }
    .item {
        height: 80px;
    }
    .item .avatar {
        line-height: 80px;
        width: 40px;
    }
    .item .avatar img {}
    .item .content {
        border-bottom: 1px solid #ccc;
    }
    .item .content:hover {
        color: #00AA88;
    }
    .item {}
    .item {}
    .item {}
    .new_no {
        color: firebrick;
    }
</style>

