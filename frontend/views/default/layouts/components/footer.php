<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 05/05/2017
 * Time: 9:26 CH
 */

use yii\helpers\Url;
?>
<!-- Footer -->
<footer class="w3-container w3-padding-32 w3-teal w3-center">
    <div class="w3-section w3-xlarge">
        <a href="#" target="_blank"><i class="fa fa-facebook-official w3-hover-opacity"></i></a>
        <a href="#" target="_blank"><i class="fa fa-google w3-hover-opacity"></i></a>
        <a href="#" target="_blank"><i class="fa fa-twitter w3-hover-opacity"></i></a>
        <a href="#" target="_blank"><i class="fa fa-linkedin w3-hover-opacity"></i></a>
    </div>
    <div class="w3-section">
        <div class="w3-col l6 m6 s12 w3-left"><a href="<?php echo Url::toRoute(['/']) ?>">Trang chủ</a> | <a href="<?php echo Url::toRoute(['/gioi-thieu']) ?>">Giới thiệu</a> | <a href="<?php echo Url::toRoute(['/khoa-hoc-truc-tuyen']) ?>">Khóa học</a> | <a href="<?php echo Url::toRoute(['/lien-he']) ?>">Liên hệ</a></div>
        <div class="w3-col l6 m6 s12 w3-right">Copyright &copy 2017 -  STUDY.EDU</div>
    </div>
</footer>
