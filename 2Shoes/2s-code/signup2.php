<?php 
@session_start();
@ob_start();
require("db/dbcon.php");
if($_POST['signup']=="Register")
{
$name= $_POST['name'];
$email=$_POST['email'];
$password=$_POST['password'];

$sql="INSERT INTO teacher(name,email,password) VALUES('$name','$email','$password')";
mysql_query($sql);
$_SESSION['msg']= '<span style="color:red">&middot;</span>&nbsp;Administrator Registered Successfully';
header("location:index2.php");

}
else
{
header("location:index2.php");
}

?>