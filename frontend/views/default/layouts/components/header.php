<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 9:25 CH
 */
use yii\helpers\Url;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);
?>

<div class="nav-top">
    <!-- Navbar (sit on top) -->
    <div class="w3-top">
        <div class="w3-bar w3-padding" style="background: #f7f7f7;border-bottom: 1px solid #ccc;">
            <a href="<?php echo Url::to('/') ?>" class="w3-bar-item w3-text-teal w3-col m2 w3-lobster font-effect-brick-sign" style="font-family: Lobster, Sans-serif;font-size: 30px"><b>STUDY.EDU</b></a>
            <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="toggle_nav()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
            <!-- Float links to the right. Hide them on small screens -->
            <div class="w3-col m8 w3-bar-item w3-text-teal w3-hide-medium w3-hide-small" style="padding: 13px 10px;">
                <a href="<?php echo Url::toRoute(['/on-thi-toan-hoc']) ?>" class="w3-bar-item">Toán Học</a>
                <a href="<?php echo Url::toRoute(['/on-thi-vat-ly']) ?>" class="w3-bar-item">Vật Lý</a>
                <a href="<?php echo Url::toRoute(['/on-thi-hoa-hoc']) ?>" class="w3-bar-item">Hóa Học</a>
                <a href="<?php echo Url::toRoute(['/on-thi-sinh-hoc']) ?>" class="w3-bar-item">Sinh Học</a>
                <a href="<?php echo Url::toRoute(['/on-thi-dia-ly']) ?>" class="w3-bar-item">Địa Lý</a>
                <a href="<?php echo Url::toRoute(['/on-thi-ngu-van']) ?>" class="w3-bar-item">Ngữ Văn</a>
                <a href="<?php echo Url::toRoute(['/on-thi-tieng-anh']) ?>" class="w3-bar-item">Tiếng Anh</a>
                <a href="<?php echo Url::toRoute(['/on-thi-lich-su']) ?>" class="w3-bar-item">Lịch sử</a>
                <a href="<?php echo Url::toRoute(['/on-thi-giao-duc-cong-dan']) ?>" class="w3-bar-item">GDCD</a>
                <a href="<?php echo Url::toRoute(['/trac-nghiem-theo-chuyen-de']) ?>" class="w3-bar-item">Luyện đề</a>
            </div>
            <?php if (!empty(Yii::$app->user->identity)) {
                $total_notification = count(\frontend\models\Notification::findAll(['receiver_id' => Yii::$app->user->identity->getId(), 'status' => 0]));
                ?>
                <div class="w3-right w3-hide-small w3-bar-item txt" style="padding: 13px 10px;">
                    <div class="w3-dropdown-click">
                        <a href="javascript:void(0)" onclick="myFunction2()" class="w3-bar-item" id="btn-notification"></a> <span class="label label-danger total_notification"><?php echo ($total_notification > 0) ? $total_notification : '' ?></span>
                        <ul id="dropdown-menu-notification" class="w3-dropdown-content w3-bar-block w3-border w3-ul">

                        </ul>
                    </div>
                    <div class="w3-dropdown-click">
                        <a onclick="myFunction()" class="w3-bar-item w3-text-teal"><?php echo Yii::$app->user->identity->getUsername() ?> <i class="fa fa-angle-down w3-text-teal" aria-hidden="true"></i></a>
                        <ul id="dropdown-menu-profile" class="w3-dropdown-content w3-bar-block w3-border w3-ul">
                            <li><a href="<?php echo Url::toRoute(['/tai-khoan']) ?>" class="w3-bar-item w3-text-teal"><i class="fa fa-user" aria-hidden="true"></i> Thông tin cá nhân</a></li>
                            <li><a href="<?php echo Url::toRoute(['/dang-xuat']) ?>" class="w3-bar-item w3-text-teal"><i class="fa fa-circle-o-notch" aria-hidden="true"></i> Đăng xuất</a></li>
                        </ul>
                    </div>
                </div>
            <?php } else { ?>
                <div class="w3-right w3-hide-small w3-bar-item" style="padding: 13px 4px;text-transform: uppercase;font-size: 12px;font-weight: bold;">
                    <a href="<?php echo Url::toRoute(['/dang-ky']) ?>" class="w3-bar-item w3-button w3-teal w3-border w3-border-teal w3-text-white w3-hover-teal w3-hover-text-white" style="margin-right: 10px;">Đăng ký</a>
                    <a href="<?php echo Url::toRoute(['/dang-nhap']) ?>" class="w3-bar-item w3-button w3-white w3-border w3-border-teal w3-text-teal w3-hover-white w3-hover-text-teal">Đăng nhập</a>
                </div>
            <?php } ?>
        </div>
    </div>

    <!-- Navbar on small screens -->
    <div id="mobile_nav" class="w3-bar-block w3-white w3-text-teal w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
        <a href="<?php echo Url::toRoute(['/on-thi-toan-hoc']) ?>" class="w3-bar-item"><?php echo Icon::show('calculator') ?> Toán Học</a>
        <a href="<?php echo Url::toRoute(['/on-thi-vat-ly']) ?>" class="w3-bar-item"><?php echo Icon::show('thermometer') ?> Vật Lý</a>
        <a href="<?php echo Url::toRoute(['/on-thi-hoa-hoc']) ?>" class="w3-bar-item"><?php echo Icon::show('flask') ?> Hóa Học</a>
        <a href="<?php echo Url::toRoute(['/on-thi-sinh-hoc']) ?>" class="w3-bar-item"><?php echo Icon::show('mars') ?> Sinh Học</a>
        <a href="<?php echo Url::toRoute(['/on-thi-dia-ly']) ?>" class="w3-bar-item"><?php echo Icon::show('flag') ?> Địa Lý</a>
        <a href="<?php echo Url::toRoute(['/on-thi-ngu-van']) ?>" class="w3-bar-item"><?php echo Icon::show('pencil-square-o') ?> Ngữ Văn</a>
        <a href="<?php echo Url::toRoute(['/on-thi-tieng-anh']) ?>" class="w3-bar-item"><?php echo Icon::show('users') ?> Tiếng Anh</a>
        <a href="<?php echo Url::toRoute(['/on-thi-lich-su']) ?>" class="w3-bar-item">Lịch sử</a>
        <a href="<?php echo Url::toRoute(['/on-thi-giao-duc-cong-dan']) ?>" class="w3-bar-item">GDCD</a>
        <a href="<?php echo Url::toRoute(['/trac-nghiem-theo-chuyen-de']) ?>" class="w3-bar-item"><?php echo Icon::show('book') ?> Luyện đề</a>
        <?php if (!empty(Yii::$app->user->identity)) { ?>
            <a href="<?php echo Url::toRoute(['/tai-khoan']) ?>" class="w3-bar-item"><i class="fa fa-user" aria-hidden="true"></i> Thông tin cá nhân</a>
            <a href="<?php echo Url::toRoute(['/dang-xuat']) ?>" class="w3-bar-item"><i class="fa fa-circle-o-notch" aria-hidden="true"></i> Đăng xuất</a>
        <?php } else { ?>
            <a href="<?php echo Url::toRoute(['/dang-ky']) ?>" class="w3-bar-item"><?php echo Icon::show('user-plus') ?> Đăng ký</a>
            <a href="<?php echo Url::toRoute(['/dang-nhap']) ?>" class="w3-bar-item"><?php echo Icon::show('key') ?> Đăng nhập</a>
        <?php } ?>
    </div>


