<?php 
@session_start();
@ob_start();
include("db/dbcon.php");
if(!isset($_SESSION['uid']))
{
	header("location: index.php");
}
if(is_numeric($_GET['id']))
{
$id=$_GET['id'];
}
else
{
$id="0";
}

if(is_numeric($_GET['code']))
{
$code=$_GET['code'];
}
else
{
$code="0";
}

$q1 = "DELETE from  question where id =".$id;
mysql_query($q1);
$_SESSION['msg'] = "Question deleted successfully...";
header("location:classquestions.php?code=".$code);
?>