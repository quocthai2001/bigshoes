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
                    <h1>QU???N L?? KH??CH H??NG</h1>
                    <p>C???p nh???t l???i th??ng tin kh??ch h??ng: </p>

                    <!-- /. CODE X??? L?? PHP  -->
                    <?php
                    require_once('../../dao/khach-hang.php');
                    extract($_REQUEST);
                    $item = khach_hang_select_by_id($ma_kh);
                    extract($item);

                    extract($_REQUEST);
                    if (array_key_exists("btn_update", $_REQUEST)) {
                        khach_hang_update($ma_kh, $ho_ten, md5($mat_khau), $email, $sdt, $dia_chi);
                        $message = "C???p nh???t t??i kho???n th??nh c??ng !";
                        echo "<script type='text/javascript'>alert('$message');</script>";
                    }
                    ?>
                    <!-- /. CONTENT  -->
                    <form action="" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="">T??n ????ng nh???p:</label>
                            <input type="text" class="form-control" name="ma_kh" placeholder="Nh???p t??n ????ng nh???p ..." value="<?= $ma_kh ?>" readonly>
                        </div>

                        <div class="form-group">
                            <label for="">H??? v?? t??n:</label>
                            <input type="text" class="form-control" name="ho_ten" placeholder="Nh???p h??? v?? t??n ..." value="<?= $ho_ten ?>">
                        </div>

                        <div class="form-group">
                            <label for="">M???t kh???u:</label>
                            <input type="text" class="form-control" name="mat_khau" placeholder="Nh???p m???t kh???u ..." value="<?= $mat_khau ?>">
                        </div>

                        <div class="form-group">
                            <label for="">Email:</label>
                            <input type="text" class="form-control" name="email" placeholder="Nh???p email ..." value="<?= $email ?>">
                        </div>

                        <div class="form-group">
                            <label for="">S??? ??i???n tho???i:</label>
                            <input type="text" class="form-control" name="sdt" placeholder="Nh???p s??? ??i???n tho???i ..." value="<?= $sdt ?>">
                        </div>

                        <div class="form-group">
                            <label for="">?????a ch???:</label>
                            <input type="text" class="form-control" name="dia_chi" placeholder="Nh???p ?????a ch??? ..." value="<?= $dia_chi ?>">
                        </div>

                        <div class="form-group">
                            <label for="">Vai tr??:</label>
                            <input type="text" class="form-control" placeholder="Kh??ch h??ng ..." readonly>
                        </div>

                        <button type="submit" name="btn_update" class="btn btn-danger">C???p nh???t</button>
                    </form>
                </div>
            </div>
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <script src="../../../css/admin/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="../../../css/admin/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="../../../css/admin/js/jquery.metisMenu.js"></script>
    <!-- Custom Js -->
    <script src="../../../css/admin/js/custom-scripts.js"></script>


</body>

</html>