<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "lesson".
 *
 * @property integer $id
 * @property integer $course_id
 * @property string $name
 * @property string $description
 * @property string $link_video
 * @property integer $time_length
 * @property integer $sort
 * @property integer $number_view
 * @property integer $status
 * @property string $publish_date
 * @property string $created_time
 * @property string $updated_time
 */
class LessonDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'lesson';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['course_id', 'name', 'description'], 'required'],
            [['course_id', 'time_length', 'sort', 'number_view', 'status'], 'integer'],
            [['description'], 'string'],
            [['publish_date', 'created_time', 'updated_time'], 'safe'],
            [['name', 'link_video'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'course_id' => Yii::t('cms', 'Course ID'),
            'name' => Yii::t('cms', 'Name'),
            'description' => Yii::t('cms', 'Description'),
            'link_video' => Yii::t('cms', 'Link Video'),
            'time_length' => Yii::t('cms', 'Time Length'),
            'sort' => Yii::t('cms', 'Sort'),
            'number_view' => Yii::t('cms', 'Number View'),
            'status' => Yii::t('cms', 'Status'),
            'publish_date' => Yii::t('cms', 'Publish Date'),
            'created_time' => Yii::t('cms', 'Created Time'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
        ];
    }
}
