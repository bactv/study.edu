<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 4:23 CH
 */

use yii\helpers\Url;
use common\components\Utility;
use kartik\icons\Icon;
use kartik\date\DatePicker;
use yii\bootstrap\Alert;
use zxbodya\yii2\tinymce\TinyMce;
use zxbodya\yii2\elfinder\TinyMceElFinder;

Icon::map($this, Icon::FA);

?>
<style>
    .active_tk {
        background: #9acfea;
        color: #0000aa;
    }
    .form-horizontal .control-label {
        text-align: left;
    }
</style>


<div class="w3-container w3-card-2 w3-white w3-margin-bottom" style="padding-bottom: 30px;">
    <h2 class="w3-text-grey w3-padding-16 w3-border-bottom w3-border-color-teal"><i class="fa fa-info fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Thông tin cá nhân</h2>
    <div class="w3-container" style="padding-top: 30px;">
        <div class="error w3-margin-bottom">
            <?php if (Yii::$app->session->hasFlash('error')) {
                echo Alert::widget([
                    'options' => ['class' => 'alert-danger'],
                    'body' => Yii::$app->session->getFlash('error'),
                ]);
            } ?>
            <?php if (Yii::$app->session->hasFlash('success')) {
                echo Alert::widget([
                    'options' => ['class' => 'alert-success'],
                    'body' => Yii::$app->session->getFlash('success'),
                ]);
            } ?>
        </div>

        <fieldset style="margin-bottom: 30px">
            <legend>Thông tin cá nhân</legend>
            <form class="form-horizontal" method="POST" action="<?php echo Url::toRoute(['/tai-khoan']) ?>">
                <input type="hidden" name="<?php echo Yii::$app->request->csrfParam ?>" value="<?php echo Yii::$app->request->csrfToken ?>">
                <div class="form-group">
                    <label class="control-label col-sm-3" for="full_name">Họ và tên:</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="full_name" name="full_name" placeholder="Họ và tên ..." value="<?php echo $model['full_name'] ?>" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-3" for="email">Email:</label>
                    <div class="col-sm-9">
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email ..." value="<?php echo $model['email'] ?>">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-3 w3-left" for="phone">Số ĐT:</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="phone" name="phone" placeholder="Số ĐT ..." value="<?php echo $model['phone'] ?>">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-3 w3-left" for="work_place">Nơi công tác:</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="work_place" name="work_place" placeholder="Nơi công tác ..." value="<?php echo $model['work_place'] ?>">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-3 w3-left" for="intro">Giới thiệu bản thân:</label>
                    <div class="col-sm-9">
                        <?= TinyMce::widget([
                            'fileManager' => [
                                'class' => TinyMceElFinder::className(),
                                'connectorRoute' => 'el-finder/connector',
                            ],
                            'name' => 'intro',
                            'value' => $model['intro']
                        ]) ?>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <button type="submit" class="btn btn-primary" id="btn-info" name="btn-info"><?php echo Icon::show('save') ?> Cập nhật</button>
                    </div>
                </div>
            </form>
        </fieldset>


        <fieldset>
            <legend>Thông tin đăng nhập</legend>
            <form class="form-horizontal" method="POST" action="<?php echo Url::toRoute(['/tai-khoan']) ?>">
                <input type="hidden" name="<?php echo Yii::$app->request->csrfParam ?>" value="<?php echo Yii::$app->request->csrfToken ?>">
                <div class="form-group">
                    <label class="control-label col-sm-3" for="username">Tên đăng nhập:</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="username" value="<?php echo $user['username'] ?>" disabled>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="password">Nhập mật khẩu cũ:</label>
                    <div class="col-sm-9">
                        <input type="password" class="form-control" id="password" name="password" placeholder="Nhập mật khẩu cũ ..." required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="new_password">Nhập mật khẩu mới:</label>
                    <div class="col-sm-9">
                        <input type="password" class="form-control" id="new_password" name="new_password" placeholder="Nhập mật khẩu mới ..." required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="re_new_password">Nhập lại mật khẩu mới:</label>
                    <div class="col-sm-9">
                        <input type="password" class="form-control" id="re_new_password" name="re_new_password" placeholder="Nhập lại mật khẩu mới ..." required>
                        <div class="error_re_pass w3-text-red"></div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <button type="submit" class="btn btn-primary" id="btn-login" name="btn-login"><?php echo Icon::show('save') ?> Cập nhật</button>
                    </div>
                </div>
            </form>
        </fieldset>

    </div>
</div>

<script>
    $(document).on('click', '#btn-login', function () {
        var new_password = $("#new_password").val();
        var re_new_password = $("#re_new_password").val();
        if (new_password != re_new_password) {
            $(".error_re_pass").text('Mật khẩu không khớp.');
            $("input[id='re_new_password']").css({'color' : 'red'});
            return false;
        }
    });
</script>