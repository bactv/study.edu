<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 4:23 CH
 */

use yii\helpers\Url;
use common\components\Utility;

?>

<div class="w3-container w3-card-2 w3-white w3-margin-bottom">
    <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Khóa học của tôi</h2>
    <div class="w3-container">
        <p id="title"><i class="fa fa-tag" aria-hidden="true"></i> CÁC KHÓA ĐÃ HỌC (3)</p>
        <!-- First Photo Grid-->
        <div class="w3-row-padding list_course">
            <div class="w3-third w3-container w3-margin-bottom">
                <div class="course_item">
                    <a href="#" class="course_img"><img src="https://www.w3schools.com/w3images/p2.jpg" alt="Norway" /></a>
                    <div class="w3-container w3-white course_desc" style="padding: 0">
                        <p class="course_name"><a href="#" class="w3-text-teal">PEN-M Vật lí (K-G) - Thầy Đỗ Ngọc Hà</a></p>
                        <p class="course_teacher">Giáo viên: <a href="#" class="teacher_name w3-text-teal">Đỗ Ngọc Hà</a></p>
                    </div>
                    <div class="progress">
                        <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%;">
                            <span class="show">30%</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="w3-third w3-container w3-margin-bottom">
                <div class="course_item">
                    <a href="#" class="course_img"><img src="https://www.w3schools.com/w3images/p2.jpg" alt="Norway" /></a>
                    <div class="w3-container w3-white course_desc" style="padding: 0">
                        <p class="course_name"><a href="#" class="w3-text-teal">PEN-M Vật lí (K-G) - Thầy Đỗ Ngọc Hà</a></p>
                        <p class="course_teacher">Giáo viên: <a href="#" class="teacher_name w3-text-teal">Đỗ Ngọc Hà</a></p>
                    </div>
                    <div class="progress">
                        <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%;">
                            <span class="show">30%</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="w3-third w3-container w3-margin-bottom">
                <div class="course_item">
                    <a href="#" class="course_img"><img src="https://www.w3schools.com/w3images/p2.jpg" alt="Norway" /></a>
                    <div class="w3-container w3-white course_desc" style="padding: 0">
                        <p class="course_name"><a href="#" class="w3-text-teal">PEN-M Vật lí (K-G) - Thầy Đỗ Ngọc Hà</a></p>
                        <p class="course_teacher">Giáo viên: <a href="#" class="teacher_name w3-text-teal">Đỗ Ngọc Hà</a></p>
                    </div>
                    <div class="progress">
                        <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%;">
                            <span class="show">30%</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>



    </div>
    <div class="w3-container">
        <p id="title"><i class="fa fa-tag" aria-hidden="true"></i> Có thể bạn quan tâm</p>
        <!-- First Photo Grid-->
        <div class="w3-row-padding list_course">
            <div class="w3-third w3-container w3-margin-bottom">
                <div class="course_item">
                    <a href="#" class="course_img"><img src="https://www.w3schools.com/w3images/p2.jpg" alt="Norway" /></a>
                    <div class="w3-container w3-white course_desc" style="padding: 0">
                        <p class="course_name"><a href="#" class="w3-text-teal">PEN-M Vật lí (K-G) - Thầy Đỗ Ngọc Hà</a></p>
                        <p class="course_teacher">Giáo viên: <a href="#" class="teacher_name w3-text-teal">Đỗ Ngọc Hà</a></p>

                        <div class="register_info">
                            <p class="course_student"><i class="fa fa-users" aria-hidden="true"></i> 3000 học sinh</p>
                            <p class="course_time"><i class="fa fa-calendar" aria-hidden="true"></i> Hạn đăng ký: 30.05.2017</p>
                            <p class="course_fee"><i class="fa fa-tag" aria-hidden="true"></i> Học phí: 300,000 VNĐ</p>
                        </div>

                        <div class="view_more"><a href="#">Xem thêm >></a></div>
                    </div>
                </div>
            </div>
            <div class="w3-third w3-container w3-margin-bottom">
                <div class="course_item">
                    <a href="#" class="course_img"><img src="https://www.w3schools.com/w3images/p2.jpg" alt="Norway" /></a>
                    <div class="w3-container w3-white course_desc" style="padding: 0">
                        <p class="course_name"><a href="#" class="w3-text-teal">PEN-M Vật lí (K-G) - Thầy Đỗ Ngọc Hà</a></p>
                        <p class="course_teacher">Giáo viên: <a href="#" class="teacher_name w3-text-teal">Đỗ Ngọc Hà</a></p>

                        <div class="register_info">
                            <p class="course_student"><i class="fa fa-users" aria-hidden="true"></i> 3000 học sinh</p>
                            <p class="course_time"><i class="fa fa-calendar" aria-hidden="true"></i> Hạn đăng ký: 30.05.2017</p>
                            <p class="course_fee"><i class="fa fa-tag" aria-hidden="true"></i> Học phí: 300,000 VNĐ</p>
                        </div>

                        <div class="view_more"><a href="#">Xem thêm >></a></div>
                    </div>
                </div>
            </div>
            <div class="w3-third w3-container w3-margin-bottom">
                <div class="course_item">
                    <a href="#" class="course_img"><img src="https://www.w3schools.com/w3images/p2.jpg" alt="Norway" /></a>
                    <div class="w3-container w3-white course_desc" style="padding: 0">
                        <p class="course_name"><a href="#" class="w3-text-teal">PEN-M Vật lí (K-G) - Thầy Đỗ Ngọc Hà</a></p>
                        <p class="course_teacher">Giáo viên: <a href="#" class="teacher_name w3-text-teal">Đỗ Ngọc Hà</a></p>

                        <div class="register_info">
                            <p class="course_student"><i class="fa fa-users" aria-hidden="true"></i> 3000 học sinh</p>
                            <p class="course_time"><i class="fa fa-calendar" aria-hidden="true"></i> Hạn đăng ký: 30.05.2017</p>
                            <p class="course_fee"><i class="fa fa-tag" aria-hidden="true"></i> Học phí: 300,000 VNĐ</p>
                        </div>

                        <div class="view_more"><a href="#">Xem thêm >></a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    .active_mc {
        background: #9acfea;
        color: #0000aa;
    }
</style>