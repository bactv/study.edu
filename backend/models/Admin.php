<?php

namespace backend\models;

use common\behaviors\TimestampBehavior;
use common\components\Utility;
use Yii;
use yii\behaviors\BlameableBehavior;
use yii\db\ActiveRecord;
use yii\web\IdentityInterface;


class Admin extends \common\models\AdminBase implements IdentityInterface
{
    public $avatar;

    /**
     * Behaviors
     * @return array
     */
    public function behaviors()
    {
        return array(
            array(
                'class' => TimestampBehavior::class,
                'attributes' => array(
                    self::EVENT_BEFORE_INSERT => array('created_time', 'updated_time'),
                    self::EVENT_BEFORE_UPDATE => array('updated_time')
                )
            ),
            array(
                'class' => BlameableBehavior::className(),
                'createdByAttribute' => 'created_by',
                'updatedByAttribute' => 'updated_by',
            ),
        );
    }

    public function rules()
    {
        return [
            [['username', 'password'], 'required', 'on' => 'create'],
            [['birthday', 'last_active_time', 'created_time', 'updated_time'], 'safe'],
            [['thumb', 'status', 'deleted', 'created_by', 'updated_by'], 'integer'],
            [['username'], 'string', 'max' => 50],
            [['password', 'profession', 'access_token', 'auth_key'], 'string', 'max' => 255],
            [['full_name', 'email'], 'string', 'max' => 100],
            [['avatar'], 'file', 'extensions' => 'png, jpeg, gif, jpg'],
            ['username', 'validateUsername', 'on' => 'create']
        ];
    }

    /**
     * Finds an identity by the given ID.
     * @param string|integer $id the ID to be looked for
     * @return ActiveRecord | null
     * Null should be returned if such an identity cannot be found
     * or the identity is not in an active state (disabled, deleted, etc.)
     */
    public static function findIdentity($id)
    {
        // TODO: Implement findIdentity() method.
        $admin = static::find()->where(['id' => $id, 'status' => 1])->one();
        return (!empty($admin) ? $admin : null);
    }
    /**
     * Finds an identity by the given username.
     * @param string $username
     * @return ActiveRecord | null
     * Null should be returned if such an identity cannot be found
     * or the identity is not in an active state (disabled, deleted, etc.)
     */
    public static function findByUsername($username)
    {
        // TODO: Implement findIdentity() method.
        $admin = static::find()->where(['username' => $username, 'status' => 1])->one();
        return (!empty($admin) ? $admin : null);
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
        return self::findOne(['access_token' => $token]);
    }
    /**
     * Returns an ID that can uniquely identify a user identity.
     * @return string|integer an ID that uniquely identifies a user identity.
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
        return $this->auth_key;
    }
    /**
     * Validates the given auth key.
     *
     * This is required if [[User::enableAutoLogin]] is enabled.
     * @param string $authKey the given auth key
     * @return boolean whether the given auth key is valid.
     * @see getAuthKey()
     */
    public function validateAuthKey($authKey)
    {
        // TODO: Implement validateAuthKey() method.
        return $this->auth_key == $authKey;
    }

    /**
     * Encrypt password
     * @param $password
     * @throws \yii\base\Exception
     */
    public function setPassword($password)
    {
        $this->password = Yii::$app->security->generatePasswordHash($password);
    }
    /**
     * Validate password
     * @param $password
     * @return bool
     */
    public function validatePassword($password)
    {
        return Yii::$app->security->validatePassword($password, $this->password);
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

        $path = Yii::$app->params['storage']['path'] . Yii::$app->params['storage']['img.admin']['path'];
        if (!is_dir($path)) {
            mkdir($path, 0777, true);
        }
        if ($this->validate()) {
            return $this->avatar->saveAs($path . $id . '.png');
        }
        return false;
    }

    public static function getAttributeValue($conditions, $attr_return)
    {
        $object = self::find()->where($conditions)->one();
        if (!empty($object) && isset($object->{$attr_return})) {
            return $object->{$attr_return};
        }
        return '';
    }

    public function validateUsername()
    {
        $check = Admin::findAll(['username' => $this->username]);
        if (!empty($check)) {
            $this->addError('username', 'Tên đăng nhập đã tồn tại');
        }
    }
}