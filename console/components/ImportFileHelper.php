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