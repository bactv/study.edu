<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use frontend\assets\AppAsset;
use common\components\AssetApp;
use yii\helpers\Url;
use kartik\file\FileInput;
use common\components\Utility;
use frontend\models\Teacher;

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
    <?php AssetApp::regCssFile('course_detail.css') ?>
    <?php AssetApp::regCssFile('mobile.css') ?>

    <?php AssetApp::regJsFile('bootstrap.min.js') ?>
    <?php AssetApp::regJsFile('jquery.sticky-kit.min.js') ?>
    <?php AssetApp::regJsFile('bactv.js') ?>
    <?php AssetApp::regJsFilePlugin('dist/owl.carousel.min.js', 'owl-carousel') ?>
    <?php AssetApp::regJsFilePlugin('dist/jquery.barrating.min.js', 'jquery-bar-rating') ?>
    <?php AssetApp::regJsFilePlugin('src/js/bootstrap-dialog.js', 'bootstrap3-dialog') ?>
    <?php $this->head() ?>
</head>
<body class="w3-light-grey w3-content" style="max-width:1600px">
<?php $this->beginBody() ?>
<div class="wrapper">
    <?php echo $this->render('components/header.php') ?>


    <?php
    $course = Yii::$app->params['course'];
    $logo = AssetApp::getImageBaseUrl() . '/icons/img_course_default.jpg';
    $url = Yii::$app->params['assets_path']['img.course'] . $course['id'] . '.png';
    if (Utility::check_url_file_exists($url)) {
        $logo = $url;
    }

    $teachers = '';
    $ex = json_decode($course['teacher_ids']);
    if (is_array($ex)) {
        foreach ($ex as $item) {
            $tch = Teacher::getAttributeValue(['user_id' => $item], 'full_name');
            $url_teacher = Url::toRoute(['/gioi-thieu-giao-vien/' . Utility::rewrite($tch) . '-cn' . Utility::encrypt_decrypt('encrypt', $item)]);
            $teachers .= '<a href="' . $url_teacher . '" class="teacher_name w3-text-teal" target="_blank">' . $tch . '</a>' . ', ';
        }
    }
    $teachers = substr(trim($teachers), 0, strlen(trim($teachers)) - 1);
    ?>

    <!-- Sidebar/menu -->
    <nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
        <div class="w3-container">
            <a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-padding w3-hover-grey" title="close menu">
                <i class="fa fa-remove"></i>
            </a>
            <img src="<?php echo $logo ?>" class="w3-round" style="width: 100%;height: 200px"><br><br>
            <h4><b><?php echo $course['name'] ?></b></h4>
            <p class="w3-text-grey">Giáo viên: <?php echo $teachers ?></p>
        </div>
        <div class="w3-bar-block">
            <a href="#" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-th-large fa-fw w3-margin-right"></i>DANH SÁCH BÀI GIẢNG</a>
<!--            <a href="#" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-user fa-fw w3-margin-right"></i>TIẾN TRÌNH CỦA TÔI</a>-->
<!--            <a href="#" onclick="w3_close()" class="w3-bar-item w3-button w3-padding"><i class="fa fa-envelope fa-fw w3-margin-right"></i>THẢO LUẬN</a>-->
        </div>
    </nav>

    <!-- Overlay effect when opening sidebar on small screens -->
    <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

    <!-- !PAGE CONTENT! -->
    <div class="w3-main" style="margin-left:300px;padding-top: 20px">

        <?php echo $content ?>

        <!-- End page content -->
    </div>
</div>

<script>
    // Script to open and close sidebar
    function w3_open() {
        document.getElementById("mySidebar").style.display = "block";
        document.getElementById("myOverlay").style.display = "block";
    }

    function w3_close() {
        document.getElementById("mySidebar").style.display = "none";
        document.getElementById("myOverlay").style.display = "none";
    }
</script>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
