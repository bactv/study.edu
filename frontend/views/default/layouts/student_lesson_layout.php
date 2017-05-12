<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use frontend\assets\AppAsset;
use common\components\AssetApp;
use yii\helpers\Url;
use kartik\file\FileInput;
use common\components\Utility;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

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
    <?php AssetApp::regCssFile('lesson.css') ?>

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

<div class="wrapper">
    <?php echo $this->render('components/header.php') ?>

    <div class="w3-container main lesson_detail">
        <div class="w3-container">
            <div class="w3-row box_top">
                <div class="w3-col l3 w3-left prev"><a href="#" ><?php echo Icon::show('angle-left') ?> Bài trước</a></div>
                <div class="w3-col l6 w3-center"><a href="#" >Chuyên đề 1: Dao động cơ học</a></div>
                <div class="w3-col l3 w3-right next"><a href="#" >Bài tiếp theo <?php echo Icon::show('angle-right') ?></a></div>
            </div>
        </div>
        <div class="w3-container">
            <div class="w3-col l3 box_left">
                <p id="lesson_title">Bài 1: Tế bào và hệ thống các cấp tổ chức sống</p>
                <ul class="lesson_assets">
                    <li class="active"><a href="#"><span><?php echo Icon::show('play-circle', ['style' => 'color: #2ab573']) ?> Video</span></a></li>
                    <li><a href="#"><span><?php echo Icon::show('file-text', ['style' => 'color: #c39322']) ?> Bài giảng (PDF)</span></a></li>
                    <li><a href="#"><span><?php echo Icon::show('star-o', ['style' => 'color: #0d3ae6']) ?> Quiz 1</span></a></li>
                    <li><a href="#"><span><?php echo Icon::show('star-o', ['style' => 'color: #0d3ae6']) ?> Quiz 2</span></a></li>
                    <li><a href="#"><span><?php echo Icon::show('star-o', ['style' => 'color: #0d3ae6']) ?> Quiz 3</span></a></li>
                </ul>
            </div>

            <div class="w3-col l9 box_right">
                <?php echo $content; ?>
            </div>
        </div>
    </div>

    <?php echo $this->render('components/footer.php') ?>
</div>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
