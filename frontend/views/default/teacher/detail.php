<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 19/05/2017
 * Time: 11:55 CH
 */
use yii\helpers\Url;
use common\components\Utility;
use common\components\AssetApp;
use kartik\icons\Icon;

Icon::map($this, Icon::FA);

?>
<div class="w3-container main_content">
    <div class="w3-row">
        <div class="w3-col l8 m8 s12">
            <div class="w3-row"><h3 class="w3-text-teal title">GIỚI THIỆU GIÁO VIÊN: <?php echo $teacher['full_name'] ?></h3></div>
            <div class="w3-row">
                <div class="w3-col l4 m4 s12">
                    <?php
                    if ($teacher['gender'] == 1) {
                        $avatar = AssetApp::getImageBaseUrl() . '/icons/male_teacher_icon.png';
                    } else {
                        $avatar = AssetApp::getImageBaseUrl() . '/icons/female_teacher_icon.png';
                    }
                    $url = Yii::$app->params['assets_path']['img.user'] . $teacher['user_id'] . '.png';
                    if (Utility::check_url_file_exists($url)) {
                        $avatar = $url;
                    }
                    ?>
                    <div class="avatar">
                        <img src="<?php echo $avatar ?>" alt="<?php echo $teacher['full_name'] ?>" />
                    </div>
                </div>
                <div class="w3-col l8 m8 s12 ">
                    <h3 id="tch_name"><?php echo $teacher['degree'] . '. ' . $teacher['full_name'] ?></h3>
                    <h5 id="tch_tt1">THÔNG TIN LIÊN HỆ</h5>
                    <p><span id="tch_tt2">Địa chỉ công tác: </span><?php echo $teacher['work_place'] ?></p>
                    <p><span id="tch_tt2">Email: </span><?php echo $teacher['email'] ?></p>
                    <p><span id="tch_tt2">Số điện thoại: </span><?php echo $teacher['phone'] ?></p>
                    <h5 id="tch_tt1" style="margin-top: 30px">GIỚI THIỆU</h5>
                    <p><?php echo $teacher['intro'] ?></p>
                </div>
            </div>
        </div>

        <div class="w3-col l4 m4 s12">
            <div class="other_course">
                <p id="title">KHÓA HỌC ĐANG DẠY</p>
                <?php foreach ($arr_course as $c) {
                    $logo = AssetApp::getImageBaseUrl() . '/icons/img_course_default.jpg';
                    $url = Yii::$app->params['assets_path']['img.course'] . $c['id'] . '.png';
                    if (Utility::check_url_file_exists($url)) {
                        $logo = $url;
                    }
                    ?>
                    <div class="w3-row item">
                        <a href="<?php echo Url::toRoute(['/khoa-hoc/' . Utility::rewrite($c['name']) . '-cn' . Utility::encrypt_decrypt('encrypt', $c['id'])]) ?>">
                            <div class="w3-col l5 m5 s5 course_logo">
                                <img src="<?php echo $logo ?>">
                            </div>
                            <div class="w3-col l7 m7 s7 info">
                                <div class="course_name"><?php echo $c['name'] ?></div>
                                <div class="course_free">Học phí: <b><?php echo number_format($c['price']) . ' VNĐ' ?></b> </div>
                            </div>
                        </a>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>

<style>
    h3.title {
        padding-bottom: 5px;
        border-bottom: 1px solid teal;
        margin-bottom: 20px;
    }
    .avatar {
        width: 90%;
        height:230px;
    }
    .avatar img {
        width: 100%;
        height: 100%;
    }
    #tch_name {
        font-weight: bold;
        padding-bottom: 5px;
        border-bottom: 1px solid #ccc;
        margin-bottom: 20px;
    }
    #tch_tt1 {
    }
    #tch_tt2 {
        font-weight: bold;
        font-size: 1.1em;
    }
    .other_course {
        background: #FFF;
        margin-top: 20px;
        margin-left: 20px;
        padding: 10px;
        border: 1px solid #ccc;
    }

    .other_course #title{
        font-size: 1.3em;
        color: teal;
        text-align: center;
        margin-bottom: 20px;
        border-bottom: 2px solid teal;
    }

    .other_course .item{
        margin-bottom: 10px;
        padding-bottom: 10px;
        border-bottom: 1px solid #ccc;
    }

    .other_course .item .course_logo {
        height: 95px;
    }

    .other_course .item .course_logo img {
        width: 100%;
        height: 100%;
    }

    .other_course .item .info {
        padding-left: 5px;

    }

    .other_course .item .info .course_name {
        font-weight: bold;
        font-size: 12px;
        margin-bottom: 20px;
    }
    .other_course .item .info .course_fee {

    }
</style>