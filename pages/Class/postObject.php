<?php

/**
 * Created by PhpStorm.
 * User: root
 * Date: 1/9/16
 * Time: 1:28 PM
 */
class Posts
{

    function getPostsDivs($DB, $uid, $start = 0, $end = 20)
    {
        $total = $start - $end;
        $posts = array();
        $sql = "SELECT * FROM `posts` WHERE `uid` = '$uid' ORDER BY `posts`.`pid` DESC ";
        $postResult = mysqli_query($DB, $sql);
        if ($postResult) {
            while ($row = mysqli_fetch_array($postResult)) {
                $posts[] = array("message" => $row['description'], "name" => $row['name'], "title" => $row['title'], "image" => $row['image'], "date" => $row['time'], "url" => $row['url']);
            }
            //var_dump($messages);
            //echo "<br>".json_encode($posts);
            //echo json_encode($posts);
        } else {
            //json_encode(array('result' => "failure", 'reason' => "Some error with the fetching the data from table"));
        }
        $str = "";
        foreach ($posts as $key => $post) {
            if ($post["image"] !== "")
                $str = $str . "<div class=\"panel panel-default\" style=\"width: 100%\">
                                    <div class=\"panel-heading\"><h3>" . $post["title"] . "</h3></div>
                                    <div class=\"panel-body\">

                                        <div class=\"panel-thumbnail\"><img src=\"" . $post["image"] . "\"
                                                                          class=\"img-responsive\">
                                        </div>
                                        <hr>
                                        " . $post["message"] . "
                                    </div>

                                </div>";
            else
                $str = $str . "<div class=\"panel panel-default\" style=\"width: 100%\">
                                    <div class=\"panel-heading\"><h3>" . $post["title"] . "</h3></div>
                                    <div class=\"panel-body\">
                                        " . $post["message"] . "
                                    </div>

                                </div>";
        }
        $DB->close();
        return $str;
    }

    function uploadPost($DB, $post)
    {

    }

    function getPostJson($DB, $Uid)
    {

    }

}


?>