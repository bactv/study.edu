<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use frontend\assets\AppAsset;
use common\components\AssetApp;
use yii\helpers\Url;
use kartik\file\FileInput;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>

    <?php AssetApp::regCssFilePlugin('css/bootstrap.min.css', 'bootstrap-3.3.7') ?>
    <?php AssetApp::regCssFilePlugin('css/font-awesome.min.css', 'font-awesome-4.7.0') ?>
    <?php AssetApp::regCssFilePlugin('animate.min.css', 'animate') ?>
    <?php AssetApp::regCssFilePlugin('dist/assets/owl.carousel.min.css', 'owl-carousel') ?>
    <?php AssetApp::regCssFilePlugin('dist/assets/owl.theme.default.css', 'owl-carousel') ?>

    <?php AssetApp::regCssFilePlugin('dist/themes/bars-1to10.css', 'jquery-bar-rating') ?>
    <?php AssetApp::regCssFilePlugin('dist/themes/bars-movie.css', 'jquery-bar-rating') ?>
    <?php AssetApp::regCssFilePlugin('dist/themes/bars-square.css', 'jquery-bar-rating') ?>
    <?php AssetApp::regCssFilePlugin('dist/themes/bars-pill.css', 'jquery-bar-rating') ?>
    <?php AssetApp::regCssFilePlugin('dist/themes/bars-reversed.css', 'jquery-bar-rating') ?>
    <?php AssetApp::regCssFilePlugin('dist/themes/bars-horizontal.css', 'jquery-bar-rating') ?>
    <?php AssetApp::regCssFilePlugin('dist/themes/fontawesome-stars.css', 'jquery-bar-rating') ?>
    <?php AssetApp::regCssFilePlugin('dist/themes/css-stars.css', 'jquery-bar-rating') ?>
    <?php AssetApp::regCssFilePlugin('dist/themes/bootstrap-stars.css', 'jquery-bar-rating') ?>
    <?php AssetApp::regCssFilePlugin('dist/themes/fontawesome-stars-o.css', 'jquery-bar-rating') ?>
    <?php AssetApp::regCssFilePlugin('src/css/bootstrap-dialog.css', 'bootstrap3-dialog') ?>

    <?php AssetApp::regCssFile('w3.css') ?>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster&effect=brick-sign">
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300italic,400,400italic,500,500italic,700,700italic,&subset=latin,latin-ext,vietnamese' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:300,300italic,400,400italic,500,500italic,700,700italic,&subset=latin,latin-ext,vietnamese' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Taviraj" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <?php AssetApp::regCssFile('common.css') ?>
    <?php AssetApp::regCssFile('main.css') ?>

    <?php AssetApp::regJsFile('bootstrap.min.js') ?>
    <?php AssetApp::regJsFile('jquery.sticky-kit.min.js') ?>
    <?php AssetApp::regJsFile('bactv.js') ?>
    <?php AssetApp::regJsFilePlugin('dist/owl.carousel.min.js', 'owl-carousel') ?>
    <?php AssetApp::regJsFilePlugin('dist/jquery.barrating.min.js', 'jquery-bar-rating') ?>
    <?php AssetApp::regJsFilePlugin('src/js/bootstrap-dialog.js', 'bootstrap3-dialog') ?>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<style>
    .progress {
        position: relative;
        border-radius: 0;
    }

    .progress span {
        position: absolute;
        display: block;
        width: 100%;
        color: black;
    }
    p#title {
        text-transform: uppercase;
    }
