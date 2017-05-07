<?php
/**
 * Created by PhpStorm.
 * User: Bac Truong Van
 * Date: 16/03/2017
 * Time: 9:24 CH
 */
namespace common\components;

use Yii;

class Utility
{
    public static function formatDataTime($date_time, $symbol_origin, $symbol_format, $isDateTime = false)
    {
        if ($date_time == '') {
            return '';
        }
        $date = trim($date_time);
        $time = '';
        if ($isDateTime) {
              $date = explode(' ', trim($date_time))[0];
              $time = explode(' ', trim($date_time))[1];
        }
        $new_date = explode(trim($symbol_origin), $date)[2] . trim($symbol_format) . explode(trim($symbol_origin), $date)[1] . trim($symbol_format) . explode(trim($symbol_origin), $date)[0];
        return trim($new_date . ' ' . $time);
    }

    public static function uploadFile($folder, $folder_remote, $file, $format = FTP_BINARY)
    {
        $ftp_server = Yii::$app->params['ftp']['ftp_server'];
        $ftp_user_name = Yii::$app->params['ftp']['ftp_user_name'];
        $ftp_user_pass = Yii::$app->params['ftp']['ftp_user_pass'];

        // set up basic connection
        $conn_id = ftp_connect($ftp_server);

        // login with username and password
        $login_result = ftp_login($conn_id, $ftp_user_name, $ftp_user_pass);
        if (!$login_result) {
            return false;
        }

        if (!self::ftp_is_dir($conn_id, $folder)) {
            ftp_mkdir($conn_id, $folder);
        }
        // upload a file
        if (ftp_put($conn_id, $folder_remote, $file, $format)) {
            // close the connection
            ftp_close($conn_id);
            return true;
        } else {
            // close the connection
            ftp_close($conn_id);
            return false;
        }
    }

    private static function ftp_is_dir($ftp, $dir)
    {
        $pushd = ftp_pwd($ftp);

        if ($pushd !== false && @ftp_chdir($ftp, $dir))
        {
            ftp_chdir($ftp, $pushd);
            return true;
        }

        return false;
    }


