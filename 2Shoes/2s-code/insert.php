<?php
@session_start();
@ob_start();
require("db/dbcon.php");
$code=$_SESSION['code'];
$stdid=$_SESSION['stdid'];
if(is_numeric($_GET['id']))
{
$id=$_GET['id'];
}
else
{
$id=0;
}

$q1=mysql_query("select * from question where id=".$id);
$rating=mysql_fetch_array($q1);
if($_GET['action']=="up")
{
$newrate=$rating['rating']+1;
$q1="INSERT INTO ratings (id,question_id,ratings,id_student,classcode,votetype) VALUES('NULL','$id','1','$stdid','$code','Up')";
mysql_query($q1);
}
else
{
$newrate=$rating['rating']-1;
$q1="INSERT INTO ratings (id,question_id,ratings,id_student,classcode,votetype) VALUES('NULL','$id','1','$stdid','$code','Down')";
mysql_query($q1);
}

$q1="update question set rating=".$newrate." where id=".$id;
mysql_query($q1);

header('location:studentmain.php');
?>