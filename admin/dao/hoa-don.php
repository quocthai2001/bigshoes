<?php
require_once('pdo.php');

function hoa_don_select_all()
{
    $sql = "SELECT * FROM hoa_don ORDER BY ma_hd DESC";
    return pdo_query($sql);
}


function hoa_don_select_by_id($ma_hd)
{
    $sql = "SELECT * FROM hoa_don WHERE ma_hd=?";
    return pdo_query_one($sql, $ma_hd);
}



function hoa_don_chi_tiet_select_all()
{
    $sql = "SELECT * FROM hoa_don_chi_tiet ORDER BY ma_hd DESC";
    return pdo_query($sql);
}


function hoa_don_chi_tiet_select_by_id($ma_hd)
{
    $sql = "SELECT hang_hoa.giam_gia, hoa_don_chi_tiet.so_luong, hang_hoa.don_gia,hang_hoa.ten_hh FROM hoa_don_chi_tiet 
        JOIN hang_hoa ON hoa_don_chi_tiet.ma_hh = hang_hoa.ma_hh
        WHERE hoa_don_chi_tiet.ma_hd=?";
    return pdo_query($sql, $ma_hd);
}
function hoa_don_delete($ma_hd)
{
    $sql = "DELETE FROM hoa_don WHERE ma_hd=?";
    if (is_array($ma_hd)) {
        foreach ($ma_hd as $ma) {
            pdo_execute($sql, $ma);
        }
    } else {
        pdo_execute($sql, $ma_hd);
    }
}
function hoa_don_chi_tiet_delete($ma_hd)
{
    $sql = "DELETE FROM hoa_don_chi_tiet WHERE ma_hd=?";
    if (is_array($ma_hd)) {
        foreach ($ma_hd as $ma) {
            pdo_execute($sql, $ma);
        }
    } else {
        pdo_execute($sql, $ma_hd);
    }
}
function huy_hoa_don_insert($ma_ql, $ly_do)
{
    $sql = "INSERT INTO hoa_don(ma_ql,ly_do) VALUES(?,?)";
    pdo_execute($sql, $ma_ql, $ly_do);
}
function huy_hoa_don_select($ma_hd)
{
    $sql = "SELECT * FROM huy_hoa_don WHERE ma_hd=?";
    return pdo_query_one($sql, $ma_hd);
}
