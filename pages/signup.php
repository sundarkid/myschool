<?php
/**
 * Created by PhpStorm.
 * User: sundareswaran
 * Date: 25/9/15
 * Time: 4:53 PM
 */

require "databaseAndFunctions.php";

$data = array();
$validater = true;
foreach ($_POST as $key => $value) {
    $validater = isset($_POST[$key]) && $value !== "" && $validater;
    $data[$key] = stripcslashes($value);
    $data[$key] = $DB->real_escape_string($data[$key]);
}

foreach ($data as $key => $value) {
    switch ($key) {
        case "name":
            $name = $value;
            break;
        case "password":
            $password = md5($value . $salt);
            break;
        case "email":
            $email = $value;
            break;
        case "address":
            $address = $value;
            break;
        case "area":
            $area = $value;
            break;
        case "city":
            $city = $value;
            break;
        case "pincode":
            $pincode = $value;
            break;
        case "about":
            $about = $value;
    }
}

if ($validater) {

    $sql = "INSERT INTO `user_details` (`uname`, `mail_id`, `address_no`, `area`, `city`, `pincode`, `password`, `date`)
                        VALUES ('$name','$email','$address','$area', '$city', '$pincode', '$password', '$time')";
    $result = $DB->query($sql);
    $token = $name . $city . $area . " ";

    $delimiters = array(" ", "\n", ",", ".", "\"", ":", "(", ")", "[", "]", "{", "}", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "!", "@", "#", "$", "%", "^", "&", "*", "<", ">", "?", "'", "\\", "/", ";", "+", "=", "_", "-", "\r", "\t");
    $token = explode($delimiters[0], strtr($token, array_combine(array_slice($delimiters, 1), array_fill(0, count($delimiters) - 1, array_shift($delimiters)))));

    $token = myImplode("", $token);

    $iid = $DB->insert_id;
    echo "<br>" . $iid;
    $sql1 = "INSERT INTO `sub_tokens` (`token`, `uid`, `date`) VALUES ('$token', '$iid', '$time')";
    echo "<br>" . $sql1;
    $result1 = $DB->query($sql1);
    if ($result && $result1) {
        echo json_encode(array('result' => "success"));
    } else {
        echo json_encode(array('result' => "failure", 'reason' => "Cannot register person"));
    }

} else {
    echo json_encode(array('result' => "failure", 'reason' => "Some data missing"));
}

$DB->close();

?>