</div>

<style>
    @-webkit-keyframes my {
        0% { color: #9e0505; }
        50% { color: #fff;  }
        100% { color: #F8CD0A;  }
    }
    @-moz-keyframes my {
        0% { color: #9e0505;  }
        50% { color: #fff;  }
        100% { color: #F8CD0A;  }
    }
    @-o-keyframes my {
        0% { color: #9e0505; }
        50% { color: #fff; }
        100% { color: #F8CD0A;  }
    }
    @keyframes my {
        0% { color: #9e0505;  }
        50% { color: #fff;  }
        100% { color: #F8CD0A;  }
    }
    .test {
        -webkit-animation: my 700ms infinite;
        -moz-animation: my 700ms infinite;
        -o-animation: my 700ms infinite;
        animation: my 400ms infinite;
    }
    .total_notification {
        border-radius: 50%;
        width: 30px !important;
        height: 30px !important;
    }
    #dropdown-menu-notification {
        width: 400px;
        margin-top: 38px;
        right: 0;
    }
    .w3-dropdown-click:hover {
        background: none !important;
    }
</style>

<script>
    $(document).ready(function () {
        var user_id = '<?php echo !empty(Yii::$app->user->identity) ? Yii::$app->user->identity->getId() : 0 ?>';
        if (user_id != '') {
            setInterval(function(){
                $.ajax({
                    method: 'GET',
                    data: {'user_id' : user_id},
                    url: '<?php echo Url::toRoute(['/user/get-new-notification']) ?>',
                    success: function (data) {
                        $(".total_notification").html(data);
                    }
                });
            }, 2000);
        }
    });

    function myFunction2() {
        var x = document.getElementById("dropdown-menu-notification");
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
            var user_id = '<?php echo !empty(Yii::$app->user->identity) ? Yii::$app->user->identity->getId() : 0 ?>';
            if (user_id != '') {
                $.ajax({
                    method: 'GET',
                    data: {'user_id' : user_id},
                    url: '<?php echo Url::toRoute(['/user/get-list-notification']) ?>',
                    success: function (data) {
                        $("#dropdown-menu-notification").html(data);
                    }
                });
            }
        }
        else {
            x.className = x.className.replace(" w3-show", "");
        }
    }
</script>