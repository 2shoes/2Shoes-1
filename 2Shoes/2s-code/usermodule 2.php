<?php 
 @session_start();
@ob_start();
require('db/dbcon.php'); 
include('header3.php'); 

if(is_numeric($_GET['user']))
{
$userid=$_GET['user'];
}
else
{
$userid="0";
}

//$sql="select * from class where teacher_id='".$userid."'";

$sql="SELECT * FROM class where teacher_id='".$userid."' GROUP BY(classtitle)";
$r=mysql_query($sql);
$count=1;
?>

<h3 style="text-align:center;">Welcome Admin Panel!</h3>


<div data-role="content" class="ui-content" role="main">
<?php 
$sql21="select * from teacher where id=".$userid; 
$res=mysql_query($sql21);
$ress=mysql_fetch_array($res);
?>
 <div align="center" style="font-size: 20px;font-weight: bold; text-transform:capitalize;"> <?php echo $ress['name']; ?> Modules </div>

 <br  />
<div class="main">
<div style="text-align:center;">
<?php 
$sql2="select * from teacher where id=".$userid; 
$re=mysql_query($sql2);
while($rer=mysql_fetch_array($re))
{
echo $rer['name'];
echo "&nbsp;&nbsp;&nbsp;&nbsp;";
echo $rer['email'];
echo "<br /><br />";
}
?>

</div>
<div style="text-align:center;">
<?php
$sql22="select count(class_code) from class_code where teacher_id=".$userid; 
$ree=mysql_query($sql22);
$rs=mysql_fetch_array($ree);
echo "Total Number Of Events = " . $rs['count(class_code)'];
echo "<br /><br />";
?>
</div>
</div> 
<br  />
<div class="main">
<div style="margin:0 auto; width:400px; background-color:#ffffff;padding:15px;">
<table width="100%" cellspacing="10">
<tr>
<th width="10%">Sr</th>
<th width="30%" style="text-align:left;"> Modules </th>
<th width="30">No Of Events</th>
<th width="30%;"></th>
</tr>

<?php if(mysql_num_rows($r)>0){ ?>
<?php while($row=mysql_fetch_array($r)){ ?>
<!--<div data-corners="true" data-shadow="true" class=" ui-fullsize ui-btn-block" ><input type="button" value="<?php //echo $row['classtitle']; ?>" data-theme="a" class="ui-btn-hidden" aria-disabled="false" onclick='window.location="moduleevents.php?id=<?php //echo $row['id']; ?>&user=<?php //echo $userid;?>&class=<?php //echo $row['classtitle']; ?>"'></div>-->
<?php

$idclass=$row['id'];
$sql222="select count(class_code) from class_code where id_class=".$idclass; 
$reee=mysql_query($sql222);
$rss2=mysql_fetch_array($reee);
//echo "Total Number Of Events = " . $rs['count(class_code)'];
//echo "<br /><br />";
?>
<tr>
<td style="text-align:center;"><?php echo $count; ?></td>
<td style="text-align:left;"><?php echo $row['classtitle']; ?></td>
<td style="text-align:center;"><?php echo $rss2['count(class_code)']; ?></td>
<td style="text-align:center;"><a href="moduleevents.php?id=<?php echo $row['id']; ?>&user=<?php echo $userid;?>&class=<?php echo $row['classtitle']; ?>">View Events</a></td>
</tr>


<?php $count++;}} 
else{
echo '<tr><td></td><td><div style="text-align:center;">No Module Found!</div></td><td></td><td></td></tr>';
}

?>
</table>
</div>
</div>

</div>
<?php include('footer.php'); ?>
</div>

