<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use frontend\assets\AppAsset;
use common\components\AssetApp;
use yii\helpers\Url;

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

    <?php AssetApp::regCssFile('w3.css') ?>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster&effect=brick-sign">
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300italic,400,400italic,500,500italic,700,700italic,&subset=latin,latin-ext,vietnamese' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:300,300italic,400,400italic,500,500italic,700,700italic,&subset=latin,latin-ext,vietnamese' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Taviraj" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <?php AssetApp::regCssFile('common.css') ?>
    <?php AssetApp::regCssFile('main.css') ?>

    <?php AssetApp::regJsFile('jquery.min.js') ?>
    <?php AssetApp::regJsFile('bootstrap.min.js') ?>
    <?php AssetApp::regJsFile('jquery.sticky-kit.min.js') ?>
    <?php AssetApp::regJsFile('bactv.js') ?>
    <?php AssetApp::regJsFilePlugin('dist/owl.carousel.min.js', 'owl-carousel') ?>
    <?php AssetApp::regJsFilePlugin('dist/jquery.barrating.min.js', 'jquery-bar-rating') ?>
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
                                <a href="javascript:void(0)"><i class="fa fa-camera fa-fw w3-margin-right w3-large" aria-hidden="true" style="font-size: 2.5em !important; color: rgba(0, 0, 0, 0.23);"></i></a>
                            </div>
                        </div>
                        <div class="w3-text-black w3-center w3-text-teal" style="margin-bottom: 20px">
                            <h2>Jane Doe</h2>
                        </div>
                        <ul class="w3-ul">
                            <li class="active_tk"><a href="<?php echo Url::toRoute(['/tai-khoan']) ?>"><i class="fa fa-info fa-fw w3-margin-right w3-large w3-text-teal"></i>Thông tin cá nhân</a></li>
                            <li class="active_mc"><a href="<?php echo Url::toRoute(['/khoa-hoc-cua-toi']) ?>"><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>Khóa học của tôi</a></li>
                            <li class="active_ht"><a href="<?php echo Url::toRoute(['/lich-su-giao-dich']) ?>"><i class="fa fa-history fa-fw w3-margin-right w3-large w3-text-teal"></i>Lịch sử giao dịch</a></li>
                            <li class="active_nt"><a href="<?php echo Url::toRoute(['/thong-bao']) ?>"><i class="fa fa-bell fa-fw w3-margin-right w3-large w3-text-teal"></i>Thông báo</a></li>
                            <li class="active_ba"><a href="<?php echo Url::toRoute(['/so-du-tai-khoan']) ?>"><i class="fa fa-money fa-fw w3-margin-right w3-large w3-text-teal"></i>Số dư tài khoản: <span class="w3-text-red"><b>30 đ</b></span></a></li>
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

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