</style>
<div class="wrapper">
    <?php echo $this->render('components/header.php') ?>

    <div class="main">
        <div class="main_content">
            <div class="w3-row user_info">
                <div class="w3-col l3 box_left">
                    <div class="w3-white w3-text-grey w3-card-2">
                        <div class="w3-display-container">
                            <img src="https://www.w3schools.com/w3images/avatar_hat.jpg" style="width:100%" alt="Avatar">
                            <div class="w3-display-bottomleft w3-container w3-text-black">
                                <a href="#" data-toggle="modal" data-target="#change_avatar"><i class="fa fa-camera fa-fw w3-margin-right w3-large" aria-hidden="true" style="font-size: 2.5em !important; color: rgba(0, 0, 0, 0.23);"></i></a>
                            </div>
                        </div>
                        <div class="w3-text-black w3-center w3-text-teal" style="margin-bottom: 20px">
                            <h2><?php echo Yii::$app->user->identity->getUsername(); ?></h2>
                        </div>
                        <ul class="w3-ul">
                            <li class="active_tk"><a href="<?php echo Url::toRoute(['/tai-khoan']) ?>"><i class="fa fa-info fa-fw w3-margin-right w3-large w3-text-teal"></i>Thông tin cá nhân</a></li>
                            <li class="active_mc"><a href="<?php echo Url::toRoute(['/khoa-hoc-cua-toi']) ?>"><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>Khóa học của tôi</a></li>
                            <li class="active_ht"><a href="<?php echo Url::toRoute(['/lich-su-giao-dich']) ?>"><i class="fa fa-history fa-fw w3-margin-right w3-large w3-text-teal"></i>Lịch sử giao dịch</a></li>
                            <li class="active_nt"><a href="<?php echo Url::toRoute(['/thong-bao']) ?>"><i class="fa fa-bell fa-fw w3-margin-right w3-large w3-text-teal"></i>Thông báo</a></li>
                            <li class="active_ba"><a href="<?php echo Url::toRoute(['/so-du-tai-khoan']) ?>"><i class="fa fa-money fa-fw w3-margin-right w3-large w3-text-teal"></i>Số dư tài khoản: <span class="w3-text-red"><b><?php echo number_format(Yii::$app->view->params['student']['balance']) ?> đ</b></span></a></li>
                            <li class="active_chr"><a href="<?php echo Url::toRoute(['/nap-tien']) ?>"><i class="fa fa-eur fa-fw w3-margin-right w3-large w3-text-teal"></i>Nạp tiền</a></li>
                        </ul>
                    </div>
                </div>
                <div class="w3-col l9 box_right">
                    <?php echo $content ?>
                </div>
            </div>
        </div>
    </div>

    <?php echo $this->render('components/footer.php') ?>
</div>


<!-- Modal -->
<div id="change_avatar" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <form id="form_ch_avatar" method="POST" action="<?php echo Url::toRoute(['/user/change-avatar']) ?>"  enctype="multipart/form-data">
                <input type="hidden" name="<?php echo Yii::$app->request->csrfParam ?>" value="<?php echo Yii::$app->request->csrfToken ?>">
                <div class="modal-header" style="background: #337ab7;">
                    <button type="button" class="close w3-text-white" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title w3-text-white">Đổi ảnh đại diện</h4>
                </div>
                <div class="modal-body">
                        <?php
                        echo FileInput::widget([
                            'name' => 'avatar',
                            'id' => 'file_avatar'
                        ]);
                        ?>
                    <div class="w3-text-red error_extension"></div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success" data-dismiss="modal" style="display: none" name="btn-update" id="btn-update">Cập nhật</button>
                </div>
            </form>
        </div>

    </div>
</div>


<script>
    $(document).on('change', '#file_avatar', function () {
        var file = $(this).val();
        var extension = file.replace(/^.*\./, '').toLowerCase();
        if (extension != 'jpg' && extension && 'png' && extension && 'jpeg' && extension && extension != 'gif') {
            $(".error_extension").text("Chỉ cho phép các phần mở rộng chứa đuôi .png, .jpg, .jpeg, .gif");
            $("#btn-update").hide();
        } else {
            $(".error_extension").text('');
            $("#btn-update").show();
        }
    });
    $(document).on('click', "#btn-update", function () {
        $("#form_ch_avatar").submit();
    });
    $(document).on('submit', '#form_ch_avatar', function (e) {
        var postData = $(this).serializeArray();
        console.log(postData);
        var formURL = $(this).attr("action");
        console.log(formURL);
        $.ajax({
            url: formURL,
            type: "POST",
            data: postData,
            success: function(data) {
                console.log(data);
            },
            error: function(jqXHR, status, error) {
                console.log(status + ": " + error);
            }
        });
        e.preventDefault();
    });
</script>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
