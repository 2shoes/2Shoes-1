<?php 
 @session_start();
@ob_start();
include('header3.php'); 
require('db/dbcon.php');
?>
<h3 style="text-align:center;">Welcome Admin Panel!</h3>

<?php 
$sql="SELECT * FROM teacher where email!='admin'";
$s=mysql_query($sql);

?>
<div class="outer2" style="width: 550px;">

<table width="100%" cellspacing="10">
<tr>
<th width="20%" style="text-align:left;">Name</th>
<th width="20%" style="text-align:left;">Email</th>
<th width="30%" style="text-align:left;">Total Modules</th>
<th width="60%" style="text-align:left;"> View Modules</th>
</tr>


<?php while($rs=mysql_fetch_array($s)){  ?>
<tr class="classname">
<td><?php echo $rs['name']; ?></td>
<td width="20%"><?php echo $rs['email']; ?></td>
<?php 
$teacherid = $rs['id'];
$sql2="SELECT  count(distinct classtitle) FROM class where teacher_id=".$teacherid;
$rsd=mysql_query($sql2);
$rew=mysql_fetch_array($rsd);
?>
<td width="20%" style="text-align:center;"><?php echo $rew['count(distinct classtitle)']; ?></td>
<td style="text-align:center;"><a href="usermodule.php?user=<?php echo $rs['id']; ?>" title="View Modules">View Modules</a></td>
</tr>
<?php } ?>
</table>

</div>
<div><a href="editfeed.php" style="text-decoration:none;"><input type="submit" name="edit" value="Edit Feed Back" /></a></div>

<?php include('footer.php'); ?>