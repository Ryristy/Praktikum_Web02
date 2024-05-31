<?php

$namaLengkap = $_GET['nama_Lengkap'];
$username =$_GET['username'];
$password = $_GET['password'];

echo "<h1>selamat {$namaLengkap}, kamu sudah terdaftar</h1>";
echo "<h3>username : {$username}</h3>";
echo "<h3>password : {$password}</h3>";  