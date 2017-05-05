<?php
/**
 * Created by PhpStorm.
 * User: Bac Truong Van
 * Date: 07/03/2017
 * Time: 10:52 CH
 */
namespace common\behaviors;

use Yii;
use yii\behaviors\AttributeBehavior;
use yii\db\BaseActiveRecord;
use yii\db\Expression;

class TimestampBehavior extends AttributeBehavior
{
    public $createdAtAttribute = 'created_time';
    public $updatedAtAttribute = 'updated_time';
    public $value;
    /**
     * @inheritdoc
     */
    public function init()
    {
        parent::init();
        if (empty($this->attributes)) {
            $this->attributes = [
                BaseActiveRecord::EVENT_BEFORE_INSERT => [$this->createdAtAttribute, $this->updatedAtAttribute],
                BaseActiveRecord::EVENT_BEFORE_UPDATE => $this->updatedAtAttribute,
            ];
        }
    }
    public function events()
    {
        return parent::events(); // TODO: Change the autogenerated stub
    }
    /**
     * @param \yii\base\Event $event
     * @return int|mixed|Expression
     */
    protected function getValue($event)
    {
        if ($this->value instanceof Expression) {
            return $this->value;
        } else {
            return $this->value !== null ? call_user_func($this->value, $event) : date('Y-m-d H:i:s', time());
        }
    }
}