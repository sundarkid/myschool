<?php
/**
 * Created by PhpStorm.
 * User: sundareswaran
 * Date: 29/9/15
 * Time: 8:11 PM
 */
require "databaseAndFunctions.php";

$sql = "SELECT `sub_tokens`.`uid`, `token`, `uname` from `sub_tokens` JOIN `user_details` on  `sub_tokens`.`uid` = `user_details`.`uid`";

$result = $DB->query($sql);

if ($result) {
    while ($row = mysqli_fetch_array($result)) {
        $tokens[] = array('uid' => $row['uid'], 'name' => $row['uname'], 'token' => $row['token']);
    }

    $data = array('result' => "success", 'tokens' => $tokens);

    echo json_encode($data);
} else {
    echo json_encode(array('result' => "failure", 'reason' => "Cannot get data from table"));
}

?>