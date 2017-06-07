<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/06/2017
 * Time: 11:19 SA
 */
?>

<li id="notification_li">
    <div id="notificationContainer">
        <div id="notificationTitle">Thông báo</div>
        <div id="notificationsBody" class="notifications">
            <?php foreach ($list_notification as $item) { ?>
                <div class="item <?php echo ($item['status'] == 0) ? 'new_no' : '' ?>" id="<?php echo $item['id'] ?>">
                    <a href="<?php echo \yii\helpers\Url::toRoute(['/thong-bao/' . $item['id']]) ?>">
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
                            <img src="<?php echo $img ?>">
                        </div>
                        <div class="text">
                            <?php echo \common\components\Utility::truncateStringWords($item['content'], 100) ?>
                            <p id="time"><?php echo $item['created_time']  ?></p>
                        </div>
                    </a>
                </div>
            <?php } ?>
        </div>
        <div id="notificationFooter"><a href="<?php echo \yii\helpers\Url::toRoute(['/thong-bao']) ?>" target="_blank">Xem tất cả</a></div>
    </div>
</li>

<script type="text/javascript" >
    $(document).ready(function() {
        $("#notificationLink").click(function() {
            $("#notificationContainer").fadeToggle(300);
            $("#notification_count").fadeOut("slow");
            return false;
        });

        //Document Click hiding the popup
        $(document).click(function() {
            $("#notificationContainer").hide();
        });

        //Popup on click
        $("#notificationContainer").click(function() {
            return false;
        });

        $("#notificationsBody .item").on('click', function () {
            var id = $(this).attr('id');
            var _csrf = $("meta[name='csrf-token']").attr('content');
            $.ajax({
                method: 'POST',
                data: {'feed_id' : id, '_csrf' : _csrf},
                url: '<?php echo \yii\helpers\Url::toRoute(['/account/update-notification']) ?>'
            });
        });

    });
</script>

<style>
    .w3-ul li {
        padding: 0;
    }
    #notification_li {
        position:relative
    }
    #notificationContainer {
        /*background-color: #fff;*/
        /*border: 1px solid rgba(100, 100, 100, .4);*/
        /*-webkit-box-shadow: 0 3px 8px rgba(0, 0, 0, .25);*/
        /*overflow: visible;*/
        /*position: absolute;*/
        /*top: 80px;*/
        /*margin-left: -170px;*/
        /*width: 400px;*/
        /*z-index: 1;*/
        /*display: none; // Enable this after jquery implementation*/
    }

    #notificationContainer:before {
        content: '';
        display: block;
        position: absolute;
        width: 0;
        height: 0;
        color: transparent;
        border: 10px solid black;
        border-color: transparent transparent white;
        margin-top: -20px;
        margin-left: 188px;
    }

    #notificationTitle {
        font-weight: bold;
        padding: 8px;
        font-size: 13px;
        background-color: #ffffff;
        position: relative;
        z-index: 1000;
        width: 384px;
        border-bottom: 1px solid #dddddd;
    }
    #notificationsBody {
        padding: 10px !important;
        min-height:250px;
    }
    #notificationsBody .new_no {
        /*background: #ececec;*/
    }
    #notificationsBody .item {
        border-bottom: 1px solid #ccc;
        height: 70px;
        padding: 5px 3px;
    }
    #notificationsBody .item .avatar {
        height: 60px;
        line-height: 60px;
        float: left;
    }
    #notificationsBody .item img {
        border-radius: 50%;
        margin-right: 10px;
        width: 60px;
        height: 60px;
    }
    #notificationsBody .item .text {
        font-size: 13px;
        height: 60px;
    }
    #notificationsBody .item p#time {
        font-size: 11px;
        font-style: italic;
        color: #a25a5a;
    }
    #notificationFooter {
        background-color: #e9eaed;
        text-align: center;
        font-weight: bold;
        padding: 8px;
        font-size: 12px;
        border-top: 1px solid #dddddd;
    }
    #notification_count {
        padding: 3px 7px 3px 7px;
        background: #56a50c;
        color: #ffffff;
        font-weight: bold;
        margin-left: 10px;
        border-radius: 9px;
        -moz-border-radius: 9px;
        -webkit-border-radius: 9px;
        position: absolute;
        margin-top: -11px;
        font-size: 11px;
    }
</style>