<?php
session_start();
unset($_SESSION['uid']);
unset($_SESSION['name']);
unset($_SESSION['email']);
$_SESSION = array();
session_destroy();
header("location:index.php");
?>