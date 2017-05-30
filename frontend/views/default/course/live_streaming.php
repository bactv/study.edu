<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 31/05/2017
 * Time: 12:52 SA
 */
?>
<html>
<head>
    <title> OpenTok Getting Started </title>
    <link href="css/app.css" rel="stylesheet" type="text/css">
     <script src="https://static.opentok.com/v2/js/opentok.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>

<style>
    body, html {
        background-color: gray;
        height: 100%;
    }

    #videos {
        position: relative;
        width: 100%;
        height: 100%;
        margin-left: auto;
        margin-right: auto;
    }

    #subscriber {
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        z-index: 10;
    }

    #publisher {
        position: absolute;
        width: 360px;
        height: 240px;
        bottom: 10px;
        left: 10px;
        z-index: 100;
        border: 3px solid white;
        border-radius: 3px;
    }
</style>

<div id="videos">
    <div id="subscriber"></div>
    <div id="publisher"></div>
</div>

<script>
    // replace these values with those generated in your TokBox Account
    var apiKey = "45841602";
    var sessionId = "1_MX40NTg0MTYwMn5-MTQ5NDUwODc1NTA4MH45QnNEWGpFSzBTbTlJOHFkOFFjTHI3ZHB-fg";
    var token = "T1==cGFydG5lcl9pZD00NTg0MTYwMiZzaWc9YjNhN2YyMzg5MzI0MTZhYjJjZjQyYWFjMzkyZjAxNDgxM2EwNzZjZjpzZXNzaW9uX2lkPTFfTVg0ME5UZzBNVFl3TW41LU1UUTVORFV3T0RjMU5UQTRNSDQ1UW5ORVdHcEZTekJUYlRsSk9IRmtPRkZqVEhJM1pIQi1mZyZjcmVhdGVfdGltZT0xNDk2MTY4ODkwJm5vbmNlPTAuMzcyNDM3NDM0MjUwNTMxNDQmcm9sZT1wdWJsaXNoZXImZXhwaXJlX3RpbWU9MTQ5NjE3MjUwMg==";

    $(document).ready(function() {
        // (optional) add server code here
        var SERVER_BASE_URL = 'http://192.168.1.94'
        $.get(SERVER_BASE_URL + '/session', function(res) {
            apiKey = res.apiKey;
            sessionId = res.sessionId;
            token = res.token;
        });

        initializeSession();
    });

    function initializeSession() {
        var session = OT.initSession(apiKey, sessionId);

        // Subscribe to a newly created stream
        session.on('streamCreated', function(event) {
            session.subscribe(event.stream, 'subscriber', {
                insertMode: 'append',
                width: '100%',
                height: '100%'
            });
        });

        // Connect to the session
        session.connect(token, function(error) {
            // If the connection is successful, initialize a publisher and publish to the session
            if (!error) {
                var publisher = OT.initPublisher('publisher', {
                    insertMode: 'append',
                    width: '100%',
                    height: '100%'
                });

                session.publish(publisher);
            } else {
                console.log('There was an error connecting to the session: ', error.code, error.message);
            }
        });
    }
</script>


 <div id="otEmbedContainer" style="width:800px; height:640px"></div>
 <script src="https://tokbox.com/embed/embed/ot-embed.js?embedId=6eeb5029-64fc-4e4d-b01e-e3cfb9a014a7"></script>

</body>
</html>
