<?php
@session_start();
include("db/dbcon.php");
mysql_query("update class_code set status='Closed' where class_code='".$_GET['cid']."'");
/*
unset($_SESSION['uid']);
unset($_SESSION['name']);
unset($_SESSION['email']);
$_SESSION = array();
session_destroy();*/
header("location:main.php");
?>