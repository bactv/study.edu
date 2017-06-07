<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/06/2017
 * Time: 2:07 CH
 */
use yii\helpers\Url;
use kartik\icons\Icon;
use zxbodya\yii2\tinymce\TinyMce;
use zxbodya\yii2\elfinder\TinyMceElFinder;

Icon::map($this, Icon::FA);

?>
<div class="w3-container w3-card-2 w3-white w3-margin-bottom" style="padding-bottom: 30px">
    <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-bell fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Phản hồi hệ thống</h2>
    <div class="w3-container">
        <form class="form-horizontal" method="POST" action="<?php echo Url::toRoute(['/user/create-feedback']) ?>">
            <input type="hidden" name="<?php echo Yii::$app->request->csrfParam ?>" value="<?php echo Yii::$app->request->csrfToken ?>">
            <div class="form-group">
                <label class="control-label col-sm-12" for="full_name" style="text-align: left">Nội dung phản hồi:</label>
                <div class="col-sm-12">
                    <?= TinyMce::widget([
                        'fileManager' => [
                            'class' => TinyMceElFinder::className(),
                            'connectorRoute' => 'el-finder/connector',
                        ],
                        'name' => 'content',
                        'value' => $model['content']
                    ]) ?>
                </div>
            </div>

            <div class="form-group" style="text-align: left">
                <div class="col-sm-12">
                    <button type="submit" class="btn btn-primary" id="btn-info" name="btn-info"><?php echo Icon::show('send') ?> Gửi phản hồi</button>
                </div>
            </div>
        </form>
    </div>
</div>

<style>
    .active_fb {
        background: #9acfea;
        color: #0000aa;
    }
</style>
