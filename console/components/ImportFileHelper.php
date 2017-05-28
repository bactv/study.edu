<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 28/05/2017
 * Time: 3:51 SA
 */
namespace console\components;

use arogachev\excel\import\basic\Importer;
use backend\models\ImportFile;
use backend\models\ImportQuestion;
use backend\models\Question;
use backend\models\QuestionAnswer;
use backend\models\Quiz;
use backend\models\Topic;
use Yii;

class ImportFileHelper
{
    protected static $_instance = null;

    public static function getInstance() {
        if (null === self::$_instance) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    public function process($type)
    {
        switch ($type) {
            case 'agreement':
                break;
            case 'addendum':
                break;
            case 'topic_subject':
                $arr_file = $this->_prepare($type);
                $this->_process_topic_subject($arr_file);
                break;
            case 'quiz':
                $arr_file = $this->_prepare($type);
                $this->_process_quiz($arr_file);
                break;
            case 'question_quiz':
                $arr_file = $this->_prepare($type);
                $this->_process_question_quiz($arr_file);
                $this->_inert_to_question_quiz();
                break;
            default:
                break;
        }
    }

    private function _prepare($type)
    {
        // lấy danh sách các file hợp  trong folder
        $arr_files = $this->_load_files_by_import_type(Yii::$app->params['storage']['path'] . Yii::$app->params['storage']['file_import']['path']);
        // danh sách các file chưa xử lý
        $arr_files_not_process = ImportFile::findAll(['status' => 0, 'type' => $type]);
        $arr_file_needed_process = [];
        foreach ($arr_files_not_process as $import) {
            foreach ($arr_files as $file) {
                if ($import->id . '.xlsx' === basename($file)) {
                    $arr_file_needed_process[$import->id] = $file;
                }
            }
        }
        return $arr_file_needed_process;
    }

    private function _process_topic_subject($arr_file)
    {
        foreach ($arr_file as $k => $file) {
            $importer = new Importer([
                'filePath' => $file,
                'standardModelsConfig' => [
                    [
                        'className' => Topic::className(),
                        'standardAttributesConfig' => [
                            [
                                'name' => 'name',
                                'label' => 'Tên chuyên đề',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'description',
                                'label' => 'Mô tả chuyên đề',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'subject_id',
                                'label' => 'ID Môn học',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                        ],
                    ],
                ],
            ]);
            if (!$importer->run()) {
                echo json_encode($importer->error);

                if ($importer->wrongModel) {
                    echo json_encode($importer->wrongModel);
                }
            } else {
                Yii::$app->db->createCommand()->update('import_file', ['status' => 1], ['id' => $k])->execute();
                echo "DƠNE";
            }
        }
    }

    private function _process_quiz($arr_file)
    {
        foreach ($arr_file as $k => $file) {
            $importer = new Importer([
                'filePath' => $file,
                'standardModelsConfig' => [
                    [
                        'className' => Quiz::className(),
                        'standardAttributesConfig' => [
                            [
                                'name' => 'name',
                                'label' => 'Tên đề thi',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'description',
                                'label' => 'Mô tả đề thi',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'quiz_type_id',
                                'label' => 'ID Loại đề thi',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'subject_id',
                                'label' => 'ID Môn học',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'topic_id',
                                'label' => 'ID Chuyên đề môn học',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'time_length',
                                'label' => 'Thời gian làm bài',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'level',
                                'label' => 'Mức độ bài thi',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'total_question',
                                'label' => 'Tổng câu hỏi',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'privacy',
                                'label' => 'Riêng tư',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                        ],
                    ],
                ],
            ]);
            if (!$importer->run()) {
                echo json_encode($importer->error);

                if ($importer->wrongModel) {
                    echo json_encode($importer->wrongModel);
                }
            } else {
                Yii::$app->db->createCommand()->update('import_file', ['status' => 1], ['id' => $k])->execute();
                echo "DƠNE";
            }
        }
    }

    private function _process_question_quiz($arr_file)
    {
        foreach ($arr_file as $k => $file) {
            $importer = new Importer([
                'filePath' => $file,
                'standardModelsConfig' => [
                    [
                        'className' => ImportQuestion::className(),
                        'standardAttributesConfig' => [
                            [
                                'name' => 'quiz_id',
                                'label' => 'ID Đề thi',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'question_content',
                                'label' => 'Nội dung câu hỏi',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'question_solution',
                                'label' => 'Hướng dẫn giải',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'answer_1',
                                'label' => 'Câu trả lời 1',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'answer_2',
                                'label' => 'Câu trả lời 2',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'answer_3',
                                'label' => 'Câu trả lời 3',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'answer_4',
                                'label' => 'Câu trả lời 4',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'answer_5',
                                'label' => 'Câu trả lời 5',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'answer_6',
                                'label' => 'Câu trả lời 6',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                            [
                                'name' => 'ans_true',
                                'label' => 'Đáp án đúng',
                                'valueReplacement' => function ($value) {
                                    return "$value";
                                }
                            ],
                        ],
                    ],
                ],
            ]);
            if (!$importer->run()) {
                echo json_encode($importer->error);

                if ($importer->wrongModel) {
                    echo json_encode($importer->wrongModel);
                }
            } else {
                Yii::$app->db->createCommand()->update('import_file', ['status' => 1], ['id' => $k])->execute();
                echo "DƠNE";
            }
        }
    }

    private function _inert_to_question_quiz()
    {
        $allData = ImportQuestion::findAll(['status' => 0]);
        foreach ($allData as $item) {
            $quiz = Quiz::findOne(['id' => $item->quiz_id]);
            if (empty($quiz)) {
                continue;
            }
            $question = new Question();
            $question->content = $item->question_content;
            $question->quiz_id = $item->quiz_id;
            $question->subject_id = $quiz->subject_id;
            $question->topic_id = $quiz->topic_id;
            $question->solution = $item->question_solution;

            if ($question->save()) {
                $arr = [];
                if ($item->answer_1 != '') {
                    $is_true = 0;
                    if ($item->ans_true == 1) {
                        $is_true = 1;
                    }
                    $arr[] = [
                        $question->id,
                        $item->answer_1,
                        $is_true
                    ];
                }
                if ($item->answer_2 != '') {
                    $is_true = 0;
                    if ($item->ans_true == 2) {
                        $is_true = 1;
                    }
                    $arr[] = [
                        $question->id,
                        $item->answer_2,
                        $is_true
                    ];
                }
                if ($item->answer_3 != '') {
                    $is_true = 0;
                    if ($item->ans_true == 3) {
                        $is_true = 1;
                    }
                    $arr[] = [
                        $question->id,
                        $item->answer_3,
                        $is_true
                    ];
                }
                if ($item->answer_4 != '') {
                    $is_true = 0;
                    if ($item->ans_true == 4) {
                        $is_true = 1;
                    }
                    $arr[] = [
                        $question->id,
                        $item->answer_4,
                        $is_true
                    ];
                }
                if ($item->answer_5 != '') {
                    $is_true = 0;
                    if ($item->ans_true == 5) {
                        $is_true = 1;
                    }
                    $arr[] = [
                        $question->id,
                        $item->answer_5,
                        $is_true
                    ];
                }
                if ($item->answer_6 != '') {
                    $is_true = 0;
                    if ($item->ans_true == 6) {
                        $is_true = 1;
                    }
                    $arr[] = [
                        $question->id,
                        $item->answer_6,
                        $is_true
                    ];
                }

                Yii::$app->db->createCommand()->batchInsert('question_answer', [
                    'question_id',
                    'content',
                    'is_true'
                ], $arr)->execute();
            }
            Yii::$app->db->createCommand()->update('import_question', ['status' => 1], ['id' => $item->id])->execute();
        }
    }

    /**
     * Load các file nội dung trong thư mục upload
     * @param $dir
     * @return array
     */
    private function _load_files_by_import_type($dir)
    {
        $result = [];
        $dirList = glob($dir, GLOB_ONLYDIR);
        foreach ($dirList as $dir_child_1) {
            $files = glob($dir_child_1 . '*.xlsx');
            foreach ($files as $file) {
                $result[] = $file;
            }
        }
        return $result;
    }
}