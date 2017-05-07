<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 9:21 CH
 */
namespace console\controllers;

use backend\models\Student;
use frontend\models\Question;
use frontend\models\QuestionAnswer;
use frontend\models\Quiz;
use frontend\models\Topic;
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

    public function actionTestSubjectTopic($count = 50)
    {
        $faker = \Faker\Factory::create();
        for ($i = 0; $i < $count; $i++) {
            $obj = new Topic();
            $obj->name = $faker->sentence(4);
            $obj->description = $faker->sentence(30);
            $obj->subject_id = mt_rand(1, 7);
            $obj->save();
        }
        echo "DONE";
    }

    public function actionTestQuiz($count = 30)
    {
        $faker = \Faker\Factory::create();
        for ($i = 0; $i < $count; $i++) {
            $obj = new Quiz();
            $obj->name = $faker->sentence(5);
            $obj->description = $faker->sentence(30);
            $obj->quiz_type_id = mt_rand(1, 3);
            $obj->topic_id = mt_rand(1, 41);
            $obj->subject_id = Topic::findOne(['id' => $obj->topic_id])->subject_id;
            $obj->level = $faker->randomElement(['easy', 'normal', 'hard']);
            $obj->status = 1;
            $obj->total_question = $faker->randomElement([10, 20, 30, 40]);
            if ($obj->total_question == 10) {
                $obj->time_length = 15;
            } else if ($obj->total_question == 20) {
                $obj->time_length = 30;
            } else if ($obj->total_question == 30) {
                $obj->time_length = 40;
            } else {
                $obj->time_length = 60;
            }
            $obj->save();
        }
        echo "DONE";
    }

    public function actionTestQuestion()
    {
        $faker = \Faker\Factory::create();
        $arr_quiz = Quiz::findAll(['status' => 1]);
        foreach ($arr_quiz as $quiz) {
            for ($i = 0; $i < $quiz['total_question']; $i++) {
                $ques = new Question();
                $ques->content = $faker->unique()->sentence(17) . ' ?';
                $ques->quiz_id = $quiz->id;
                $ques->subject_id = $quiz->subject_id;
                $ques->topic_id = $quiz->topic_id;
                $ques->solution = $faker->sentence(30);
                if ($ques->save()) {
                    $random_true = mt_rand(0, 3);
                    for ($j = 0; $j < 4; $j++) {
                        $object2 = new QuestionAnswer();
                        $object2->question_id = $ques->id;
                        $object2->content = $faker->unique()->sentence(2);
                        if ($j == $random_true) {
                            $object2->is_true = 1;
                        }
                        $object2->save();
                    }
                }
            }
        }
    }
}