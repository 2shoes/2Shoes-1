<?php 
@session_start();
@ob_start();
include("db/dbcon.php");
if(!isset($_SESSION['uid']))
{
	header("location: index.php");
}
$id=$_GET['id'];
$code=$_GET['code'];
/*if(is_numeric($_GET['id']))
{
$id=$_GET['id'];
}
else
{
$id="0";
}*/

/*if(is_numeric($_GET['code']))
{
$code=$_GET['code'];
}
else
{
$code="0";
}
*/
$q1 = "DELETE from  question where id =".$id;
mysql_query($q1);
$_SESSION['msg'] = '<p style="color:#990000;font-size:12px; font-weight:bold;">Question deleted successfully...</p>';
header("location:questions.php?id=".$code);
?>