    /**
     * @param string $url
     * @param array $data
     * @return \StdClass
     */
    public static  function curlSendPost($url, $data = [])
    {
        $resource = curl_init();
        curl_setopt($resource, CURLOPT_URL, $url);
        curl_setopt($resource, CURLOPT_POST, true);
        curl_setopt($resource, CURLOPT_POSTFIELDS, http_build_query($data));
        curl_setopt($resource, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($resource, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($resource, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($resource, CURLOPT_TIMEOUT_MS, 10000);

        $result = curl_exec($resource);
        curl_close($resource);
        return $result;
    }
    /**
     * @param string $url
     * @param array $data
     * @return \StdClass
     */
    public static function curlSendGet($url, $data = [])
    {
        $resource = curl_init();
        curl_setopt($resource, CURLOPT_URL, $url.http_build_query($data));
        curl_setopt($resource, CURLOPT_HTTPGET, true);
        curl_setopt($resource, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($resource, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($resource, CURLOPT_SSL_VERIFYPEER, false);

        $result = curl_exec($resource);
        curl_close($resource);
        return $result;
    }

    /**
     * Chuyển đổi tiền sang xu
     * @param $real_money
     * @param int $bonus: 30%
     * @return float|int
     */
    public static function exchangeMoney($real_money, $bonus = 0)
    {
        $virtual = $real_money * 1000;
        if ($bonus != 0) {
            return $bonus * $virtual / 100;
        }
        return $virtual;
    }

    public static function UR_exists($url){
        $headers=get_headers($url);
        return stripos($headers[0],"200 OK")?true:false;
    }

    public static function get_content_static($path, $name_file)
    {
        $result = null;
        $all_files = self::get_all_remote_file_in_folder($path);
        foreach ($all_files as $pt) {
            $info = pathinfo($pt);
            if ($info['filename'] == $name_file) {
                $result = $pt;
                break;
            }
        }
        return $result;
    }

    private static function checkRemoteFile($url)
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL,$url);
        // don't download content
        curl_setopt($ch, CURLOPT_NOBODY, 1);
        curl_setopt($ch, CURLOPT_FAILONERROR, 1);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        if(curl_exec($ch) !== FALSE) {
            return true;
        } else {
            return false;
        }
    }

    public static function get_all_remote_file_in_folder($folder)
    {
        $ftp_server = Yii::$app->params['ftp']['ftp_server'];
        $ftp_user_name = Yii::$app->params['ftp']['ftp_user_name'];
        $ftp_user_pass = Yii::$app->params['ftp']['ftp_user_pass'];

        // set up basic connection
        $conn_id = ftp_connect($ftp_server);

        // login with username and password
        $login_result = ftp_login($conn_id, $ftp_user_name, $ftp_user_pass);
        if (!$login_result) {
            return false;
        }

        // get contents of the current directory
        $contents = ftp_nlist($conn_id, $folder);
        return $contents;
    }

    public static function delete_file_on_remote($file_path)
    {
        $ftp_server = Yii::$app->params['ftp']['ftp_server'];
        $ftp_user_name = Yii::$app->params['ftp']['ftp_user_name'];
        $ftp_user_pass = Yii::$app->params['ftp']['ftp_user_pass'];

        // set up basic connection
        $conn_id = ftp_connect($ftp_server);

        // login with username and password
        $login_result = ftp_login($conn_id, $ftp_user_name, $ftp_user_pass);
        if (!$login_result) {
            return false;
        }

        if (ftp_delete($conn_id, $file_path)) {
            return true;
        } else {
            return false;
        }
    }

    public static function truncateStringWords($str, $maxlen)
    {
        if (strlen($str) <= $maxlen) {
            return $str;
        }

        $newstr = substr($str, 0, $maxlen);
        if (substr($newstr, -1, 1) != ' ') {
            $newstr = substr($newstr, 0, strrpos($newstr, " "));
        }
        return $newstr . ' ...';
    }

    public static function encrypt_decrypt($action, $string)
    {
        if ($action == 'encrypt') {
            return base64_encode($string);
        } else if ($action == 'decrypt'){
            return base64_decode($string);
        }
    }

    public static function clean_string($string)
    {
        $string = str_replace(' ', '-', $string); // Replaces all spaces with hyphens.
        $string = preg_replace('/[^A-Za-z0-9\-]/', '', $string); // Removes special chars.

        return preg_replace('/-+/', '-', $string); // Replaces multiple hyphens with single one.
    }

    /**
     * @param $string
     * @return mixed
     */
    public static function stripText($string)
    {
        $from = array("à", "ả", "ã", "á", "ạ", "ă", "ằ", "ẳ", "ẵ", "ắ", "ặ", "â", "ầ", "ẩ", "ẫ", "ấ", "ậ", "đ", "è", "ẻ", "ẽ", "é", "ẹ", "ê", "ề", "ể", "ễ", "ế", "ệ", "ì", "ỉ", "ĩ", "í", "ị", "ò", "ỏ", "õ", "ó", "ọ", "ô", "ồ", "ổ", "ỗ", "ố", "ộ", "ơ", "ờ", "ở", "ỡ", "ớ", "ợ", "ù", "ủ", "ũ", "ú", "ụ", "ư", "ừ", "ử", "ữ", "ứ", "ự", "ỳ", "ỷ", "ỹ", "ý", "ỵ", "À", "Ả", "Ã", "Á", "Ạ", "Ă", "Ằ", "Ẳ", "Ẵ", "Ắ", "Ặ", "Â", "Ầ", "Ẩ", "Ẫ", "Ấ", "Ậ", "Đ", "È", "Ẻ", "Ẽ", "É", "Ẹ", "Ê", "Ề", "Ể", "Ễ", "Ế", "Ệ", "Ì", "Ỉ", "Ĩ", "Í", "Ị", "Ò", "Ỏ", "Õ", "Ó", "Ọ", "Ô", "Ồ", "Ổ", "Ỗ", "Ố", "Ộ", "Ơ", "Ờ", "Ở", "Ỡ", "Ớ", "Ợ", "Ù", "Ủ", "Ũ", "Ú", "Ụ", "Ư", "Ừ", "Ử", "Ữ", "Ứ", "Ự", "Ỳ", "Ỷ", "Ỹ", "Ý", "Ỵ");
        $to = array("a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "d", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "i", "i", "i", "i", "i", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "u", "u", "u", "u", "u", "u", "u", "u", "u", "u", "u", "y", "y", "y", "y", "y", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "D", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "I", "I", "I", "I", "I", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "U", "U", "U", "U", "U", "U", "U", "U", "U", "U", "U", "Y", "Y", "Y", "Y", "Y");
        return str_replace($from, $to, $string);
    }

    /**
     * @param $string
     * @return mixed|string
     */
    public static function rewrite($string)
    {
        $string = Utility::stripText($string);
        $string = strtolower(trim($string));
        $string = preg_replace('/[^a-z0-9-]/', '-', $string);
        $string = preg_replace('/-+/', "-", $string);
        return $string;
    }
}