<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use frontend\assets\AppAsset;
use common\components\AssetApp;

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

<div class="wrapper">
    <?php echo $this->render('components/header.php') ?>

    <div class="main">
        <?php echo $content ?>
    </div>

    <?php echo $this->render('components/footer.php') ?>
</div>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
