<?php
$selectQuery = "SELECT * FROM `contributors`";
$selectResult = mysqli_query($DB, $selectQuery);
if ($selectResult) {
    while ($row = mysqli_fetch_array($selectResult)) {
        $name = $row['name'];
        $fb_url = $row['fb_url'];
        $tweet_url = $row['tweet_url'];
        $file_name = $row['image'];
        $message[] = array("name" => $name, "url_fb" => $fb_url, "url_tweet" => $tweet_url, "image" => $file_name);
        $messages = array('people' => $message);
        // TODO uncomment send_push_notification() to send message to devices
        //var_dump($messages);
        //echo "<br>".json_encode($messages);
    }
}
$contentArr = str_split(json_encode($messages), 65536);
foreach ($contentArr as $part) {
    echo $part;
}
?>