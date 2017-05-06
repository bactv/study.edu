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
    <tr>
        <td class="w3-center"><i class="fa fa-trophy" aria-hidden="true" style="color: #e6cd0a;font-size: 30px;"></i></td>
        <td>
            <div class="avatar">
                <img src="<?php echo AssetApp::getImageBaseUrl() . '/icons/avatar_student_icon.ico' ?>">
            </div>
            <div class="std_name">
                Trần Văn Nam
            </div>
        </td>
        <td style="color: #e6cd0a">50</td>
    </tr>
    <tr>
        <td><i class="fa fa-trophy" aria-hidden="true" style="color: rgba(152, 149, 149, 0.7);font-size: 30px;"></i></td>
        <td>
            <div class="avatar">
                <img src="<?php echo AssetApp::getImageBaseUrl() . '/icons/avatar_student_icon.ico' ?>">
            </div>
            <div class="std_name">
                Trần Văn Nam
            </div>
        </td>
        <td style="color: rgba(152, 149, 149, 0.7)">50</td>
    </tr>
    <tr>
        <td><i class="fa fa-trophy" aria-hidden="true" style="color: #5b4411;font-size: 30px;"></i></td>
        <td>
            <div class="avatar">
                <img src="<?php echo AssetApp::getImageBaseUrl() . '/icons/avatar_student_icon.ico' ?>">
            </div>
            <div class="std_name">
                Trần Văn Nam
            </div>
        </td>
        <td style="color: #5b4411">50</td>
    </tr>
    <tr>
        <td>4</td>
        <td>
            <div class="avatar">
                <img src="<?php echo AssetApp::getImageBaseUrl() . '/icons/avatar_student_icon.ico' ?>">
            </div>
            <div class="std_name">
                Trần Văn Nam
            </div>
        </td>
        <td>50</td>
    </tr>
    <tr>
        <td>5</td>
        <td>
            <div class="avatar">
                <img src="<?php echo AssetApp::getImageBaseUrl() . '/icons/avatar_student_icon.ico' ?>">
            </div>
            <div class="std_name">
                Trần Văn Nam
            </div>
        </td>
        <td>50</td>
    </tr>
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
        width: 100%;
        margin: 0;
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
