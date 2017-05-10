<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 12:12 CH
 */
use yii\helpers\Url;
use common\components\Utility;
use kartik\icons\Icon;
use common\components\AssetApp;

Icon::map($this, Icon::FA);

?>
<link rel="stylesheet" type="text/css" href="/themes/default/css/course.css">

<div class="main_content">
    <div class="w3-row course_video_detail">
        <div class="box_top">
            <img src="<?php echo AssetApp::getImageBaseUrl() . '/bg/course_bg.jpg' ?>">
            <div class="info">
                <p class="w3-center w3-text-white" id="course_name">Chuyên đề 1: Dao động cơ học</p>
                <p class="w3-center w3-text-white" id="course_teacher">Giáo viên: <span><a href="#">Trần Văn A</a></span>, <span><a href="#">Trần Văn B</a></span></p>
                <br><br><br>
                <p class="w3-center w3-text-white" id="lesson_course">
                    <span style="margin-right: 20px"><?php echo Icon::show('book') . ' 30 bài giảng' ?></span>
                    <span><?php echo Icon::show('book') . ' 30 bài tập, contest' ?></span>
                </p>
            </div>
        </div>
        <div class="w3-container-fluid">
            <div class="w3-col l8 box_left">
                <div class="box_item">
                    <p id="title">Giới thiệu khóa học</p>
                    <div class="course_desc">
                        HỌC247 thiết kế và cung cấp chương trình luyện thi toàn diện THPT Quốc gia môn Sinh học năm 2018 theo cấu trúc MỚI mà Bộ Giáo Dục và Đào Tạo vừa ban hành. Một trong những khóa học quan trọng nhất là Khóa nền tảng H2 được giảng dạy bởi Ths. Cao Minh Sáng - Giáo viên bộ môn Sinh học trường THPT Nguyễn Thượng Hiền - Q. Tân Bình - Tp. HCM và Ths. Nguyễn Văn Quang - Tổ trưởng bộ môn Sinh học trường THPT Trần Khai Nguyên - Tp. HCM.

                        Khóa học này sẽ cung cấp cho các em đầy đủ kiến thức cơ bản, kiến thức trọng tâm và bao quát toàn diện chương trình lớp 12 nhằm chuẩn bị cho kì thi THPT Quốc gia môn Sinh học năm 2018 đạt kết quả tốt nhất. Phương pháp giải toán được trình bày một cách hệ thống, dễ hiểu, dễ nhớ thông qua các ví dụ minh họa từ cơ bản đến nâng cao.

                        Sau mỗi bài giảng các em được luyện tập qua các bài tập tự luận và trắc nghiệm chọn lọc có đáp án và lời giải chi tiết nhằm hiểu sâu lý thuyết, áp dụng phương pháp giải thuần thục và hoàn thiện kỹ năng làm bài.

                        Kết thúc một số bài học quan trọng các em được làm các bài kiểm tra trắc nghiệm Online nhằm đánh giá chính xác năng lực tiếp thu kiến thức trong từng phần cụ thể. Cuối các chuyên đề các em được bổ sung thêm các bài toán nâng cao và tham gia đề thi trắc nghiệm Online nhằm đánh giá chất lượng mà các em học chuyên đề đó và giúp các em làm quen với loại hình thi trắc nghiệm mới của Bộ GD&ĐT.

                        Hệ thống phần mềm ưu việt của HỌC247 sẽ theo sát quá trình học tập của các em, chấm điểm, đưa ra đánh giá năng lực và tư vấn giúp các em hoàn thành việc học của mình một cách hiệu quả nhất.
                        Chúc các em có những giờ học thú vị, bổ ích và hiệu quả qua sự dẫn dắt của Thầy Ths. Cao Minh Sáng và Thầy Ths. Nguyễn Văn Quang!
                    </div>
                </div>
                <div class="box_item">
                    <p id="title">Danh sách bài học</p>
                    <ul class="list_lesson">
                        <?php
                        $url = Url::toRoute(['/bai-giang/' . Utility::rewrite("Bài 1: Tế bào và hệ thống các cấp tổ chức sống") . '-cn' . Utility::encrypt_decrypt('encrypt', '132')]);
                        ?>
                        <a href="<?php echo $url ?>" target="_blank">
                            <li>
                                <p id="lesson_name">Bài 1: Tế bào và hệ thống các cấp tổ chức sống</p>
                                <div class="lesson_info">
                                    <span id="icon"><?php echo Icon::show('play-circle') . ' 30 phút' ?></span>
                                    <span id="icon"><?php echo Icon::show('users') . ' 500 lượt xem' ?></span>
                                    <span id="icon"><?php echo Icon::show('calendar') . ' 20.05.2017' ?></span>
                                </div>
                            </li>
                        </a>

                        <a href="#">
                            <li>
                                <p id="lesson_name">Bài 2: Tế bào và hệ thống các cấp tổ chức sống</p>
                                <div class="lesson_info">
                                    <span id="icon"><?php echo Icon::show('play-circle') . ' 30 phút' ?></span>
                                    <span id="icon"><?php echo Icon::show('users') . ' 500 lượt xem' ?></span>
                                </div>
                            </li>
                        </a>

                        <a href="#">
                            <li>
                                <p id="lesson_name">Bài 3: Tế bào và hệ thống các cấp tổ chức sống</p>
                                <div class="lesson_info">
                                    <span id="icon"><?php echo Icon::show('play-circle') . ' 30 phút' ?></span>
                                    <span id="icon"><?php echo Icon::show('users') . ' 500 lượt xem' ?></span>
                                </div>
                            </li>
                        </a>

                        <a href="#">
                            <li>
                                <p id="lesson_name">Bài 4: Tế bào và hệ thống các cấp tổ chức sống</p>
                                <div class="lesson_info">
                                    <span id="icon"><?php echo Icon::show('play-circle') . ' 30 phút' ?></span>
                                    <span id="icon"><?php echo Icon::show('users') . ' 500 lượt xem' ?></span>
                                </div>
                            </li>
                        </a>
                    </ul>
                </div>
            </div>
            <div class="w3-col l4 box_right">
                <div class="course_info">
                    <p class="w3-text-red" id="course_fee">350.000 đ</p>
                    <p id="span"><?php echo Icon::show('calendar') ?> Ngày hết hạn: 15/07/2018</p>
                    <p id="span"><?php echo Icon::show('users') ?> Số học sinh đăng ký: 30</p>
                    <p class="btn_reg"><a href="" role="button" class="btn btn-warning" id="btn_reg"><?php echo Icon::show('cart-arrow-down') ?> Đăng ký khóa học</a></p>
                </div>

                <div class="other_course">
                    <p id="title">Khóa học khác</p>
                    <div class="w3-row item">
                        <a href="#">
                            <div class="w3-col l6 course_logo">
                                <img src="<?php echo AssetApp::getImageBaseUrl() . '/icons/course_logo.png' ?>">
                            </div>
                            <div class="w3-col l6 info">
                                <div class="course_name">PEN-I VẬT LÍ (TB-TBK) - THẦY PHẠM VĂN TÙNG</div>
                                <div class="course_free">Học phí: <b>500.000 đ</b> </div>
                            </div>
                        </a>
                    </div>
                    <div class="w3-row item">
                        <a href="#">
                            <div class="w3-col l6 course_logo">
                                <img src="<?php echo AssetApp::getImageBaseUrl() . '/icons/course_logo.png' ?>">
                            </div>
                            <div class="w3-col l6 info">
                                <div class="course_name">PEN-I VẬT LÍ (TB-TBK) - THẦY PHẠM VĂN TÙNG</div>
                                <div class="course_free">Học phí: <b>500.000 đ</b> </div>
                            </div>
                        </a>
                    </div>
                    <div class="w3-row item">
                        <a href="#">
                            <div class="w3-col l6 course_logo">
                                <img src="<?php echo AssetApp::getImageBaseUrl() . '/icons/course_logo.png' ?>">
                            </div>
                            <div class="w3-col l6 info">
                                <div class="course_name">PEN-I VẬT LÍ (TB-TBK) - THẦY PHẠM VĂN TÙNG</div>
                                <div class="course_free">Học phí: <b>500.000 đ</b> </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
//        $(".box_right").stick_in_parent();
    });
</script>