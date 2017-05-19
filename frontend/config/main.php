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
            'identityClass' => 'frontend\models\User',
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
                'trac-nghiem-theo-chuyen-de' => 'quiz/index',
                'trac-nghiem-theo-chuyen-de/<subject:[0-9a-zA-Z\-]+>' => 'quiz/index',
                'thi-thu-thpt' => 'quiz/index',
                'thi-thu-thpt/<subject:[0-9a-zA-Z\-]+>' => 'quiz/index',
                'kiem-tra-nang-luc/' => 'quiz/index',
                'kiem-tra-nang-luc/<subject:[0-9a-zA-Z\-]+>' => 'quiz/index',
                'chi-tiet/<str:[0-9a-zA-Z\-]+>' => 'quiz/detail',
                'luyen-de/<str:[0-9a-zA-Z\-]+>' => 'quiz/do-contest',
                'review/<str:[0-9a-zA-Z\-]+>' => 'quiz/review-contest',

                'tai-khoan' => 'user/index',
                'khoa-hoc-cua-toi' => 'user/student-course',
                'quan-ly-khoa-hoc' => 'course-manager/index',
                'quan-ly-khoa-hoc/create' => 'course-manager/create',
                'quan-ly-khoa-hoc/update' => 'course-manager/update',
                'quan-ly-khoa-hoc/view' => 'course-manager/view',
                'quan-ly-khoa-hoc/lesson' => 'course-manager/lesson',
                'quan-ly-khoa-hoc/create-lesson' => 'course-manager/create-lesson',
                'quan-ly-khoa-hoc/update-lesson' => 'course-manager/update-lesson',
                'quan-ly-khoa-hoc/view-lesson' => 'course-manager/view-lesson',
                'quan-ly-khoa-hoc/lesson-document' => 'course-manager/lesson-document',
                'quan-ly-khoa-hoc/create-lesson-document' => 'course-manager/create-lesson-document',
                'quan-ly-khoa-hoc/update-lesson-document' => 'course-manager/update-lesson-document',
                'quan-ly-khoa-hoc/delete-lesson-document' => 'course-manager/delete-lesson-document',
                'quan-ly-khoa-hoc/lesson-quiz' => 'course-manager/lesson-quiz',
                'quan-ly-khoa-hoc/create-lesson-quiz' => 'course-manager/create-lesson-quiz',
                'quan-ly-khoa-hoc/update-lesson-quiz' => 'course-manager/update-lesson-quiz',
                'quan-ly-khoa-hoc/delete-lesson-quiz' => 'course-manager/delete-lesson-quiz',

                'lich-su-giao-dich' => 'user/history-transaction',
                'thong-bao' => 'user/student-notification',
                'nap-tien' => 'user/charging',
                'khoa-hoc-truc-tuyen' => 'course/index',
                'khoa-hoc-truc-tuyen/<category:\D+>' => 'course/index',
                'khoa-hoc/<str:[0-9a-zA-Z\-]+>' => 'course/intro',
                'detail/<str:[0-9a-zA-Z\-]+>' => 'course/detail',
                'bai-giang/<str:[0-9a-zA-Z\-]+>' => 'lesson/detail',
                'dang-nhap' => 'site/login',
                'dang-ky' => 'site/signup',
                'dang-xuat' => 'site/logout',

                'giao-vien' => 'teacher/index',
                'giao-vien/<slug:[0-9a-zA-Z\-]+>' => 'teacher/detail',

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
    'language' => 'en',
    'params' => $params,
];
