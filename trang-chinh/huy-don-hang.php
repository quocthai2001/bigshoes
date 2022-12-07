<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php
    require_once('../admin/dao/hoa-don.php');
    extract($_REQUEST);
    $item = hoa_don_select_by_id($ma_hd);
    extract($item);
    if ($huy_don == 0) {
        $mahd = $ma_hd;
        $ngaymua = $ngay_mua;
        $ghichu = $ghi_chu;
        $tinhtrang = 0;
        $huydon = 1;
        $makh = $ma_kh;
        $conn = pdo_get_connection();
        $sql = "UPDATE hoa_don SET ngay_mua = '" . $ngaymua . "',ghi_chu = '" . $ghi_chu . "',tinh_trang = '" . $tinhtrang
            . "',ma_kh = '" . $ma_kh . "',huy_don = '" . $huydon . "'   WHERE ma_hd = '" . $mahd . "'";
        $conn->exec($sql);
    }
    header('location: don-mua.php');
    ?>
</body>

</html>