<?php

namespace backend\models;

use common\components\Utility;
use Yii;
use yii\db\Query;


class Teacher extends \common\models\TeacherBase
{
    public $username;
    public $password;

    public function rules()
    {
        return [
            [['user_id', 'full_name'], 'required'],
            [['user_id', 'gender'], 'integer'],
            [['intro'], 'string'],
            [['created_time', 'updated_time'], 'safe'],
            [['full_name', 'email'], 'string', 'max' => 60],
            [['work_place'], 'string', 'max' => 255],
            [['phone', 'degree'], 'string', 'max' => 30],
            [['avatar'], 'file', 'extensions' => 'jpg, jpeg, png, gif']
        ];
    }

    public static function get_all_teacher_active()
    {
        return (new Query())
            ->select('t1.*')
            ->from('teacher as t1')
            ->innerJoin('user as t2', 't2.id=t1.user_id')
            ->where(['t2.status' => 1, 't2.deleted' => 0])
            ->all();
    }

    /**
     * Upload avatar
     * @param $id
     * @return bool
     */
    public function uploadAvatar($id)
    {
        if ($this->avatar == null) {
            return true;
        }
        $path =  Yii::$app->params['img_url']['user_avatar']['folder'] . '/';
        $path_admin = Yii::getAlias('@webroot') . '/storage/' . $path;
        if (!is_dir($path_admin)) {
            mkdir($path_admin, 0777);
        }
        $this->avatar->saveAs($path_admin . $id . '.png');
        return Utility::uploadFile($path, $path . $id . '.png', Yii::$app->params['cms_url'] . 'storage/' . $path . $id . '.png');
    }
}