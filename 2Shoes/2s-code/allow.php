<?php 
@session_start();
@ob_start();
include("db/dbcon.php");
if(!isset($_SESSION['uid']))
{
	header("location: index.php");
}
if(is_numeric($_GET['id'])){
$id=$_GET['id'];
$code=$_GET['code'];

$q1 = "update question set status='Posted' where id =".$id;
mysql_query($q1);
$_SESSION['msg'] = '<p style="color:#009900;font-size:12px; font-weight:bold;">Question has been posted successfully...</p>';
}
header("location:questions.php?id=".$code);
?>