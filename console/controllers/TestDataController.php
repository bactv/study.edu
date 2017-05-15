<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 06/05/2017
 * Time: 9:21 CH
 */
namespace console\controllers;

use backend\models\LessonQuiz;
use backend\models\LessonQuizQuestion;
use backend\models\LessonQuizQuestionAnswer;
use backend\models\Student;
use frontend\models\Lesson;
use frontend\models\Teacher;
use frontend\controllers\CourseController;
use frontend\models\Course;
use frontend\models\CourseTeacher;
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

    public function actionTestTeacherAccount($count = 10)
    {
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < $count; $i++) {
            $user = new User();
            $user->username = $faker->userName;
            $user->password = md5('123456');
            $user->type = 2;
            $user->created_time = date('Y-m-d H:i:s');
            $user->updated_time = date('Y-m-d H:i:s');

            if ($user->save()) {
                $std = new Teacher();
                $std->user_id = $user->id;
                $std->full_name = $faker->name;
                $std->email = $faker->unique()->email;
                $std->gender = mt_rand(1, 2);
                $std->intro = $faker->sentence(30);
                $std->work_place = $faker->address;
                $std->phone = $faker->unique()->phoneNumber;
                $std->degree = $faker->randomElement(['Ts', 'Ths', 'Sv']);
                $std->created_time = date('Y-m-d H:i:s');
                $std->updated_time = date('Y-m-d H:i:s');
                $std->save();
            }
        }
        echo "DONE";
    }

    public static function actionTestCourse($count = 30)
    {
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < $count; $i++) {
            $course = new Course();
            $course->name = $faker->sentence(6);
            $course->teacher_ids = json_encode($faker->randomElements([7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18], mt_rand(1, 2)));
            if ($i % 5 == 0) {
                $course->party_id = mt_rand(2, 11);
            }
            $course->description = $faker->sentence(500);
            $course->price = $faker->randomElement([0, 100000, 300000, 500000, 700000, 900000]);
            $course->course_type_id = mt_rand(1,2);
            $course->subject_id = mt_rand(1, 7);
            $course->status = mt_rand(0, 1);
            $course->deleted = mt_rand(0, 1);
            $course->approved = $faker->randomElement([-1, 0, 1]);
            if ($course->price > 0) {
                $course->deadline_register = date('Y-m-d', strtotime(date('Y-m-d') . ' +' . mt_rand(3, 7) . ' days'));
            }
            $course->created_time = date('Y-m-d H:i:s');
            $course->updated_time = date('Y-m-d H:i:s');

            if ($course->save()) {
                $de = json_decode($course->teacher_ids);
                if (is_array($de)) {
                    foreach ($de as $tch) {
                        $course_teacher = new CourseTeacher();
                        $course_teacher->course_id = $course->id;
                        $course_teacher->course_name = $course->name;
                        $course_teacher->teacher_id = $tch;
                        $course_teacher->teacher_name = Teacher::getAttributeValue(['user_id' => $tch], 'full_name');
                        if (!$course_teacher->save()) {
                            break;
                        }
                    }
                }
            } else {
                break;
            }
        }
    }

    public static function actionTestLesson($count = 1000)
    {
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < $count; $i++) {
            $lesson = new Lesson();
            $lesson->course_id = mt_rand(1, 30);
            $lesson->name = $faker->sentence(8);
            $lesson->description = $faker->sentence(100);
            $lesson->link_video = "https://www.youtube.com/watch?v=zwoTa2AyLNI";
            $lesson->time_length = mt_rand(20, 50);
            $lesson->publish_date = date('Y-m-d', strtotime(date('Y-m-d') . ' +' . mt_rand(0, 5) . ' days'));
            $lesson->created_time = $lesson->updated_time = date('Y-m-d H:i:s');
            $lesson->save();
        }
        echo "DONE";
    }

    public static function actionTestLessonQuiz()
    {
        $faker = \Faker\Factory::create();

        $allLesson = Lesson::findAll(['course_id' => 1]);
        foreach ($allLesson as $lesson) {
            $num_quiz = mt_rand(2, 4);
            for ($i = 0; $i < $num_quiz; $i++) {
                // bang lesson_quiz
                $lesson_quiz = new LessonQuiz();
                $lesson_quiz->course_id = 1;
                $lesson_quiz->lesson_id = $lesson['id'];
                $tmp =  mt_rand(5, 10);
                $lesson_quiz->total_question = $tmp;
                $lesson_quiz->pass_exam = $tmp - 2;
                if ($lesson_quiz->save()) {
                    // bang lesson_quiz_question
                    for ($j = 0; $j < $tmp; $j++) {
                        $ques = new LessonQuizQuestion();
                        $ques->lesson_id = $lesson['id'];
                        $ques->quiz_id = $lesson_quiz->id;
                        $ques->question = $faker->unique()->sentence(17) . ' ?';
                        if ($ques->save()) {
                            $random_true = mt_rand(0, 3);
                            for ($k = 0; $k < 4; $k++) {
                                $object2 = new LessonQuizQuestionAnswer();
                                $object2->lesson_id = $lesson['id'];
                                $object2->question_id = $ques->id;
                                $object2->ans_content = $faker->unique()->sentence(2);
                                if ($k == $random_true) {
                                    $object2->is_true = 1;
                                }
                                $object2->save();
                            }
                        }
                    }
                }
            }
        }
        echo "DONE";
    }
}