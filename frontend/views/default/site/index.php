<?php

/* @var $this yii\web\View */

$this->title = 'Hệ thống luyệ thi THPT Quốc Gia - Luyện thi ĐH, CĐ - Luyện thi trắc nghiệm trực tuyến.';
use common\components\Utility;
?>
<!-- SLIDE SHOW -->
<?php if (isset($slides) && count($slides) > 0) { ?>
    <div class="slideshow" style="border-bottom: 4px solid green;">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <?php foreach ($slides as $k => $slide) {
                    $path = '' . Yii::$app->params['img_url']['slideshow']['folder'];
                    $img = Utility::get_content_static($path, $slide['id']);
                    if (!empty($img)) {
                        $url = Yii::$app->params['storage_url'] . $img;
                        ?>
                    <div class="item <?php echo ($k == 0) ? 'active' : '' ?>">
                        <a href="<?php echo $slide['url'] ?>" target="_blank">
                            <img src="<?php echo $url ?>" alt="<?php echo $slide['alt'] ?>">
                        </a>
                    </div>
                <?php } } ?>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
<?php } ?>


<!-- FORM TIM KIEM KHOA HOC -->
<div class="w3-center search-course w3-theme-l4 w3-padding-64">
    <h2 class="w3-text-white w3-margin-bottom w3-text-teal">Tìm kiếm khóa học</h2>
    <div class="w3-col m6" style="text-align: right;padding-right: 20px;">
        <select class="w3-select" name="option">
            <option value="1">Option 1</option>
            <option value="2">Option 2</option>
            <option value="3">Option 3</option>
        </select>
    </div>
    <div class="w3-col m6" style="text-align: left;padding-left: 20px;">
        <select class="w3-select" name="option">
            <option value="1">Option 1</option>
            <option value="2">Option 2</option>
            <option value="3">Option 3</option>
        </select>
    </div>
</div>

<hr>


<!-- Page content -->
<div class="w3-main w3-padding" style="max-width:1564px">

    <!-- Project Section -->
    <div class="w3-container w3-padding-32">
        <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16 w3-center w3-text-teal">Khóa học nổi bật</h3>
    </div>
    <!-- First Photo Grid-->
    <div class="w3-row-padding list_course">
        <div class="w3-quarter w3-container w3-margin-bottom w3-display-container">
            <div class="w3-display-topleft w3-teal w3-padding">Miễn phí</div>
            <div class="course_item">
                <a href="#" class="course_img"><img src="https://www.w3schools.com/w3images/p2.jpg" alt="Norway" /></a>
                <div class="w3-container w3-white course_desc" style="padding: 0">
                    <p class="course_name"><a href="#" class="w3-text-teal">PEN-M Vật lí (K-G) - Thầy Đỗ Ngọc Hà </a></p>
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
        <div class="w3-quarter w3-container w3-margin-bottom  w3-display-container">
            <div class="w3-display-topleft w3-teal w3-padding">Miễn phí</div>
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
        <div class="w3-quarter w3-container w3-margin-bottom">
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
        <div class="w3-quarter w3-container w3-margin-bottom">
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
    <!-- First Photo Grid-->
    <div class="w3-row-padding list_course">
        <div class="w3-quarter w3-container w3-margin-bottom">
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
        <div class="w3-quarter w3-container w3-margin-bottom">
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
        <div class="w3-quarter w3-container w3-margin-bottom">
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
        <div class="w3-quarter w3-container w3-margin-bottom">
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




    <!-- Project Section -->
    <div class="w3-container w3-padding-32" id="projects">
        <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16 w3-center w3-text-teal">Giáo viên</h3>
    </div>

    <div class="w3-row-padding w3-grayscale owl-carousel" style="padding: 0px 30px;">
        <div class="w3-margin-bottom">
            <img src="https://www.w3schools.com/w3images/team2.jpg" alt="John" style="width:100%">
            <h3 class="w3-text-teal">John Doe</h3>
            <p class="w3-opacity">CEO & Founder</p>
            <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
            <p><button class="w3-button w3-light-grey w3-block w3-text-teal">Xem chi tiết >></button></p>
        </div>
        <div class="w3-margin-bottom">
            <img src="https://www.w3schools.com/w3images/team1.jpg" alt="Jane" style="width:100%">
            <h3 class="w3-text-teal">Jane Doe</h3>
            <p class="w3-opacity">Architect</p>
            <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
            <p><button class="w3-button w3-light-grey w3-block w3-text-teal">Xem chi tiết >></button></p>
        </div>
        <div class="w3-margin-bottom">
            <img src="https://www.w3schools.com/w3images/team3.jpg" alt="Mike" style="width:100%">
            <h3 class="w3-text-teal">Mike Ross</h3>
            <p class="w3-opacity">Architect</p>
            <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
            <p><button class="w3-button w3-light-grey w3-block w3-text-teal">Xem chi tiết >></button></p>
        </div>
        <div class="w3-margin-bottom">
            <img src="https://www.w3schools.com/w3images/team4.jpg" alt="Dan" style="width:100%">
            <h3 class="w3-text-teal">Dan Star</h3>
            <p class="w3-opacity">Architect</p>
            <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
            <p><button class="w3-button w3-light-grey w3-block w3-text-teal">Xem chi tiết >></button></p>
        </div>
    </div>
</div>
<style>
    .carousel-inner>.item.active {
        height: 350px;
    }
    .carousel-inner>.item.active img {
        width: 100%;
        height: 100%;
    }
</style>

<script>
    $(document).ready(function(){
        $('.owl-carousel').owlCarousel({
            center: true,
            items:4,
            loop:true,
            margin:10,
            responsive:{
                600:{
                    items:4
                }
            }
        });
    });
</script>