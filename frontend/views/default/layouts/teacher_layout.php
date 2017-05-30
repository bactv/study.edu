<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use frontend\assets\AppAsset;
use common\components\AssetApp;
use yii\helpers\Url;
use kartik\file\FileInput;
use common\components\Utility;

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
    <?php AssetApp::regCssFile('mobile.css') ?>

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
                            <?php
                            $img = AssetApp::getImageBaseUrl() . '/icons/male_teacher_icon.png';
                            $path = Yii::$app->params['assets_path']['img.user'] . Yii::$app->user->identity->getId() . '.png';
                            if (Utility::check_url_file_exists($path) !== false) {
                                $img = $path;
                            }
                            ?>
                            <img src="<?php echo $img; ?>" style="width:100%;height: 200px" alt="Avatar">
                            <div class="w3-display-bottomleft w3-container w3-text-black">
                                <a href="#" data-toggle="modal" data-target="#change_avatar"><i class="fa fa-camera fa-fw w3-margin-right w3-large" aria-hidden="true" style="font-size: 2.5em !important; color: rgba(0, 0, 0, 0.23);"></i></a>
                            </div>
                        </div>
                        <div class="w3-text-black w3-center w3-text-teal" style="margin-bottom: 20px">
                            <h2><?php echo Yii::$app->user->identity->getUsername(); ?></h2>
                        </div>
                        <ul class="w3-ul">
                            <li class="active_tk"><a href="<?php echo Url::toRoute(['/tai-khoan']) ?>"><i class="fa fa-info fa-fw w3-margin-right w3-large w3-text-teal"></i>Thông tin cá nhân</a></li>
                            <li class="active_mc"><a href="<?php echo Url::toRoute(['/quan-ly-khoa-hoc']) ?>" target="_blank"><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>Quản lý khóa học</a></li>
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
                        'model' => Yii::$app->view->params['user'],
                        'attribute' => 'avatar',
                        'id' => 'file_avatar'
                    ]);
                    ?>
                    <div class="w3-text-red error_extension"></div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success" name="btn-update" id="btn-update">Cập nhật</button>
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

    function submit_form() {
//        var postData = $("#form_ch_avatar").serializeArray();
//        var formURL = $("#form_ch_avatar").attr("action");
//
//        var formData = new FormData($("#form_ch_avatar")[0]);
//        console.log(formData);
//        $.ajax({
//            url: formURL,
//            type: "POST",
//            data: postData,
//            beforeSend: function () {
//                $('btn-update').attr("disabled","disabled");
//                $('.modal-body').css('opacity', '.5');
//            },
//            success: function(data) {
//                console.log(data);
//            },
//            error: function(jqXHR, status, error) {
//                console.log(status + ": " + error);
//            }
//        });
//        return false;
    }
</script>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
