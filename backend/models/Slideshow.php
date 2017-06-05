<?php

namespace backend\models;

use common\components\Utility;
use Yii;


class Slideshow extends \common\models\SlideshowBase
{
    public $img;

    public function rules()
    {
        return [
            [['status'], 'integer'],
            [['alt', 'url'], 'string', 'max' => 255],
            ['img', 'file', 'extensions' => 'jpg, png, jpeg, gif'],
            ['img', 'required', 'on' => 'create']
        ];
    }


    /**
     * Upload slideshow
     * @param $id
     * @return bool
     */
    public function uploadImg($id)
    {
        if ($this->img == null) {
            return true;
        }

        $path = Yii::$app->params['storage']['path'] . Yii::$app->params['storage']['img.slide']['path'];
        if (!is_dir($path)) {
            mkdir($path, 0777, true);
        }
        if ($this->validate()) {
            return $this->img->saveAs($path . $id . '.png');
        }
        return false;
    }
}