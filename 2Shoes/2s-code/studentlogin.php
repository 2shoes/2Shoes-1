<?php 
@session_start();
@ob_start();
require("db/dbcon.php");

$classcode = mysql_real_escape_string($_POST['classcode']);

mysql_query("insert into student set name='',email=''");
 $_SESSION['stdid']=mysql_insert_id();
$student=$_SESSION['stdid'];
//$q1 =	"SELECT * FROM  class_code WHERE class_code =".$classcode;

$sql="insert into counter(classcode,studenid) values('$classcode','$student') ";
mysql_query($sql);

$q1 =	"SELECT * FROM class_code WHERE class_code ='".$classcode."'";



$rs1 = mysql_query($q1);
$row = mysql_fetch_row($rs1);

$num_results = mysql_num_rows($rs1);

if ($num_results > 0){
$_SESSION['upvote']=0;
$_SESSION['downvote']=0;
$_SESSION['code']= $row[2];
$_SESSION['classid']=$row[1];
$_SESSION['mode']=$row[7];



header("location: studentmain.php");
}
else
{
header("location: studentindex.php?error=1");
}
mysql_free_result($rs1);
mysql_close($con);
?>