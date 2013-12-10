<?php 
@session_start();
@ob_start();
include("db/dbcon.php");
$code=$_SESSION['code'];
$classid=$_SESSION['classid'];
$stdid=$_SESSION['stdid'];
$question= addslashes($_POST['question']);
if($question=="Submit a Question" or $question==""){
}else{
if($_SESSION['mode']=="Offline"){
$st="New";
$_SESSION['msg']="Question has been submitted.";
}else{
$st="Posted";
$_SESSION['msg']="";
}

$q1= "INSERT INTO question (id,id_class,question,classcode,studentid,rating,status) VALUES('Null','$classid','$question','$code','$stdid',1,'".$st."')";

mysql_query($q1);
}
header("location:studentmain.php");
?>