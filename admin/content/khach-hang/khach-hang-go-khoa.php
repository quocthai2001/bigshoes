<?php
require_once('../../dao/khach-hang.php');

extract($_REQUEST);

khach_hang_go_khoa($ma_kh);

header('location: khach-hang-list.php');
