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
                    <h1>QU???N L?? T??I KHO???N</h1>
                    <p>D?????i ????y l?? danh s??ch c??c kh??ch h??ng ???? ???????c th??m v??o: </p>

                    <!-- /. X??? L?? CODE PHP  -->
                    <?php
                    require_once('../../dao/khach-hang.php');

                    $items = khach_hang_select_all();
                    ?>
                    <!-- /. CONTENT  -->
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>T??I KHO???N</th>
                                <th>H??? V?? T??N</th>
                                <th style="width: 180px">M???T KH???U</th>
                                <th>EMAIL</th>
                                <th>S??T</th>
                                <th style="width: 100px">?????A CH???</th>
                                <th>VAI TR??</th>
                                <th style="width:210px">H??NH ?????NG</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($items as $item) {
                                extract($item);
                            ?>
                                <tr>
                                    <td><?= $ma_kh ?></td>
                                    <td><?= $ho_ten ?></td>
                                    <td><?= $mat_khau ?></td>
                                    <td><?= $email ?></td>
                                    <td><?= $sdt ?></td>
                                    <td><?= $dia_chi ?></td>
                                    <td><?php if ($vai_tro == 0) {
                                            echo "Kh??ch h??ng";
                                        } else {
                                            echo "Admin";
                                        } ?></td>
                                    <td>
                                        <?php
                                        if ($vai_tro == '1') {
                                        ?>
                                            <a href="khach-hang-update.php?ma_kh=<?= $ma_kh ?>"><button class="btn btn-primary">S???a</button></a>
                                        <?php } else {
                                        ?>
                                            <a href="khach-hang-update.php?ma_kh=<?= $ma_kh ?>"><button class="btn btn-primary">S???a</button></a>
                                            <a onclick="return confirm('B???n c?? ch???c ch???n mu???n x??a ?')" href="khach-hang-delete.php?ma_kh=<?= $ma_kh ?>"><button class="btn btn-danger">X??a</button></a>
                                            <?php if ($trang_thai == '0') { ?>
                                                <a onclick="return confirm('B???n c?? ch???c ch???n mu???n kh??a t??i kho???n n??y ?')" href="khach-hang-khoa.php?ma_kh=<?= $ma_kh ?>"><button class="btn btn-success">Kh??a</button></a>
                                            <?php } ?>
                                            <?php if ($trang_thai == '1') { ?>
                                                <a onclick="return confirm('B???n c?? ch???c ch???n mu???n m??? kh??a t??i kho???n n??y ?')" href="khach-hang-go-khoa.php?ma_kh=<?= $ma_kh ?>"><button class="btn btn-warning">M??? kh??a</button></a>
                                        <?php }
                                        } ?>
                                    </td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                    <a href="../khach-hang/khach-hang-new.php"><button class="btn btn-danger">Th??m m???i</button></a>
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