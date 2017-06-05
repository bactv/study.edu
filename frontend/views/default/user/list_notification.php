<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/06/2017
 * Time: 11:19 SA
 */
?>

<div id="box_msg">
    <div id="hder"><p>Thông báo</p></div>
    <div id="list_msg">
        <?php foreach ($list_notification as $item) { ?>
            <div class="w3-row">
                <div class="item">
                    <div class="w3-col l4">
                        <?php
                        if ($item['sender_id'] == 0) {
                            $img = Yii::$app->params['assets_path']['img.common'] . 'admin.png';
                        } else {
                            $img = Yii::$app->params['assets_path']['img.common'] . $item['sender_id'] . '.png';
                        }
                        ?>
                        <img src="<?php echo $img ?>" style="width: 50px;height: 50px;border-radius: 50%">

                    </div>
                    <div class="w3-col l8">
                        <?php echo \common\components\Utility::truncateStringWords($item['content'], 70) ?>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
    <div id="foter"><p>Xem tất cả >></p></div>
</div>

<style>
    #box_msg {}
    #box_msg #hder p {
        padding: 5px 10px 5px 10px;
        font-weight: bold;
        border-bottom: 1px solid #ccc;
        font-size: 13px;
        color: teal;}
    #box_msg #foter p {
        padding: 5px 10px 5px 10px;
        font-weight: bold;
        border-top: 1px solid #ccc;
        font-size: 13px;
        color: teal;
        text-align: center;
        margin: 0;
    }
    #box_msg #list_msg {
        height: 300px;
        padding: 0 10px;
    }
    #box_msg #list_msg .w3-row {
        height: 50px;
        line-height: 50px;
        border-bottom:  1px solid #ccc;
    }
</style>