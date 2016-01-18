<?php

require_once "Class/databaseAndFunctions.php";


if (!$isLoggedIn) {
    if (isset($_GET["id"])) {
        $posts = array();
        $sql = "SELECT * FROM `posts` ORDER BY `posts`.`pid` DESC LIMIT 0, 30 ";
        $postResult = mysqli_query($DB, $sql);
        if ($postResult) {
            while ($row = mysqli_fetch_array($postResult)) {
                $posts[] = array("message" => $row['description'], "name" => $row['name'], "title" => $row['title'], "image" => $row['image'], "date" => $row['time'], "url" => $row['url']);
            }
            //var_dump($messages);
            //echo "<br>".json_encode($posts);
            echo json_encode($posts);
        } else {
            json_encode(array('result' => "failure", 'reason' => "Some error with the fetching the data from table"));
        }
    } else {
        echo json_encode(array('result' => "failure", 'reason' => "User not logged in."));
    }
}else{
    echo json_encode(array('result' => "failure", 'reason' => "No ID specified"));
}

$DB->close();

?>