<?php
/**
 * User: Sundareswaran
 * Date: 30-07-2015
 * Time: 13:52
 */

$DB = mysqli_connect("localhost", "trydevsi_partner", "part@123", "trydevsi_myschool");
if (mysqli_connect_errno()) {
    echo "Failed to DB to MySQL: " . mysqli_connect_error();
}
// Variables and values
$domain = "http://myschool.askyourfriend.in/";
$salt = "fidhbfn9J((jPCinISNOkinknvapin0f9fnoXVnVP0EINFqnalcap0mc-MC0MSPD0qej";

session_start();

$isLoggedIn = isset($_SESSION['sessionID']);

// Normal Implode without php 5.5 discrepancy
function myImplode($glue, $array)
{
    if (count($array) > 1) {
        $s = "";
        for ($i = 0; $i < (count($array) - 2); $i++)
            $s .= $array[$i] . $glue;
        $s .= $array[$i];

        return $s;
    } else {
        return $array[0];
    }
}

// Date format
date_default_timezone_set("Asia/Kolkata");
$time = date("Y-m-d , H:i:s");


// GCM sender
//Sending Push Notification
function send_push_notification($registatoin_ids, $message, $topic)
{

    // Set POST variables
    $url = 'https://gcm-http.googleapis.com/gcm/send';

    $DATA = array("message" => $message);

    $fields = array(
        'to' => "/topics/" . $topic,
        'data' => $DATA,
    );
    $headers = array(
        'Authorization: key=' . 'AIzaSyBF14zfJk2oHnNOr05KvHvzH536Kf7wM5I',
        'Content-Type: application/json'
    );
    //print_r($headers);
    //echo stripcslashes(json_encode($fields));
    //var_dump($fields);
    // Open connection
    $ch = curl_init();

    // Set the url, number of POST vars, POST data
    curl_setopt($ch, CURLOPT_URL, $url);

    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    // Disabling SSL Certificate support temporarly
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));

    // Execute post
    $result = curl_exec($ch);
    if ($result === FALSE) {
        die('Curl failed: ' . curl_error($ch));
    }

    // Close connection
    curl_close($ch);

    return $result;
}

?>

<?php
/**
 * Created by PhpStorm.
 * User: sundareswaran
 * Date: 10/30/15
 * Time: 11:56 PM
 */




/*
for($i = 0; $i < 10; $i++){
    echo <<< tag
<div class="panel panel-default">
                                    <div class="panel-thumbnail" align="center"><img src="assets/img/bg_5.jpg" class="img-responsive">
                                    </div>
                                    <div class="panel-body">
                                        <p class="lead">Urbanization</p>
                                        <p>orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                        <p>45 Followers, 13 Posts</p>

                                        <p>
                                            <img src="assets/img/uFp_tsTJboUY7kue5XAsGAs28.png" height="28px"
                                                 width="28px">
                                        </p>
                                    </div>
                                </div>
tag;

}
*/
?>
