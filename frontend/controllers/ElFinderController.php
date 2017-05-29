<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 27/05/2017
 * Time: 9:42 SA
 */
namespace frontend\controllers;
use Yii;
use yii\web\Controller;
use zxbodya\yii2\elfinder\ConnectorAction;

class ElFinderController extends Controller
{
    public function actions()
    {
        return [
            'connector' => array(
                'class' => ConnectorAction::className(),
                'settings' => array(
                    'root' => Yii::$app->params['storage']['path'] . Yii::$app->params['storage']['img.common']['path'] ,
                    'URL' => Yii::$app->params['assets_path']['img.common'],
                    'rootAlias' => 'Home',
                    'mimeDetect' => 'none'
                )
            ),
        ];
    }
}