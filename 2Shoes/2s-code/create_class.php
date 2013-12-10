<?php 
@session_start();
@ob_start();
require('db/dbcon.php'); 

include('header2.php'); 

if(!isset($_SESSION['uid'])){
header('Location:index.php');
//$id_member = $_SESSION['idm'];
}else{
$tid = $_SESSION['uid'];
}

if(isset($_POST['create'])=="Create")
{
$classtitle=$_POST['class-title'];
$q1="INSERT INTO class (id,classtitle,teacher_id) VALUES('NULL','$classtitle','$tid')";

mysql_query($q1);
$_SESSION['msg']="Module Created Successfully";
header("location:main.php");
}
?>

<div data-role="content" class="ui-content" role="main">
<br />
  <div align="center" style="font-size: 20px;font-weight: bold;"> Create New Module </div>
  <br  />
    <form id="forms" method="post" action="" data-ajax="false">

      <fieldset data-role="controlgroup" class="ui-corner-all ui-controlgroup ui-controlgroup-vertical">
      <input style="color:#999;" name="class-title" type="text" id="class-title"  value="Module Title" onClick="this.value=''">
      </fieldset>
     
    <div data-corners="true" data-shadow="true" class=" ui-fullsize ui-btn-block" ><input type="submit" name="create" value="Create"></div>
	
	</form>

  </div>
<?php  include('footer.php'); ?>
</div>



