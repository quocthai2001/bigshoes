<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>ADMIN</title>
    <!-- Bootstrap Styles-->
    <link href="../../../css/admin/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="../../../css/admin/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="../../../css/admin/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="shortcut icon" type="image/png" href="../../../css/admin/img/TBT.png" />
</head>

<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../../../../bigshoes/trang-chinh/" style="background:#00CC99;">
                    <strong style="margin-left: 40px;">BIG SHOES</strong></a>
            </div>

            <!-- Nav bar-->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="../../../../bigshoes/tai-khoan/dang-xuat.php"><i class="fa fa-sign-out fa-fw"></i> ????ng xu???t</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>

        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <a href="../thong-ke/thong-ke-list.php"><i class="fa fa-dashboard"></i>TRANG CH???</a>
                    </li>
                    <li>
                        <a href="../loai-hang/loai-hang-list.php"><i class="fa fa-list-alt" aria-hidden="true"></i>LO???I H??NG</a>
                    </li>
                    <li>
                        <a href="../hang-hoa/hang-hoa-list.php"><i class="fa fa-qrcode"></i>H??NG H??A</a>
                    </li>

                    <li>
                        <a href="../khach-hang/khach-hang-list.php"><i class="fa fa-user"></i>KH??CH H??NG</a>
                    </li>
                    <li>
                        <a href="../hoa-don/hoa-don-list.php"><i class="fa fa-edit"></i>????N H??NG</a>
                    </li>
                    <li>
                        <a href="../binh-luan/binh-luan-list.php"><i class="fa fa-comment-o" aria-hidden="true"></i>B??NH LU???N</a>
                    </li>
                </ul>
            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div class="header">
                <div class="page-header">
                    <h1>QU???N L?? H??NG H??A</h1>
                    <p>C???p nh???t l???i th??ng tin h??ng h??a :</p>

                    <!-- /. CODE X??? L?? PHP  -->
                    <?php
                    session_start();
                    require_once('../../dao/hoa-don.php');
                    extract($_REQUEST);
                    $item = hoa_don_select_by_id($ma_hd);
                    extract($item);

                    extract($_REQUEST);
                    if (array_key_exists("btn_update", $_REQUEST)) {
                        $conn = pdo_get_connection();
                        $huydon = 2;
                        $sql = "UPDATE hoa_don SET huy_don = '" . $huydon . "', ly_do = '" . $ly_do . "'
                        , ma_ql = '" . $ma_ql . "'   WHERE hoa_don.ma_hd = '" . $ma_hd . "'";
                        $conn->exec($sql);

                        $message = "H???y h??a ????n th??nh c??ng !";
                        echo "<script type='text/javascript'>alert('$message');
                        window.location.replace('hoa-don-list.php');
                        </script>";
                    }
                    ?>
                    <!-- /. CONTENT  -->
                    <form action="" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="">M?? h??a ????n:</label>
                            <input type="text" class="form-control" id="ma_hd" name="ma_hd" placeholder="" value=<?= $ma_hd ?> readonly>
                        </div>

                        <div class="form-group">
                            <label for="">M?? kh??ch h??ng:</label>
                            <input type="text" class="form-control" id="ma_kh" name="ma_kh" placeholder="" value="<?= $ma_kh ?>">
                        </div>

                        <div class="form-group">
                            <label for="">M?? qu???n l??:</label>
                            <input type="text" class="form-control" id="ma_ql" name="ma_ql" placeholder="" value="<?= $_SESSION['user']['ho_ten'] ?>">
                        </div>

                        <div class="form-group">
                            <label for="">L?? do:</label>
                            <textarea class="form-control" rows="5" id="ly_do" name="ly_do" placeholder="L?? do h???y ????n h??ng ..."></textarea>
                        </div>
                        <button type="submit" name="btn_update" class="btn btn-danger">C???p nh???t</button>
                    </form>
                </div>
            </div>
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="../../../css/admin/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="../../../css/admin/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="../../../css/admin/js/jquery.metisMenu.js"></script>
    <!-- Custom Js -->
    <script src="../../../css/admin/js/custom-scripts.js"></script>


</body>

</html>