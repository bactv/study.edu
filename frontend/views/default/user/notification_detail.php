<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/06/2017
 * Time: 2:07 CH
 */
?>
<div class="w3-container w3-card-2 w3-white w3-margin-bottom" style="padding-bottom: 30px">
    <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-bell fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Thông báo</h2>
    <div class="w3-container">
        <div id="content"><?php echo $notification['content'] ?></div>
    </div>
</div>

<style>
    .active_nt {
        background: #9acfea;
        color: #0000aa;
    }
</style>
