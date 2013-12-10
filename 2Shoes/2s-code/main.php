<?php 
@session_start();
@ob_start();
require('db/dbcon.php');
if(!isset($_SESSION['uid'])){
header('Location:index.php');
//$id_member = $_SESSION['idm'];
}else{
$tid = $_SESSION['uid'];
}

include('header2.php'); 
?>
<br />
<h2 style="text-align:center;">Previous Questions</h3>
<?php
$class_code=mysql_query("select * from class_code where teacher_id=".$tid." and status='Closed' order by id DESC");
$c_code=mysql_fetch_array($class_code);
$sql="SELECT * FROM `question` where classcode='".$c_code['class_code']."' order by rating DESC limit 0,2";
$result=mysql_query($sql);
if(mysql_num_rows($result)>0)
{
while($row=mysql_fetch_array($result))
{
 ?>

<div style="width:350px; margin:0 auto; margin-bottom:45px;">
<div style="float:left;width:100%;">
<span style="float:left;"><img src="img/star-on-big.png" alt=""  /></span><span style="float: left;margin-left: 5px;margin-top: 4px;"><?php echo $row['question']; ?></span>
</div>
</div>
<?php }}else{ ?>
<div style="width:300px; margin:0 auto; margin-bottom:45px;">
<div style="float:left;width:100%;">
<span style="float:left;"><img src="img/star-on-big.png" alt=""  /></span><span style="float:left;margin-top:-1px;"> &nbsp;&nbsp;NO Question Ask Yet....</span>
</div>
</div>
<?php } ?>
<br />



<div style="clear:both; height:10px"></div>


 <div data-corners="true" data-shadow="true" data-iconshadow="true" data-wrapperels="span" data-icon="null" data-iconpos="null" data-theme="a" data-inline="false" data-mini="false" aria-disabled="false">
<input onClick="window.location='class.php'" type="submit" name="myclass" value="My Modules" data-theme="a" class="ui-btn-hidden" aria-disabled="false"></div>
<br />


<h2 style="text-align:center;">Previous Modules</h3>
<h4 style="text-align:center;">Your Recent Stats</h4>
<div class="outer">
<?php
$teacherid=$_SESSION['uid'];
//$sql="select * from class_code where teacher_id='".$teacherid."'";
$sql="SELECT `id`,`id_class`,`teacher_id`,`status`,`class_code`,`class_datetime` FROM class_code where teacher_id='".$teacherid."' GROUP BY(id_class) ";
$r=mysql_query($sql);
if(mysql_num_rows($r)>0){
while($s=mysql_fetch_array($r)){
$classcode= $s['class_code'];
$class_datetime= $s['class_datetime'];
$id_class= $s['id_class'];

 $sql="select * from feedback where classcode='".$classcode."' ORDER BY id DESC LIMIT 0,1";
$rr=mysql_query($sql);
while($q=mysql_fetch_array($rr))
{

$sql3="select * from class where id='".$id_class."'";
$qe=mysql_query($sql3);
while($rw=mysql_fetch_Array($qe))
{
echo '<h3 class="head">'.$rw['classtitle']."</h3>";

echo '<div class="Feedback">';
echo "Question1= " . $q['question1']."<br />";
echo "Question2= " .$q['question2']."<br />";
echo "Question3= " .$q['question3'];
echo '</div>';
echo "<br />";
}
}
}
}
else
{
echo '<div class="padd">No Feed Back Found yet !</div>';
}

?>
</div>
<br />
<?php include('footer.php'); ?>