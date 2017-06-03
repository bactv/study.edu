<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 01/06/2017
 * Time: 9:21 CH
 */
namespace frontend\controllers;

use OpenTok\MediaMode;
use OpenTok\ArchiveMode;
use OpenTok\OpenTok;
use yii\web\Controller;

define('API_KEY', '45841602');
define('API_SECRET', 'ce5185fead647edf699fcd20ec3dff002d1f8ad4');

class TokboxController extends Controller
{
    public function actionGenerateSession()
    {
        $opentok = new OpenTok(API_KEY, API_SECRET);
        // Create a session that attempts to use peer-to-peer streaming:
        $session = $opentok->createSession();

        // A session that uses the OpenTok Media Router, which is required for archiving:
        $session = $opentok->createSession(array( 'mediaMode' => MediaMode::ROUTED ));

        // A session with a location hint:
        $session = $opentok->createSession(array( 'location' => '12.34.56.78' ));

        // An automatically archived session:
        $sessionOptions = array(
            'archiveMode' => ArchiveMode::ALWAYS,
            'mediaMode' => MediaMode::ROUTED
        );
        $session = $opentok->createSession($sessionOptions);


        // Store this sessionId in the database for later use
        $sessionId = $session->getSessionId();

        // Generate a Token from just a sessionId (fetched from a database)
        $token = $opentok->generateToken($sessionId);

        return json_encode(['sessionId' => $sessionId, 'token' => $token, 'apiKey' => API_KEY]);
    }
}