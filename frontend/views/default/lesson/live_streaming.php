<?php
/**
 * Created by PhpStorm.
 * User: bactv
 * Date: 31/05/2017
 * Time: 12:52 SA
 */
?>
<script src="https://static.opentok.com/v2/js/opentok.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<style>
    #publisher {
        width: 90%;
        height: 450px;
        border: 5px solid #00AA88;
        margin: 50px auto;
    }
    .subscriber2 {
        width: 100px;
        height: 100px;
        border: 1px solid #9e0505;
        margin: 50px 5px;
    }
    .subscriber {
        width: 90%;
        height: 450px;
        border: 2px solid #00AA88;
        margin: 50px auto;
    }
</style>

<div class="w3-container">
    <!-- Stream selector interface -->
    <div id="streams"></div>
</div>

<div class="w3-container">
    <?php if ($user->type == 2) { ?>
        <div class="w3-col l8">
            <div id="publisher"></div>
        </div>
        <div class="w3-col l4">
            <div id="subscriber" class="subscriber2"></div>
        </div>
    <?php } else { ?>
        <div class="w3-col l8">
            <div id="subscriber" class="subscriber"></div>
        </div>
    <?php } ?>
</div>

<script>
    // replace these values with those generated in your TokBox Account
    var apiKey = "45841602";
    var sessionId = "2_MX40NTg0MTYwMn5-MTQ5NjMzMzU1ODQzN35yKy83Z29VL2lIRW12T2piYmJjVzg4Mkp-fg";
    var token = "T1==cGFydG5lcl9pZD00NTg0MTYwMiZzaWc9ZTAyY2QyMjQ1M2M4Yzg0YTQ2MTg4YmIwNTk2ODBjOGNlMGI3MDM5MzpzZXNzaW9uX2lkPTJfTVg0ME5UZzBNVFl3TW41LU1UUTVOak16TXpVMU9EUXpOMzV5S3k4M1oyOVZMMmxJUlcxMlQycGlZbUpqVnpnNE1rcC1mZyZjcmVhdGVfdGltZT0xNDk2MzMzNTczJm5vbmNlPTAuNzgyNTM0MDQ0ODc2OTEyNyZyb2xlPXB1Ymxpc2hlciZleHBpcmVfdGltZT0xNDk4OTI1NTY3";
//
    $(document).ready(function () {
//        $.ajax({
//            async: false,
//            method: 'GET',
//            url: '<?php //echo \yii\helpers\Url::toRoute(['/tokbox/generate-session']) ?>//',
//            success: function (data) {
//                var res = JSON.parse(data);
//                apiKey = res.apiKey;
//                sessionId = res.sessionId;
//                token = res.token;
//            }
//        });
        initializeSession();
        startArchive();
    });

    function initializeSession() {
        var session = OT.initSession(apiKey, sessionId);

        // Subscribe to a newly created stream
        session.on('streamCreated', function (event) {
            session.subscribe(event.stream, 'subscriber', {
                insertMode: 'append',
                width: '100%',
                height: '100%'
            });
        });

        // Connect to the session
        session.connect(token, function (error) {
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

    function startArchive() {
        var url = "<?php echo \yii\helpers\Url::toRoute(['/lesson/start-archive', 'lesson_id' => $lesson['id']]) ?>";
        $.post(url + '/start/' + sessionId);
    }
</script>





