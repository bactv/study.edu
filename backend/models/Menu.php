<?php

namespace backend\models;

use backend\components\CheckPermission;
use common\behaviors\TimestampBehavior;
use kartik\icons\Icon;
use Yii;
use yii\helpers\Url;


class Menu extends \common\models\MenuBase
{
    public function behaviors()
    {
        return array(
            array(
                'class' => TimestampBehavior::class,
                'attributes' => array(
                    self::EVENT_BEFORE_INSERT => array('created_time', 'updated_time'),
                    self::EVENT_BEFORE_UPDATE => array('updated_time'),
                )
            ),
        );
    }

    /**
     * Get all backend menu
     * @return array|\yii\db\ActiveRecord[]
     */
    public static function getAllMenus()
    {
        $allMenus =  static::find()->where(['status' => 1, 'module' => 1])->all();
        $menus = [];
        foreach ($allMenus as $menu) {
            if (self::checkMenuPermission($menu)) {
                $menus[] = $menu;
            }
        }
        return $menus;
//        return $allMenus;
    }
    /**
     * Get menu backend by menu_id
     * @param $menu_id
     * @return array|null|\yii\db\ActiveRecord
     */
    public static function getMenuById($menu_id)
    {
        return static::find()->where(['id' => $menu_id, 'status' => 1, 'module' => 1])->one();
    }
    /**
     * Get Parent menu
     * @param $parent_id
     * @return array|null|\yii\db\ActiveRecord
     */
    public static function getParentMenuByMenuId($parent_id)
    {
        return static::find()->where(['parent_id' => $parent_id, 'status' => 1, 'module' => 1])->one();
    }
    /**
     * Get all child menu by parent_id
     * @param $parent_id
     * @return array|\yii\db\ActiveRecord[]
     */
    public static function getChildMenu($parent_id)
    {
        $allMenus = static::find()->where(['status' => 1, 'module' => 1, 'parent_id' => $parent_id])->orderBy('sort')->all();
        $menus = [];
        foreach ($allMenus as $menu) {
            if (self::checkMenuPermission($menu)) {
                $menus[] = $menu;
            }
        }
        return $menus;
//        return $allMenus;
    }
    /**
     * Show menu
     * @param $categoryMenu
     * @return string
     */
    public static function categoryDropDown($categoryMenu)
    {
        static $view;
        foreach ($categoryMenu as $menu) {
            $view .= static::setHtmlMenu($menu);
            if (static::getChildMenu($menu['id']) == null) {
                $view .= "</li>";
                continue;
            }
            $view .= "<ul class=\"child_menu\">";
            static::categoryDropDown(static::getChildMenu($menu['id']));
            $view .= "</ul>";
            $view .= "</li>";
        }
        return $view;
    }
    /**
     * @param $menu
     * @return string
     */
    private static function setHtmlMenu($menu)
    {
        $childs = static::getChildMenu($menu->id);
        if ($menu['parent_id'] != 0) {
            $str = "<li id='" . $menu['id'] ."'>";
        } else {
            $str = "<li id='" . $menu['id'] ."'>";
        }
        $url = !empty($childs) ? "javascript:void(0);" : Url::toRoute($menu['url']);
        $str .= "<a href='" . $url ."'>";
        $str .= "<span id='icon'>" . Icon::show($menu['icon']) . "</span>";
        $str .= "<span id='menu_name'>" . $menu['name'] . "</span>";
        if ($menu['url'] == 'notification/index') {
            $all_feedback = count(Notification::list_new_notification());
            $add_str = "<span class=\"label label-warning\">" . $all_feedback . "</span>";
            $str .= " " . $add_str;
        }
        if (!empty($childs)) {
            $str .= "<span id='chevron_icon'>" . Icon::show('chevron-right') . "</span>";
        }
        $str .= "</a>";
        return $str;
    }
    public static function getCategoryMenuTree($categoryArray, $parentId, $level)
    {
        static $options;
        $level++;
        foreach ($categoryArray  as  $array) {
            if($array['parent_id'] == $parentId) {
                $opt = str_repeat("-- ", $level-1) . $array['name'] ;
                $options[$array['id']] =  $opt;
                $newParent = $array['id'];
                $options = static::getCategoryMenuTree($categoryArray, $newParent, $level);
            }
        }
        return $options;
    }

    /**
     * Kiểm tra xem admin hiện tạo có được truy cập menu này hay không
     * @param $menu
     * @return bool
     */
    private static function checkMenuPermission($menu)
    {
        $user_id = Yii::$app->user->id;
        if ($user_id == 1) {
            return true;
        }
        if ($menu['parent_id'] == 0) {
            $childs = self::fetch_recursive(Menu::findAll(['parent_id' => $menu['id'], 'status' => 1]), $menu['id']);
            foreach ($childs as $c) {
                $ex = explode('/', $c['url']);
                $controller_name = isset($ex[0]) ? trim(str_replace('-', '', $ex[0])) : '';
                $action_name = isset($ex[1]) ? trim(str_replace('-', '', $ex[1])) : '';
                if (CheckPermission::checkPermission($user_id, $controller_name, $action_name)) {
                    return true;
                }
            }
        } else {
            $ex = explode('/', $menu['url']);
            $controller_name = isset($ex[0]) ? trim(str_replace('-', '', $ex[0])) : '';
            $action_name = isset($ex[1]) ? trim(str_replace('-', '', $ex[1])) : '';
            if (CheckPermission::checkPermission($user_id, $controller_name, $action_name)) {
                return true;
            }
            return false;
        }
    }

    private static function fetch_recursive($src_arr, $currentid, $parentfound = false, $cats = array())
    {
        foreach($src_arr as $row) {
            if((!$parentfound && $row['id'] == $currentid) || $row['parent_id'] == $currentid) {
                $rowdata = array();
                foreach($row as $k => $v)
                    $rowdata[$k] = $v;
                $cats[] = $rowdata;
                if($row['parent_id'] == $currentid)
                    $cats = array_merge($cats, self::fetch_recursive($src_arr, $row['id'], true));
            }
        }
        return $cats;
    }

    private static function get_root_node($menu)
    {
        if ($menu['parent_id'] == 0) {
            return $menu;
        }
        $parent = Menu::findOne(['id' => $menu['parent_id'], 'status' => 1]);
        return self::get_root_node($parent);
    }
}