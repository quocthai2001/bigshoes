<?php
require_once('../../dao/hoa-don.php');

extract($_REQUEST);
hoa_don_chi_tiet_delete($ma_hd);
hoa_don_delete($ma_hd);

header('location: hoa-don-list.php');
