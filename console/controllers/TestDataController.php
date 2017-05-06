<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 9:21 CH
 */
namespace console\controllers;

use backend\models\Student;
use frontend\models\User;
use Yii;
use yii\console\Controller;

class TestDataController extends Controller
{
    public function actionTestStudentAccount($count = 5)
    {
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < $count; $i++) {
            $user = new User();
            $user->username = $faker->userName;
            $user->password = md5('123456');
            $user->type = 1;
            $user->created_time = date('Y-m-d H:i:s');
            $user->updated_time = date('Y-m-d H:i:s');

            if ($user->save()) {
                $std = new Student();
                $std->user_id = $user->id;
                $std->full_name = $faker->name;
                $std->school = $faker->sentence(6);
                $std->created_time = date('Y-m-d H:i:s');
                $std->updated_time = date('Y-m-d H:i:s');
                $std->save();
            }
        }
        echo "DONE";
    }
}