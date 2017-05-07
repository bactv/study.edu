<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 07/05/2017
 * Time: 9:00 SA
 */
use common\components\AssetApp;
use kartik\icons\Icon;
use yii\helpers\Html;

Icon::map($this, Icon::FA);

AssetApp::regCssFile('tabs.css');

?>
<div class="w3-container w3-card-2 w3-white w3-margin-bottom" style="padding-bottom: 30px">
    <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-eur fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Nạp tiền</h2>
    <div class="w3-container">
        <div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
            <div class="btn-group" role="group">
                <button type="button" id="stars" class="btn btn-primary" href="#tab1" data-toggle="tab"><i class="fa fa-mobile" aria-hidden="true"></i>
                    <div class="hidden-xs">Thẻ cào điện thoại</div>
                </button>
            </div>
            <div class="btn-group" role="group">
                <button type="button" id="favorites" class="btn btn-default" href="#tab2" data-toggle="tab"><i class="fa fa-cc-mastercard" aria-hidden="true"></i>
                    <div class="hidden-xs">Chuyển khoản ngân hàng</div>
                </button>
            </div>
        </div>

        <div class="wellc">
            <div class="tab-content" style="padding-top: 20px;">
                <div class="tab-pane fade in active" id="tab1">
                    <h4 class="w3-center w3-margin-bottom"><b>Nạp tiền bằng thẻ cào điện thoại</b></h4>
                    <div class="w3-margin-bottom">
                        <?php echo isset($phone_card_help['content']) ? $phone_card_help['content'] : '' ?>
                    </div>
                    <table class="table table-striped table-bordered table-hover table-condensed table-responsive">
                        <thead>
                        <tr>
                            <th width="25%">
                                <a href="javascript:void(0)" class="telco" id="viettel"><img src="<?php echo AssetApp::getImageBaseUrl() . '/telco_logo/viettel_logo.png' ?>" style="width: 100%"></a></th>
                            </th>
                            <th width="25%">
                                <a href="javascript:void(0)" class="telco" id="mobifone"><img src="<?php echo AssetApp::getImageBaseUrl() . '/telco_logo/mobifone_logo.png' ?>" style="width: 100%"></a>
                            </th>
                            <th width="25%">
                                <a href="javascript:void(0)" class="telco" id="vinaphone"><img src="<?php echo AssetApp::getImageBaseUrl() . '/telco_logo/vinaphone_logo.png' ?>" style="width: 100%"></a>
                            </th>
                            <th width="25%">
                                <a href="javascript:void(0)" class="telco" id="vietnamobile"><img src="<?php echo AssetApp::getImageBaseUrl() . '/telco_logo/vietnamobile_logo.png' ?>" style="width: 100%"></a>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td colspan="1">
                                <label class="control-label" id="lb_serial_number" style="margin: 0">Số serial: </label>
                            </td>
                            <td colspan="3">
                                <?php echo Html::tag('input', '', [
                                    'type' => 'number',
                                    'class' => 'form-control',
                                    'placeholder' => 'Nhập số seri ...',
                                    'id' => 'serial_number'
                                ]) ?>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="1">
                                <label class="control-label" id="lb_code_number" style="margin: 0">Mã thẻ cào: </label>
                            </td>
                            <td colspan="3">
                                <?php echo Html::tag('input', '', [
                                    'type' => 'number',
                                    'class' => 'form-control',
                                    'placeholder' => 'Nhập mã thẻ ...',
                                    'id' => 'code_number'
                                ]) ?>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" style="text-align: center">
                                <button type="submit" class="btn btn-primary" onclick="charging()"><?php echo Icon::show('eur') ?> Nạp tiền</button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="tab-pane fade in" id="tab2">
                <h4 class="w3-center w3-margin-bottom"><b>Nạp tiền bằng chuyển khoản ngân hàng</b></h4>
                <div class="w3-margin-bottom">
                    <?php echo isset($bank_help['content']) ? $bank_help['content'] : '' ?>
                </div>
            </div>
        </div>
    </div>
</div>
<?php AssetApp::regJsFile('charging.js') ?>