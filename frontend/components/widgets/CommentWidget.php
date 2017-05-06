<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 3:17 CH
 */
namespace frontend\components\widgets;

use yii\base\Widget;

class CommentWidget extends Widget
{
    public function run()
    {
        return $this->render('comment/index');
    }
}