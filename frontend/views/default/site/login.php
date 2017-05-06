<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 11:21 CH
 */
use common\components\AssetApp;
use yii\helpers\Url;
use yii\bootstrap\Alert;

AssetApp::regCssFile('login.css');

?>
<div class="main_content"">
    <div class="login_form">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4 col-md-offset-4">
                    <div class="account-wall">
                        <h1 class="text-center login-title ft">Đăng nhập</h1>
                        <img class="profile-img" src="<?php echo AssetApp::getImageBaseUrl() . '/icons/avatar_login_icon.png' ?>" alt="">
                        <div class="error">
                            <?php if (Yii::$app->session->hasFlash('error')) {
                                echo Alert::widget([
                                    'options' => ['class' => 'alert-danger'],
                                    'body' => Yii::$app->session->getFlash('error'),
                                ]);
                            } ?>
                        </div>
                        <form class="form-signin" method="post" action="<?php echo Url::toRoute(['/dang-nhap']) ?>">
                            <input type="hidden" name="<?php echo Yii::$app->request->csrfParam ?>" value="<?php echo Yii::$app->request->csrfToken ?>">
                            <input type="text" name="username" value="<?php echo $model['username'] ?>" class="form-control ft" placeholder="Tên đăng nhập ..." required autofocus>
                            <br>
                            <input type="password" name="password" class="form-control ft" placeholder="Mật khẩu ..." required>
                            <div class="w3-row user_type w3-margin-bottom">
                                <div class="w3-col l6 ft">
                                    Học sinh: <input class="w3-radio" type="radio" name="user_type" value="1" <?php echo $model['type'] == 1 ? 'checked' : '' ?>>
                                </div>
                                <div class="w3-col l6 ft">
                                    Giáo viên: <input class="w3-radio" type="radio" name="user_type" value="2" <?php echo $model['type'] == 2 ? 'checked' : '' ?>>
                                </div>
                            </div>
                            <button class="btn btn-lg btn-block w3-teal ft" type="submit" name="btn-login" id="btn-login">Đăng nhập</button>
                            <label class="checkbox pull-left ft">
                                <input type="checkbox" name="remember-me" <?php echo $model['rememberMe'] == 1 ? 'checked' : '' ?>> Ghi nhớ đăng nhập
                            </label>
                            <a href="#" class="pull-right need-help ft w3-text-blue" target="_blank">Quên mật khẩu? </a><span class="clearfix"></span>
                        </form>
                        <p class="text-center new-account">Bạn chưa có tài khoản? <i><a href="<?php echo Url::toRoute(['/dang-ky']) ?>" class="w3-text-blue">Đăng ký</a></i> ngay </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).on('click', '#btn-login', function () {
        var username = $("input[name='username']").val();
        var password = $("input[name='password']").val();
        if (username == '') {
            $("input[name='username']").css({'border-color' : 'red'});
            return false;
        }
        if (password == '') {
            $("input[name='password']").css({'border-color' : 'red'});
            return false;
        }
    });
</script>
