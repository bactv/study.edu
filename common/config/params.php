<?php
return [
    'adminEmail' => 'admin@example.com',
    'supportEmail' => 'support@example.com',
    'user.passwordResetTokenExpire' => 3600,
    'apps'=> ['backend', 'frontend'],
    'ftp' => [
        'ftp_server' => 'static.study.edu.vn',
        'ftp_user_name' => 'bactv',
        'ftp_user_pass' => '123456'
    ],
    'api' => [
        'charging' => [
            'viettel' => 'http://api.viettel.vn/api/controllers/ApiContoller.php/action_charge'
        ]
    ],
    'key_encrypt' => 'bactv',
    'number_free_lesson' => 2,
];
