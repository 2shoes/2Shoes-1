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
//$q1="Select * From class_code INNER JOIN class ON class_code.id_class=class.id LEFT JOIN teacher ON teacher.id=class_code.teacher_id where class_code.teacher_id='1'";
//$q1="Select * From class where teacher_id=$tid";
$q1="SELECT id, classtitle,feedback_id,teacher_id FROM class where teacher_id=$tid";
$rs=mysql_query($q1);

?>

<div data-role="content" class="ui-content" role="main">
<br />
 <div align="center" style="font-size: 20px;font-weight: bold;"> My Modules </div>

 <br  />
 <div class="main">
 <ul>
<div data-corners="true" data-shadow="true" class=" ui-fullsize ui-btn-block" ><input type="submit" name="createclass" value="Create Module" data-theme="a" class="ui-btn-hidden" aria-disabled="false" onClick="window.location='create_class.php'"></div>
</ul>
</div>
<br  />
<div class="main">
<ul>
<?php if(mysql_num_rows($rs)>0){ ?>
<?php while($row=mysql_fetch_array($rs)){ ?>

<div data-corners="true" data-shadow="true" class=" ui-fullsize ui-btn-block" ><input type="button" value="<?php echo $row['classtitle']; ?>" data-theme="a" class="ui-btn-hidden" aria-disabled="false" onclick="window.location='create_classcode.php?id=<?php echo $row['id']; ?>'"></div>

<?php }} 
else
{
echo "No Module Found!";
}

?>
</ul>
</div>

</div>
<?php include('footer.php'); ?>
</div>


