<?php
@session_start();
@ob_start();

require('db/dbcon.php'); 
include('header.php');
if(!isset($_SESSION['uid'])){
header('Location:index.php');
//$id_member = $_SESSION['idm'];
}else{
$tid = $_SESSION['uid'];
}


if(is_numeric($_GET['id']))
{
$id = $_GET['id'];
}
else
{
$id = 0;
}

$q1="Select * From class_code INNER JOIN class ON class_code.id_class=class.id where class_code.id_class='$id'";
//echo $q1;
//$q1="Select DISTINCT classtitle From class where teacher_id='$tid'";

$rs=mysql_query($q1);
$classname=mysql_query("select * from class where id=".$id);
$row1=mysql_fetch_array($classname);
?>

<div data-role="content" class="ui-content" role="main">
<br />
 <div align="center" style="font-size: 20px;font-weight: bold;"> Class Codes for <?php echo $row1['classtitle']; ?></div>
 <br  />

<br  />
<div class="main">
<ul>
<?php if(mysql_num_rows($rs)>0){ ?>
<?php while($row=mysql_fetch_array($rs)){ ?>
<div data-corners="true" data-shadow="true" class=" ui-fullsize ui-btn-block" ><a href="questions.php?id=<?php echo $row['class_code'] ?>"><input type="submit" value="<?php echo $row['classtitle']; ?>&nbsp;-&nbsp;<?php echo $row['class_code']; ?>"></a></div>

<?php }
} 
else
{
echo "No Class Arrange Yet!";
}

 ?>
</ul>
</div>

</div>
</div>


<?php include('footer.php'); ?>