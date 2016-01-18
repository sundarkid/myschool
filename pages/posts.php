<?php
require "Class/databaseAndFunctions.php";
require "Class/postObject.php";

session_start();
//var_dump($_SESSION['userId']);
if ((!isset($_SESSION['userId']) && !isset($_SESSION['sessionID']))) {
    //echo '<script type="text/javascript">location.href = "../index.html";</script>';
    header("Location: ../index.html");
} else {

    ?>

    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title><?php echo $_SESSION["userName"]; ?> | MySchool</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="../assets/bootstrap/css/bootstrap.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>

        <script>
            $(document).ready(function () {
                var container_width = SINGLE_IMAGE_WIDTH * $(".container-inner a").length;
                $(".container-inner").css("width", container_width);
            });
        </script>
        <![endif]-->
        <link href="../assets/css/facebook.css" rel="stylesheet">
    </head>

    <body>

    <div class="wrapper">
        <div class="box">
            <div class="row row-offcanvas row-offcanvas-left">

                <!-- sidebar -->
                <!-- /sidebar -->


                <!-- main right col -->
                <div class="column col-sm-12 col-xs-12 " id="main">

                    <!-- top nav -->
                    <?php include "requireds/topNav.html"; ?>

                    <!-- /top nav -->

                    <div class="padding">
                        <div class="full col-sm-12">

                            <!-- content -->
                        <!--    <div class="row">  -->

                                <!-- main col left -->
                                <div class="col-sm-12 center">
                                    <?php
                                    $posts = new Posts();
                                    $id = $_SESSION['userId'];
                                    echo $posts->getPostsDivs($DB, $id);
                                    ?>
                                </div>
                                <!-- main col right -->
                                <!-- /col-9 -->
                            <!-- </div> --> <!-- /padding -->
                        </div>
                        <!-- /main -->

                    </div>
                </div>
            </div>


            <!--post modal-->
            <div id="postModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                            Update Status
                        </div>
                        <div class="modal-body">
                            <form class="form center-block" id="post_form">
                                <div class="form-group">
                            <textarea class="form-control input-lg" autofocus=""
                                      placeholder="What do you want to share?"></textarea>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <div>
                                <button id="post_button" class="btn btn-primary btn-sm" data-dismiss="modal"
                                        aria-hidden="true">
                                    Post
                                </button>
                                <ul class="pull-left list-inline">
                                    <li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li>
                                    <li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li>
                                    <li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <script type="text/javascript" src="../assets/js/jquery.js"></script>
            <script type="text/javascript" src="../assets/js/bootstrap.js"></script>
            <script type="text/javascript">
                $(document).ready(function () {
                    $('[data-toggle=offcanvas]').click(function () {
                        $(this).toggleClass('visible-xs text-center');
                        $(this).find('i').toggleClass('glyphicon-chevron-right glyphicon-chevron-left');
                        $('.row-offcanvas').toggleClass('active');
                        $('#lg-menu').toggleClass('hidden-xs').toggleClass('visible-xs');
                        $('#xs-menu').toggleClass('visible-xs').toggleClass('hidden-xs');
                        $('#btnShow').toggle();
                    });
                });
            </script>
    </body>
    </html>
    <?php
}
?>