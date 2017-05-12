<?php

namespace frontend\models;

use common\components\Utility;
use Yii;
use yii\web\IdentityInterface;


class User extends \common\models\UserBase implements IdentityInterface
{
    const STATUS_ACTIVE = 1;
    const STATUS_INACTIVE = 0;
    const DELETED = 1;
    const NOT_DELETED = 0;
    const STUDENT = 1;
    const TEACHER = 2;

    public $rememberMe;
    public $full_name;
    public $avatar;
    protected $_user = false;

    /**
     * Finds an identity by the given ID.
     * @param string|int $id the ID to be looked for
     * @return IdentityInterface the identity object that matches the given ID.
     * Null should be returned if such an identity cannot be found
     * or the identity is not in an active state (disabled, deleted, etc.)
     */
    public static function findIdentity($id)
    {
        return self::findOne(['id' => $id, 'deleted' => self::NOT_DELETED, 'status' => self::STATUS_ACTIVE]);
    }

    /**
     * Find by username
     * @param $username
     * @param $type
     * @return User
     */
    public static function findByUsername($username, $type)
    {
        return self::findOne(['username' => $username, 'type' => $type, 'deleted' => self::NOT_DELETED, 'status' => self::STATUS_ACTIVE]);
    }

    /**
     * Finds an identity by the given token.
     * @param mixed $token the token to be looked for
     * @param mixed $type the type of the token. The value of this parameter depends on the implementation.
     * For example, [[\yii\filters\auth\HttpBearerAuth]] will set this parameter to be `yii\filters\auth\HttpBearerAuth`.
     * @return IdentityInterface the identity object that matches the given token.
     * Null should be returned if such an identity cannot be found
     * or the identity is not in an active state (disabled, deleted, etc.)
     */
    public static function findIdentityByAccessToken($token, $type = null)
    {
        // TODO: Implement findIdentityByAccessToken() method.
    }

    /**
     * Returns an ID that can uniquely identify a user identity.
     * @return string|int an ID that uniquely identifies a user identity.
     */
    public function getId()
    {
        // TODO: Implement getId() method.
        return $this->id;
    }

    public function getUsername()
    {
        return $this->username;
    }

    public function getUserType()
    {
        return $this->type;
    }

    /**
     * Returns a key that can be used to check the validity of a given identity ID.
     *
     * The key should be unique for each individual user, and should be persistent
     * so that it can be used to check the validity of the user identity.
     *
     * The space of such keys should be big enough to defeat potential identity attacks.
     *
     * This is required if [[User::enableAutoLogin]] is enabled.
     * @return string a key that is used to check the validity of a given identity ID.
     * @see validateAuthKey()
     */
    public function getAuthKey()
    {
        // TODO: Implement getAuthKey() method.
    }

    /**
     * Validates the given auth key.
     *
     * This is required if [[User::enableAutoLogin]] is enabled.
     * @param string $authKey the given auth key
     * @return bool whether the given auth key is valid.
     * @see getAuthKey()
     */
    public function validateAuthKey($authKey)
    {
        // TODO: Implement validateAuthKey() method.
    }

    /**
     * Set password
     * Encrypt md5
     * @param $password
     */
    public function setPassword($password)
    {
        $this->password = md5($password);
    }

    /**
     * Validate password
     * @param $password
     * @return bool
     */
    public function validatePassword($password)
    {
        return $this->password === md5($password);
    }

    /**
     * Logs in a user using the provided username and password.
     * @return boolean whether the user is logged in successfully
     */
    public function login()
    {
        $user = $this->getUser();
        if ($this->validate() && !empty($user)) {
            return Yii::$app->user->login($user, $this->rememberMe ? 30*24*60*60 : 0);
        } else {
            return false;
        }
    }
    /**
     * Finds user by [[username]]
     * @return User | null
     */
    public function getUser()
    {
        if ($this->_user === false) {
            $this->_user = User::findOne([
                'username' => $this->username,
                'password' => md5($this->password),
                'type' => $this->type,
                'deleted' => self::NOT_DELETED,
                'status' => self::STATUS_ACTIVE
            ]);
        }
        return $this->_user;
    }

    public function signup()
    {
        $model = new User();
        $model->username = $this->username;
        $model->password = md5($this->password);
        $model->type = $this->type;

        if ($this->validateUsername() && $model->save()) {
            if ($this->type == self::STUDENT) {
                if (Student::save_data($model->id, $this->full_name)) {
                    return true;
                } else {
                    $model->delete();
                    return false;
                }
            } else {
                if (Teacher::save_data($model->id, $this->full_name)) {
                    return true;
                } else {
                    $model->delete();
                    return false;
                }
            }
        }
        return false;
    }

    public function validateUsername()
    {
        $check = self::findOne(['username' => $this->username, 'type' => $this->type]);
        if (!empty($check)) {
            return false;
        }
        return true;
    }

    public function uploadAvatar($id)
    {
        if ($this->avatar == null) {
            return false;
        }

        $path = Yii::$app->params['storage']['path'] . Yii::$app->params['storage']['img.user']['path'];
        if (!is_dir($path)) {
            mkdir($path, 0777, true);
        }
        if ($this->validate()) {
            return $this->avatar->saveAs($path . $id . '.png');
        }
        return false;
    }
}