<?php
/**
 * Created by PhpStorm.
 * User: Bac Truong Van
 * Date: 14/03/2017
 * Time: 11:49 CH
 */
use yii\helpers\Url;
use yii\helpers\Html;
use backend\assets\AppAsset;
use common\components\AssetApp;

AppAsset::register($this);

?>
<?php $this->beginPage() ?>
    <!DOCTYPE html>
    <html lang="<?php echo Yii::$app->language; ?>">
    <head>
        <meta charset="<?php echo Yii::$app->charset; ?>"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <?php echo AssetApp::regCssFile('login.css'); ?>
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

        <script type="text/javascript">
            var BACKEND_HOST_PATH = "<?php print Url::base() . '/'; ?>";
        </script>
        <noscript>
            <p style="text-align: center;margin-top: 100px;color: brown;font-size: 1.5em">Xin lỗi website yêu cầu sử dụng Javascript. Hãy bật Javascript trên trình duyệt của bạn đề tiếp tục.</p>
            <style>div { display:none; }</style>
        </noscript>

        <title><?php echo Html::encode($this->title); ?></title>
        <?php $this->head() ?>
    </head>
    <body class="gray-bg">
    <?php $this->beginBody() ?>
    <div class="middle-box loginscreen  animated fadeInDown">
        <?php echo $content; ?>
    </div>
    <?php $this->endBody() ?>
    <script type="text/javascript">
        $ ("#capcha-refresh-button").click(function(event) {
            event.preventDefault();
            $('img[id$="-verifycode-image"]').click();
        })
    </script>
    </body>
    </html>
<?php $this->endPage() ?>