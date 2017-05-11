<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 11/05/2017
 * Time: 11:52 CH
 */

use yii\helpers\Url;
use common\components\Utility;
use kartik\icons\Icon;
use common\components\AssetApp;

Icon::map($this, Icon::FA);

?>
<link rel="stylesheet" type="text/css" href="/themes/default/css/course_detail.css">

<div class="w3-container course_detail" style="margin-bottom: 400px">
    <!-- Sidebar/menu -->
    <nav class="w3-sidebar w3-collapse w3-white w3-animate-left w3-border" style="z-index:1;width:300px;height: 430px" id="mySidebar"><br>
        <div class="w3-container w3-row" style="font-size: 1.3em;text-align: left">
            <b>Khóa H2 - Luyện thi THPT Quốc gia môn Ngữ văn năm 2018</b>
        </div>
        <hr>
        <div class="w3-bar-block">
            <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-diamond fa-fw"></i>  Danh sách bài học</a>
            <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-bell fa-fw"></i>  Bảng điểm của tôi</a>
            <a href="#" class="w3-bar-item w3-button w3-padding"><i class="fa fa-history fa-fw"></i>  Thảo luận</a>
        </div>
    </nav>


    <!-- Overlay effect when opening sidebar on small screens -->
    <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

    <!-- !PAGE CONTENT! -->
    <div class="w3-main w3-border" style="margin-left:320px;">

        <!-- Header -->
        <header class="w3-container" style="padding-top:22px">
            <h5><b><i class="fa fa-dashboard"></i> Danh sách bài học</b></h5>
        </header>


        <!-- End page content -->
    </div>

    <script>
        // Get the Sidebar
        var mySidebar = document.getElementById("mySidebar");

        // Get the DIV with overlay effect
        var overlayBg = document.getElementById("myOverlay");

        // Toggle between showing and hiding the sidebar, and add overlay effect
        function w3_open() {
            if (mySidebar.style.display === 'block') {
                mySidebar.style.display = 'none';
                overlayBg.style.display = "none";
            } else {
                mySidebar.style.display = 'block';
                overlayBg.style.display = "block";
            }
        }

        // Close the sidebar with the close button
        function w3_close() {
            mySidebar.style.display = "none";
            overlayBg.style.display = "none";
        }
    </script>
</div>
