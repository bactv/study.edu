<?php
/**
 * Created by PhpStorm.
 * User: Bac Truong Van
 * Date: 08/03/2017
 * Time: 1:28 SA
 */

namespace backend\components;
use backend\models\Admin;
use backend\models\AdminAction;
use backend\models\AdminGroup;
use Yii;


class CheckPermission
{
    public static function checkPermission($admin_id, $controller_name, $action_name)
    {
        $controller_name = str_replace('-', '', $controller_name);
        $action_name = str_replace('-', '', $action_name);

        $check = false;
        $admin = Admin::findIdentity($admin_id);
        $arr_ad_group_ids = !empty($admin['group_ids']) ? json_decode($admin['group_ids']) : [];
        if (!empty($arr_ad_group_ids)) {
            foreach ($arr_ad_group_ids as $ad_group_id) {
                $admin_group = AdminGroup::find()->where(['id' => $ad_group_id])->one();
                if (!empty($admin_group) && $admin_group['status'] == 1) {
                    $arr_controllers = [];
                    $arr_actions = [];
                    $arr_actions_ids = !empty($admin_group['action_ids']) ? json_decode($admin_group['action_ids']) : [];
                    if (!empty($arr_actions_ids)) {
                        foreach ($arr_actions_ids as $action_id) {
                            $admin_action = AdminAction::getAdminAction(['action_id' => $action_id]);
                            $arr_controllers[] = strtolower($admin_action['controller_name']);
                            $arr_actions[] = strtolower($admin_action['action_name']);
                        }
                    }
                    $arr_controllers = array_unique($arr_controllers);
                    $arr_actions = array_unique($arr_actions);
                    if (in_array(strtolower($controller_name), $arr_controllers) && in_array(strtolower($action_name), $arr_actions)) {
                        $check = true;
                        break;
                    }
                }
            }
        }
        return $check;
    }
}