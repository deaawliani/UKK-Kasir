<?php

$server = "localhost";
$user ="root";
$pass = "";
$database = "kasir2";

$koneksi = new mysqli ($server, $user, $pass, $database);

if (!$koneksi) {
    die("<script>alert('Tidak terhubung dengan databse.')</script>");
}
// else {
//     die("<script>alert('Berhasil Login.')</script>");
// }

?>