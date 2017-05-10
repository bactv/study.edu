<?php
/**
 * Created by PhpStorm.
 * User: Bac Truong Van
 * Date: 04/03/2017
 * Time: 12:58 SA
 */
use yii\helpers\Html;
use common\components\AssetApp;
use kartik\icons\Icon;
use common\components\Utility;

Icon::map($this, Icon::FA);
use backend\models\Menu;
?>

<div class="row person_info">
    <div class="logo_header">
        <div id="logo_img">
            <?php echo Html::img(AssetApp::getImageBaseUrl() . '/logo_backend_3.png', ['alt' => 'StudyEDU']) ?>
        </div>
        <div id="site_name">
            Study.EDU
        </div>
    </div>
    <div class="person">
        <div class="row avatar">
            <?php
            $avatar = AssetApp::getImageBaseUrl() . '/avatar_icon_backend_3.png';
            if (!empty(Yii::$app->user->identity)) {
                $path = Yii::$app->params['img_url']['admin_avatar']['folder'];
                $check = Utility::get_content_static($path, Yii::$app->user->identity->getId());
                if ($check != null) {
                    $avatar = Yii::$app->params['storage_url'] . $check;
                }
            }
            ?>
            <?php echo Html::img($avatar, ['alt' => 'admin']) ?>
        </div>
        <div class="row username">
            <?php echo Yii::$app->user->identity->getUsername() ?>
        </div>
    </div>
</div>

<div class="row menu_list">
    <ul>
        <li>
            <a href="/">
                <span id="icon"><?php echo Icon::show('home') ?></span>
                <span id="menu_name">Dashboard</span>
            </a>
        </li>

        <!-- List menus -->
        <?php echo Menu::categoryDropDown(Menu::getChildMenu(0)); ?>
    </ul>
</div>

