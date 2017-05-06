<?php
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);

return [
    'id' => 'app-frontend',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'controllerNamespace' => 'frontend\controllers',
    'components' => [
        'request' => [
            'csrfParam' => '_csrf-frontend',
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-frontend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the frontend
            'name' => 'advanced-frontend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'urlManager' => [
            'class' => 'yii\web\UrlManager',
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'suffix' => '.io',
            'rules' => [
                'on-thi-<id:\D+>' => 'subject/detail',
                'luyen-de' => 'quiz/index',
                'khoa-hoc-truc-tuyen' => 'course/index',
                'khoa-hoc-truc-tuyen/<category:\D+>' => 'course/index',
                'khoa-hoc/<str:[0-9a-zA-Z\-]+>' => 'course/detail',
                'bai-giang/<str:[0-9a-zA-Z\-]+>' => 'lesson/detail',
                '<str:[0-9a-zA-Z\-]+>' => 'quiz/detail',
                'luyen-de/<str:[0-9a-zA-Z\-]+>' => 'quiz/do-contest',
                'review/<str:[0-9a-zA-Z\-]+>' => 'quiz/review-contest',
                'login' => 'site/login',
                'signup' => 'site/signup',
                '<controller:\w+>/<id:\d+>' => '<controller>/view',
                '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
                '<controller:\w+>/<action:\w+>' => '<controller>/<action>',
            ]
        ],
        'view' => [
            'theme' => [
                'basePath' => '@app/views/default',
                'baseUrl' => '@web/themes/default',
                'pathMap' => [
                    '@app/views' => '@app/views/default',
                ],
            ],
        ],
        'authClientCollection' => [
            'class' => 'yii\authclient\Collection',
            'authClientCollection' => [
                'class' => 'yii\authclient\Collection',
                'clients' => [
                    'facebook' => [
                        'class' => 'yii\authclient\clients\Facebook',
                        'clientId' => '798868116932355',
                        'clientSecret' => 'af027df26fdbe55d47cc5a708a6da72a',
                    ],
                ],
            ]
        ],
    ],
    'params' => $params,
];
