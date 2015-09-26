<?php


if (!isset($_POST['institution']) || $_POST['institution'] === "" || $_POST['password'] === "" || !isset($_POST['password']))
    echo json_encode(array('result' => "failure", 'reason' => "Some inputs are missing"));
else {

    require "databaseAndFunctions.php";

    $email = stripcslashes($_POST['institution']);
    $password = stripcslashes($_POST['password']);

    $email = $DB->real_escape_string($email);
    $password = $DB->real_escape_string($password);

    $password = md5($password . $salt);

    $sql = "Select `uname`, `user_id`, `email` from `user_details` where `email` = '$email' AND `password` = '$password'";

    $result = $DB->query($sql);

    if ($result) {
        $row = mysqli_fetch_array($result);
        if ($row['email'] === $email) {
            session_start();
            $_SESSION['userId'] = $row['user_id'];
            $_SESSION['userName'] = $row['uname'];
            $_SESSION['sessionID'] = md5($row['uname']);
            echo json_encode(array('result' => "success", 'name' => $row['uname']));
        }
    } else {
        echo json_encode(array('result' => "failure", 'reason' => "No user match found"));
    }

}
?>