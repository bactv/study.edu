<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\icons\Icon;
use backend\models\AdminAction;
use backend\models\AdminController;
use yii\helpers\Url;
use zxbodya\yii2\tinymce\TinyMce;
use zxbodya\yii2\elfinder\TinyMceElFinder;

Icon::map($this, Icon::FA);

/* @var $this yii\web\View */
/* @var $model backend\models\AdminGroup */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="admin-group-form">

    <?php $form = ActiveForm::begin([
        'type' => ActiveForm::TYPE_HORIZONTAL,
        'formConfig' => [
            'labelSpan' => 2,
            'deviceSize' => ActiveForm::SIZE_SMALL
        ]
    ]); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'description')->widget(
        TinyMce::className(),
        [
            'fileManager' => [
                'class' => TinyMceElFinder::className(),
                'connectorRoute' => 'el-finder/connector',
            ],
        ]
    ) ?>

    <?= $form->field($model, 'status')->checkbox(['label' => '<i>(Active | Deactive)</i>'])->label(Yii::t('cms', 'Status')) ?>

    <div class="list_permission">
        <h3><b><?php echo Yii::t('cms', 'Permissions') ?></b></h3>
        <p><?php echo Html::a(Icon::show('refresh fa-spin fa-fw') . Yii::t('cms', 'Update Router'), 'javascript:void(0);', array(
                'class' => 'btn btn-warning',
                'onclick' => 'updatePermission("' . Url::toRoute(['/update-permission/update-router']) . '")'
            )) ?></p>
        <div id="w2" class="grid-view table-responsive package">
            <table class="w0-table-admin table table-striped table-bordered">
                <thead>
                    <th>Controllers</th>
                    <th>Mô tả Controller</th>
                    <th>Actions</th>
                    <th>Mô tả actions</th>
                    <th style="text-align: center">
                        <?php echo Html::tag('input', '', array(
                            'type' => 'checkbox',
                            'onclick' => 'checkAllControllers(this)',
                        )) ?>
                    </th>
                </thead>
                <tbody>
                <?php foreach (AdminController::getAllAdminControllers() as $controller) { ?>
                    <tr>
                        <td><?php echo Html::encode($controller['controller_name']) ?></td>
                        <td>
                            <?php echo Html::encode($controller['description']) ?>
                            <?php echo Html::a(Icon::show('edit'), 'javascript:void(0)', [
                                'data-toggle' => 'modal',
                                'data-target' => "#modal_controller_" . $controller['controller_id'],
                            ]) ?>

                            <!-- Modal -->
                            <div id="modal_controller_<?php echo $controller['controller_id'] ?>" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title">Sửa mô tả</h4>
                                        </div>
                                        <div class="modal-body">
                                            <input type="text" class="form-control" id="text_controller_<?php echo $controller['controller_id'] ?>" value="<?php echo $controller['description'] ?>">
                                            <p class="error" id="error_controller_<?php echo $controller['controller_id'] ?>"></p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-success" id="edit_controller_desc" data-controller_id="<?php echo $controller['controller_id'] ?>"><?php echo Icon::show('save') ?> Lưu</button>
                                            <button type="button" class="btn btn-warning" data-dismiss="modal"><?php echo Icon::show('close') ?> Hủy</button>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </td>
                        <td>
                            <?php
                            $actions = AdminAction::getAllAdminActions(array('controller_id' => $controller['controller_id']));
                            $arr_action_ids = [];
                            foreach ($actions as $action) {
                                $arr_action_ids[] = $action['action_id'];
                                $checked = false;
                                if (isset($actions_ids) && in_array($action['action_id'], $actions_ids)) {
                                    $checked = true;
                                }
                                echo "<p>" . Html::tag('input', '', array(
                                    'type' => 'checkbox',
                                    'name' => 'action_ids[]',
                                    'value' => $action['action_id'],
                                    'id' => 'all-action-' . $controller['controller_id'],
                                    'checked' => $checked
                                )) . " " . $action['action_name'] . "</p>";
                            }
                            ?>
                        </td>
                        <td>
                            <?php foreach ($actions as $action) { ?>
                                <p>
                                    <?php echo Html::encode($action['description']) ?>
                                    <?php echo Html::a(Icon::show('edit'), 'javascript:void(0)', [
                                        'data-toggle' => 'modal',
                                        'data-target' => "#modal_action_" . $action['action_id'],
                                    ]) ?>
                                </p>
                                <!-- Modal -->
                                <div id="modal_action_<?php echo $action['action_id'] ?>" class="modal fade" role="dialog">
                                    <div class="modal-dialog">

                                        <!-- Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title">Sửa mô tả</h4>
                                            </div>
                                            <div class="modal-body">
                                                <input type="text" class="form-control" id="text_action_<?php echo $action['action_id'] ?>" value="<?php echo $action['description'] ?>">
                                                <p class="error" id="error_action_<?php echo $action['action_id'] ?>"></p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success" id="edit_action_desc" data-action_id="<?php echo $action['action_id'] ?>"><?php echo Icon::show('save') ?> Lưu</button>
                                                <button type="button" class="btn btn-warning" data-dismiss="modal"><?php echo Icon::show('close') ?> Hủy</button>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            <?php } ?>
                        </td>
                        <td style="text-align: center">
                            <?php
                            $checked = false;
                            if (isset($actions_ids) && array_diff($arr_action_ids, $actions_ids) == null) {
                                $checked = true;
                            }
                            ?>
                            <?php echo Html::tag('input', '', array(
                                'type' => 'checkbox',
                                'class' => 'check-all',
                                'id' => $controller['controller_id'],
                                'checked' => $checked,
                                'onclick' => 'checkAllControllerPermission(this)'
                            )); ?>
                        </td>
                    </tr>
                <?php } ?>
                </tbody>
            </table>
            <br/>
        </div>
    </div>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Icon::show('floppy-o') . " " .  Yii::t('cms', 'Create') : Yii::t('cms', 'Update'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Icon::show('undo') . " " .  Yii::t('cms', 'Reset'), ['class' => 'btn btn-default']); ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

<style>
    .modal-header {
        background-color: #337ab7;
        color: #f7f7f7;
    }
    .error {
        color: red;
        margin-top: 10px;
    }
</style>

<script src="/themes/default/js/jquery.min.js"></script>

<script>
    $(document).on('click', '#edit_controller_desc', function () {
        var controller_id = $(this).data('controller_id');
        var text = $("#text_controller_" + controller_id).val();
        var _csrf = $("meta[name='csrf-param']").attr('content');

        if (text == '') {
            $("#error_controller_" + controller_id).text("Vui lòng nhập nội dung.");
            return false;
        } else {
            $.ajax({
                method: 'POST',
                data: {'_csrf' : _csrf, 'controller_id' : controller_id, 'desc' : text},
                url: '<?php echo Url::toRoute(['/admin-group/update-controller']) ?>',
                success: function () {
                    location.reload();
                }
            });
        }
    });

    $(document).on('click', '#edit_action_desc', function () {
        var action_id = $(this).data('action_id');
        var text = $("#text_action_" + action_id).val();
        var _csrf = $("meta[name='csrf-param']").attr('content');

        if (text == '') {
            $("#error_action_" + action_id).text("Vui lòng nhập nội dung.");
            return false;
        } else {
            $.ajax({
                method: 'POST',
                data: {'_csrf' : _csrf, 'action_id' : action_id, 'desc' : text},
                url: '<?php echo Url::toRoute(['/admin-group/update-action']) ?>',
                success: function () {
                    location.reload();
                }
            });
        }
    });
</script>