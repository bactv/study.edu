<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 8:55 SA
 */
use common\components\AssetApp;
?>
<table class="w3-table">
    <tr>
        <th>TT</th>
        <th>Học sinh</th>
        <th>Điểm</th>
    </tr>
    <?php foreach ($leaderboard as $k => $item) {
        if ($k > 10) {
            break;
        }
        $icon = '';
        $color = '';
        if ($k < 3) {
            $icon = 'fa fa-trophy';
            if ($k == 0) {
                $color = 'color: #e6cd0a;font-size: 30px;';
            }
            if ($k == 1) {
                $color = 'color: rgba(152, 149, 149, 0.7);font-size: 30px;';
            }
            if ($k == 2) {
                $color = 'color: #5b4411;font-size: 30px;';
            }
        }

        $student = \frontend\models\Student::findOne(['user_id' => $item['user_id']]);
        $url = Yii::$app->params['assets_path']['img.user'] . $item['user_id'] . '.png';
        $avatar = AssetApp::getImageBaseUrl() . '/icons/avatar_student_icon.ico';
        if (\common\components\Utility::check_url_file_exists($url)) {
            $avatar = $url;
        }
        ?>

        <tr>
            <td class="w3-center"><i class="<?php echo $icon ?>" aria-hidden="true" style="<?php echo $color ?>"></i><?php echo ($k >= 3) ? ($k + 1) : '' ?></td>
            <td>
                <div class="avatar">
                    <img src="<?php echo $avatar ?>">
                </div>
                <div class="std_name">
                    <?php echo $student['full_name'] ?>
                </div>
            </td>
            <td><?php echo $item['score'] ?></td>
        </tr>

    <?php } ?>
</table>

<style>
    .w3-table td, .w3-table th {
        text-align: center;
        line-height: 40px;
        vertical-align: middle;
    }
    .main_content .leaderboard .avatar {
        width: 40px;
        position: relative;
        float: left;
    }
    .main_content .leaderboard .avatar img {
        width: 40px;
        height: 40px;
        margin: 0;
        border-radius: 50%;
    }
    .main_content .leaderboard .std_name {
        line-height: 40px;
    }
    .nav-pills>li.active>a {
        background-color: rgba(136, 126, 8, 0.7);
    }
    .nav-pills>li.active>a:hover {
        background-color: #614700;
    }
</style>
