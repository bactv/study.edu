<?php

namespace backend\models;

use Yii;


class Subject extends \common\models\SubjectBase
{
    public static function delete_subject($id)
    {
        $model = self::findOne(['id' => $id]);
        if (!empty($model)) {
            $model->deleted = 1;
            if ($model->save()) {
                Yii::$app->db->createCommand()->update('course', ['deleted' => 1], ['subject_id' => $id])->execute();
                Yii::$app->db->createCommand()->update('quiz', ['deleted' => 1], ['subject_id' => $id])->execute();
            }
        }
    }
}