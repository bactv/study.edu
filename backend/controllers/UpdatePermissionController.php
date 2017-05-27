<?php
/**
 * Created by PhpStorm.
 * User: Bac Truong Van
 * Date: 04/03/2017
 * Time: 12:43 SA
 */
namespace backend\controllers;

use backend\components\BackendController;
use Yii;
use backend\models\AdminController;
use backend\models\AdminAction;

class UpdatePermissionController extends BackendController
{
    public function actionUpdateRouter()
    {
        // Get controller in folder
        $arr_controller = [];
        $listControllers = glob(Yii::getAlias('@backend') . '/controllers' . '/*Controller.php');
        if (!empty($listControllers)) {
            foreach ($listControllers as $controller) {
                $class = substr(basename($controller, ".php"), 0, -10);
                if (!in_array($class, Yii::$app->params['controller_except'])) {
                    array_push($arr_controller, $class);
                }
            }
        }
        // Get controller from DB
        $arr_controllerDB = [];
        $listControllersDB = AdminController::getAllAdminControllers();
        if (!empty($listControllersDB)) {
            foreach ($listControllersDB as $con) {
                $arr_controllerDB[] = $con['controller_name'];
            }
        }

        // Insert or update
        $listUpdateController = array_diff($arr_controller, $arr_controllerDB);
        if (!empty($listUpdateController)) {
            foreach ($listUpdateController as $item) {
                $model_controller = new AdminController();
                $model_controller->controller_name = $item;
                $model_controller->description = $item;
                $model_controller->save();
            }
        }
        // Delete
        $listDeleteController = array_diff($arr_controllerDB, $arr_controller);
        if (!empty($listDeleteController)) {
            foreach ($listDeleteController as $item) {
                $model_controller = AdminController::getAdminController(array('controller_name' => $item));
                $actions = AdminAction::getAllAdminActions(array('controller_id' => $model_controller['controller_id']));
                if (!empty($actions)) {
                    foreach ($actions as $at) {
                        $at->delete();
                    }
                }
                $model_controller->delete();
            }
        }
        /*-------------------------- Action ------------------------------*/
        $listActionController = AdminController::getAllAdminControllers();
        if (!empty($listActionController)) {
            foreach ($listActionController as $controller) {
                $controllerName = $controller['controller_name'] . 'Controller';
                $className = "backend\\controllers\\{$controllerName}";
                if (class_exists($className)) {
                    $obj = new $className($controllerName, null);
                    $methods = get_class_methods($obj);
                    $arrActionFile = [];
                    foreach ($methods as $method) {
                        if ($method != 'actions' && preg_match('/^action/', $method)) {
                            $methodName = substr($method, 6);
                            $arrActionFile[] = $methodName;
                        }
                    }
                    $arrActionDB = [];
                    $listActionDB = AdminAction::getAllAdminActions(array('controller_id' => $controller['controller_id']));
                    if (!empty($listActionDB)) {
                        foreach ($listActionDB as $at) {
                            $arrActionDB[] = $at['action_name'];
                        }
                    }
                    // Insert Or Update
                    $listActionUpdate = array_diff($arrActionFile, $arrActionDB);
                    foreach ($listActionUpdate as $at) {
                        $model = new AdminAction();
                        $model->action_name = $at;
                        $model->controller_id = $controller['controller_id'];
                        $model->controller_name = $controller['controller_name'];
                        $model->description = $at;
                        $model->save();
                    }
                    // Delete
                    $listActionDelete = array_diff($arrActionDB, $arrActionFile);
                    foreach ($listActionDelete as $at) {
                        $model = AdminAction::getAdminAction(array('controller_id' => $controller['controller_id'], 'action_name' => $at));
                        if (!empty($model)) {
                            $model->delete();
                        }
                    }
                }
            }
        }
    }
}