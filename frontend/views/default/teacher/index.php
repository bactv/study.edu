<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 19/05/2017
 * Time: 11:55 CH
 */

use common\components\AssetApp;
use yii\helpers\Url;
use kartik\icons\Icon;
use common\components\Utility;

Icon::map($this, Icon::FA);

?>

<div class="main_content w3-container">
    <p id="title">GIỚI THIỆU DANH SÁCH GIÁO VIÊN</p>
    <p style="margin-bottom: 30px">
        Danh sách giáo viên giỏi, nhiều năm kinh nghiệm giảng dạy và luyện thi được tuyển chọn từ các trường THPT và Đại Học lớn tại TP.HCM và các tỉnh khác trên toàn quốc là điểm tựa-đòn bẩy vững chắc giúp học sinh và phụ huynh tin tưởng và đảm bảo việc học tập đạt hiệu quả cao nhất gồm các môn Toán, Vật lý, Hóa học, Sinh học, Anh Văn.
    </p>
    <div class="list_teacher">
        <?php foreach ($arr_teacher as $teacher) { ?>
            <div class="w3-col l6 m12 s12">
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
                <div class="w3-col l4 m4 s4">
                    <div class="avatar">
                        <img src="<?php echo $avatar ?>" alt="<?php echo $teacher['full_name'] ?>" />
                    </div>
                </div>
                <div class="w3-col l8 m8 s8">
                    <div class="info">
                        <p><span id="tt1">Họ và tên: </span><?php echo $teacher['full_name'] ?></p>
                        <p><span id="tt1">Email: </span><?php echo $teacher['email'] ?></p>
                        <p><span id="tt1">Số diện thoại: </span><?php echo $teacher['phone'] ?></p>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
    <?php echo \yii\widgets\LinkPager::widget([
        'pagination' => $pagination
    ]) ?>
</div>

<style>
    #title {
        color: teal;
        font-size: 1.5em;
    }
    .avatar {
        width: 90%;
        height: 230px;
    }
    .avatar img {
        width: 160px;
        height: 160px;
        border-radius: 50%;
    }
</style>
