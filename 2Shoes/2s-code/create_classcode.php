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
$id_class=$_GET['id'];
$classcode=$_POST['classcode'];
$rs=mysql_query("select * from class_code where class_code='".$classcode."' and id_class=".$id_class);
if(mysql_num_rows($rs)<=0){
$feed6=mysql_query("select * from class where id=".$id_class);
$f6=mysql_fetch_array($feed6);
$q1="INSERT INTO class_code (id,id_class,class_code,teacher_id,status,class_datetime,feedback_id,mode) VALUES('NULL','$id_class','$classcode','$tid','Start','".date("Y-m-d h:m:s")."',".$f6['feedback_id'].",'".$_POST['mode']."')";
mysql_query($q1);
$_SESSION['msg']="Event Code Created Successfully";
header("location:questions.php?id=".$classcode);
}else{
echo "<div style='text-align:center;color:blue;'><br><br>Class code already used, please try with other one.</div>";
}
}
?>

<div data-role="content" class="ui-content" role="main">
<br />
  <div align="center" style="font-size: 20px;font-weight: bold;"> Create Event Code </div>
  <br />
  <?php //if(isset($_SESSION['msg'])){echo $_SESSION['msg'];} ?>
    <form id="forms" method="post" action="" data-ajax="false">
      
	  
	  
      <fieldset data-role="controlgroup" class="ui-corner-all ui-controlgroup ui-controlgroup-vertical">
      <input style="color:#999;" name="classcode" type="text" id="classcode"  value="Event Code" onClick="this.value=''">
      </fieldset>
	<label style="width:115px;"><input name="mode" type="radio" id="mode" value="Online" title="Online" checked="checked">Online</label>(Everyone can see questions once they are submitted)
	
	 <label style="width:115px;"><input name="mode" type="radio" id="mode" value="Offline" title="Offline">Offline</label>(Admin must approve the question to allow all attendees to view it)
	 
     	
	<div data-corners="true" data-shadow="true" data-iconshadow="true" data-wrapperels="span" data-icon="null" data-iconpos="null" data-theme="a" data-inline="false" data-mini="false" aria-disabled="false"><input type="hidden" name="create" value="Create"><input type="submit" aria-disabled="false" class="ui-btn-hidden" data-theme="a" value="Create" name="create"></div>
	</form>

  </div>

<?php  include('footer.php'); ?>
</div>


