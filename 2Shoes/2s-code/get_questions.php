<?php 
@ob_start();
@session_start();

include("db/dbcon.php");


if(isset($_SESSION['code'])){
$code=$_SESSION['code'];
?>
<div style="clear:both"></div>
 <?php if(isset($_SESSION['msg'])){echo '<p style="color:#009900;font-size:12px; font-weight:bold;">'.$_SESSION['msg'].'</p>';$_SESSION['msg']="";} ?>
 <div style="clear:both"></div>
<?
$class=mysql_query("select * from class_code where class_code='".$code."'");
$c=mysql_fetch_array($class);
if($c['status']=="Start"){
$q2="SELECT * from question INNER JOIN class ON question.id_class=class.id where classcode='".$code."' and status='Posted' order by rating DESC";
$rs=mysql_query($q2);
if(mysql_num_rows($rs)>0){ 
 while($row=mysql_fetch_array($rs)){ ?>
 
 <div class="aja" style="float: left;width: 100%;margin-bottom:0px;">

<div class="arraow" style="float: left;width:70px;">
<ul>
<?
$up=mysql_query("select * from ratings where question_id=".$row[0]." and id_student=".$_SESSION['stdid']." and classcode='".$code."' and votetype='Up'");
if(mysql_num_rows($up)<=0){
?>
<li style="list-style:none;"><a href="insert.php?action=up&id=<?php echo $row[0]; ?>"><img src="themes/images/up.png" alt="" width="20" border="0" /></a></li>
<?
}else{
?>
<li style="list-style:none;"><img src="themes/images/up_black.png" alt="" width="20" border="0" /></li>
<?
}
$down=mysql_query("select * from ratings where question_id=".$row[0]." and id_student=".$_SESSION['stdid']." and classcode='".$code."' and votetype='Down'");
if(mysql_num_rows($down)<=0){
?>
<li style="list-style:none;"><a href="insert.php?action=down&id=<?php echo $row[0]; ?>"><img src="themes/images/down.png" alt="" width="20" border="0" /></a></li>
<?
}else{
?>
<li style="list-style:none;"><img src="themes/images/down_black.png" alt="" width="20" border="0" /></li>
<?
}
?>
</ul>
</div>
<div class="mainquestion" style="margin-top:20px;">
<?php //echo $row['question'];
$text=stripslashes($row['question']);
 $text = strip_tags($text,"<b><i><u>");
 $text = preg_replace("/(?<!http:\/\/)www\./","http://www.",$text);
 $text = preg_replace( "/((http|ftp)+(s)?:\/\/[^<>\s]+)/i", "<a href=\"\\0\" target=\"_blank\">\\0</a>",$text);
echo $text;
 ?>
</div>
</div>
<?php 
}
} 
else
{
//echo "No Question Found!";
}}else{
echo "Class has ended, Please leave feedback.<br><br>";
 //header("location:feedback.php"); 
//exit;
 ?>
 <div data-corners="true" data-shadow="true" class=" ui-fullsize ui-btn-block" ><input type="button" name="btn2" style="font-size:18px;" value="Click here to give class feedback" onclick="window.location='feedback.php'" /><br /><br /></div>
<?
}}else{
echo "Class has ended, Please leave feedback.<br><br>";

//header("location:feedback.php"); 

?>
<div data-corners="true" data-shadow="true" class=" ui-fullsize ui-btn-block" ><input type="button" name="btn2" style="font-size:18px;" value="Click here to give class feedback" onclick="window.location='feedback.php'" /><br /><br /></div>

<?
}
?>