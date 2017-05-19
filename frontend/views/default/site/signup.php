<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 11:21 CH
 */
use yii\helpers\Url;
use common\components\AssetApp;
use yii\bootstrap\Alert;

AssetApp::regCssFile('signup.css');

?>

<div class="main_content">
    <div class="signup_form">
        <div class="container">
            <div class="row">
                <div class="form col-sm-6 col-md-4 col-md-offset-4">
                    <form role="form" method="POST" action="<?php echo Url::toRoute(['/dang-ky']) ?>">
                        <input type="hidden" name="<?php echo Yii::$app->request->csrfParam ?>" value="<?php echo Yii::$app->request->csrfToken ?>">
                        <h3 class="w3-center">Đăng ký tài khoản tại Study.edu</h3>
                        <div class="error">
                            <?php if (Yii::$app->session->hasFlash('error')) {
                                echo Alert::widget([
                                    'options' => ['class' => 'alert-danger'],
                                    'body' => Yii::$app->session->getFlash('error'),
                                ]);
                            } ?>
                        </div>
                        <hr class="colorgraph">
                        <div class="form-group">
                            <input type="text" name="username" id="username" value="<?php echo $model['username'] ?>" class="form-control input-lg ft" placeholder="Tên đăng nhập ..." tabindex="3">
                            <div class="error_username"></div>
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" id="password" class="form-control input-lg ft" placeholder="Mật khẩu ..." tabindex="4">
                            <div class="error_password"></div>
                        </div>
                        <div class="form-group">
                            <input type="text" name="full_name" id="full_name" value="<?php echo $model['full_name'] ?>" class="form-control input-lg ft" placeholder="Họ và tên ..." tabindex="4">
                            <div class="error_full_name"></div>
                        </div>
                        <div class="w3-row user_type w3-margin-bottom">
                            <div class="w3-col l6 m6 s6 ft w3-left">
                                Học sinh: <input class="w3-radio" type="radio" name="user_type" value="1" <?php echo ($model['type'] == 1 || $model['type'] == '') ? 'checked' : '' ?>>
                            </div>
                            <div class="w3-col l6 m6 s6 ft w3-right">
                                Giáo viên: <input class="w3-radio" type="radio" name="user_type" value="2" <?php echo ($model['type'] == 2) ? 'checked' : '' ?>>
                            </div>
                        </div>
                        <hr class="colorgraph">
                        <div class="w3-row w3-margin-bottom">
                            <button class="w3-col l5 m5 s5 btn btn-lg ft w3-left w3-teal" type="submit" name="btn-signup" id="btn-signup">Đăng ký</button>
                            <button class="w3-col l5 m5 s5 btn btn-lg ft w3-right" type="reset">Reset</button>
                        </div>
                        <p class="text-center new-account">Bạn đã có tài khoản? <i><a href="<?php echo Url::toRoute(['/dang-nhap']) ?>" class="w3-text-blue">Đăng nhập</a></i> ngay </p>
                    </form>
                </div>
            </div>
    </div>
</div>