<?php

namespace backend\models;

use common\behaviors\TimestampBehavior;
use Yii;


class StaticPage extends \common\models\StaticPageBase
{
    public function behaviors()
    {
        return [
            [
                'class' => TimestampBehavior::className(),
                'attributes' => [
                    self::EVENT_BEFORE_INSERT => ['created_time', 'updated_time'],
                    self::EVENT_BEFORE_UPDATE => ['updated_time'],
                ]
            ]
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['type', 'content'], 'required'],
            [['content'], 'string'],
            [['created_time', 'updated_time'], 'safe'],
            [['type'], 'string', 'max' => 60],
            ['type', 'validateType']
        ];
    }

    public function validateType()
    {
        // tạo mới
        if ($this->id == '') {
            $check = self::findOne(['type' => $this->type]);
            if (!empty($check)) {
                $this->addError('type', 'Đã tồn tại loại này. Vui lòng chọn loại khác');
            }
        } else {        // cập nhật
            $check = self::findOne(['type' => $this->type]);
            if ($this->id != $check->id) {
                $this->addError('type', 'Đã tồn tại loại này. Vui lòng chọn loại khác');
            }
        }
    }


}