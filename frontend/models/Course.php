<?php

namespace frontend\models;

use Yii;


class Course extends \common\models\CourseBase
{
    public $logo;
    public $outline;

    public function attributeLabels()
    {
        return array_merge(parent::attributeLabels(), [
            'logo' => 'Logo khóa học',
            'outline' => 'Đề cương khóa học'
        ]);
    }

    public function rules()
    {
        return [
            [['name', 'description', 'course_type_id', 'subject_id', 'teacher_ids'], 'required'],
            [['party_id', 'status', 'deleted', 'approved', 'approver', 'course_type_id', 'subject_id'], 'integer'],
            [['description'], 'string'],
            [['deadline_register', 'created_time', 'updated_time'], 'safe'],
            [['price'], 'number'],
            [['name'], 'string', 'max' => 255],
            [['logo'], 'file', 'extensions' => 'png, jpg, jpeg, gif'],
            [['outline'], 'file', 'extensions' => 'doc, docx, pdf, xlsx'],
            [['outline'], 'required', 'on' => 'create']
        ];
    }

    public static function get_list_feature_course($limit = 8, $offset = 1, $params = [])
    {
        $sql = "SELECT
                t1.*,
                COUNT(t2.student_id) as total_student
                FROM course as t1
                LEFT JOIN student_course as t2 ON t2.course_id=t1.id
                WHERE t1.status = 1 AND t1.deleted = 0 AND t1.approved = 1";
        if (isset($params['subject_id']) && $params['subject_id'] > 0) {
            $sql .= " AND t1.subject_id=" . $params['subject_id'];
        }

        $sql .= " GROUP BY t1.id ORDER BY total_student DESC, t1.updated_time";

        if ($offset > 1) {
            $sql .= " LIMIT " . $limit * $offset;
        } else {
            $sql .= " LIMIT " . $limit;
        }
        $data = Yii::$app->db->createCommand($sql)->queryAll();
        return $data;
    }

    public static function get_course_by_id($id)
    {
        return self::findOne(['id' => $id, 'status' => 1, 'deleted' => 0, 'approved' => 1]);
    }

    public static function get_other_course($limit = 5, $course_id, $subject_id = '')
    {
        $data = Course::find()
            ->where(['status' => 1, 'deleted' => 0, 'approved' => 1])
            ->andWhere('id != "' . $course_id . '"');
        $dt1 = clone $data;
        if ($subject_id != '') {
            $dt1 = $dt1->andWhere(['subject_id' => $subject_id]);
        }
        if ($dt1->count() >= $limit) {
            return $dt1->orderBy('id DESC')->limit($limit)->all();
        } else {
            return $data->orderBy('id DESC')->limit($limit)->all();
        }
    }

    public static function get_course_active($course_id)
    {
        $object = Course::findOne([
            'id' => $course_id,
            'approved' => 1,
            'deleted' => 0,
            'status' => 1,
        ]);
        return $object;
    }

    /**
     * Upload file
     * @param $attribute
     * @param $course_id
     * @param $type
     * @return bool
     */
    public function upload_file($attribute, $course_id, $type = 'logo')
    {
        if ($this->{$attribute} == null) {
            return true;
        }

        if ($type == 'logo') {
            $path = Yii::$app->params['storage']['path'] . Yii::$app->params['storage']['img.course']['path'];
        } else {
            $path = Yii::$app->params['storage']['path'] . Yii::$app->params['storage']['assets.course']['path'] . $course_id . '/' . $type . '/';
        }
        if (!is_dir($path)) {
            mkdir($path, 0777, true);
        }
        if ($type == 'logo') {
            $extension = 'png';
            $basename = $course_id;
        } else {
            $extension = $this->{$attribute}->extension;
            $basename = $this->{$attribute}->baseName;
        }
        if ($this->validate()) {
            return $this->{$attribute}->saveAs($path . $basename . '.' . $extension);
        }
        return false;
    }
}