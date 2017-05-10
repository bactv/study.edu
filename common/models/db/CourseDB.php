<?php

namespace common\models\db;

use Yii;

/**
 * This is the model class for table "course".
 *
 * @property integer $id
 * @property string $name
 * @property string $teacher_ids
 * @property integer $party_id
 * @property string $description
 * @property string $deadline_register
 * @property integer $status
 * @property integer $deleted
 * @property integer $approved
 * @property integer $approver
 * @property string $price
 * @property integer $course_type_id
 * @property integer $subject_id
 * @property string $created_time
 * @property string $updated_time
 */
class CourseDB extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'course';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'description', 'course_type_id', 'subject_id'], 'required'],
            [['party_id', 'status', 'deleted', 'approved', 'approver', 'course_type_id', 'subject_id'], 'integer'],
            [['description'], 'string'],
            [['deadline_register', 'created_time', 'updated_time'], 'safe'],
            [['price'], 'number'],
            [['name'], 'string', 'max' => 255],
            [['teacher_ids'], 'string', 'max' => 30]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('cms', 'ID'),
            'name' => Yii::t('cms', 'Name'),
            'teacher_ids' => Yii::t('cms', 'Teacher Ids'),
            'party_id' => Yii::t('cms', 'Party ID'),
            'description' => Yii::t('cms', 'Description'),
            'deadline_register' => Yii::t('cms', 'Deadline Register'),
            'status' => Yii::t('cms', 'Status'),
            'deleted' => Yii::t('cms', 'Deleted'),
            'approved' => Yii::t('cms', 'Approved'),
            'approver' => Yii::t('cms', 'Approver'),
            'price' => Yii::t('cms', 'Price'),
            'course_type_id' => Yii::t('cms', 'Course Type ID'),
            'subject_id' => Yii::t('cms', 'Subject ID'),
            'created_time' => Yii::t('cms', 'Created Time'),
            'updated_time' => Yii::t('cms', 'Updated Time'),
        ];
    }
}
