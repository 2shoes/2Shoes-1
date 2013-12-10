<?php
@session_start();
@ob_start();
include("db/dbcon.php");
include('header.php');
//require_once('fckeditor/fckeditor.php');
if(isset($_SESSION['code'])){
$code=$_SESSION['code'];
}else{
header("location:studentindex.php");
}
?>
<script type="text/javascript" language="javascript">
function get_questions(str)
{

if (str=="")
  {
  document.getElementById("questions").innerHTML="";
  return;
  }
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("questions").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","get_questions.php",true);
xmlhttp.send();
}


</script>
<?
$q2="SELECT * from class_code where class_code='".$code."'";

$rs=mysql_query($q2);
$row=mysql_fetch_array($rs);
$q3=mysql_query("select * from class where id=".$row['id_class']);
$row3=mysql_fetch_array($q3);
?>

<div data-role="content" class="ui-content" role="main">
  

  <div data-role="content" class="ui-content" role="main">

<?php //if(isset($_SESSION['msg'])){echo $_SESSION['msg'];} ?>



<div class="main">
<div data-corners="true" data-shadow="true" class=" ui-fullsize ui-btn-block" ><input  type="submit" value="<?php echo $row3['classtitle']; ?> &nbsp;&nbsp;(<?php echo $row['class_code']; ?>)"></div>
<h3>Questions</h3>

<div id="questions">
<?php 
$q2="SELECT * from question INNER JOIN class ON question.id_class=class.id where classcode='".$code."' order by rating DESC";
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
<?php 
$text=stripslashes($row['question']);
 $text = strip_tags($text,"<b><i><u>");
 $text = preg_replace("/(?<!http:\/\/)www\./","http://www.",$text);
 $text = preg_replace( "/((http|ftp)+(s)?:\/\/[^<>\s]+)/i", "<a href=\"\\0\" target=\"_blank\">\\0</a>",$text);
echo $text; ?>
</div>
</div>
<?php 
}
} 
else
{
echo "No Question Found!";
}

?>


</div>

<div style="clear:both"></div>
<?
$class=mysql_query("select * from class_code where class_code='".$code."'");
$c=mysql_fetch_array($class);
if($c['status']=="Start"){
?>
<div class="ask">
 <form id="forms" method="post" action="addquestion.php" data-ajax="false" enctype="multipart/form-data">
 
      <fieldset data-role="controlgroup" class="ui-corner-all ui-controlgroup ui-controlgroup-vertical">
	  
	  <?php
		/*
			$ptext=$row['page_text'];
	 		$sBasePath = 'fckeditor/';
			$oFCKeditor = new FCKeditor('question') ;
			$oFCKeditor->BasePath = $sBasePath;
			$oFCKeditor->ToolbarSet = 'Basic';
			$oFCKeditor->Value = stripslashes($ptext);
			$oFCKeditor->Height = 300;
			$oFCKeditor->Create();
	*/
	?>
	  
      <textarea name="question" onClick="this.value=''">Submit a Question</textarea>
      </fieldset>
    
  
    <div data-corners="true" data-shadow="true" class=" ui-fullsize ui-btn-block" ><input type="submit" name="submit" value="Submit Question"></div>
	
	</form>
	
	<div data-corners="true" data-shadow="true" data-iconshadow="true" data-wrapperels="span" data-icon="null" data-iconpos="null" data-theme="a" data-inline="false" data-mini="false">
	
	</div>

</div>
<?
}
?>


</div>
</div>
</div>
<script language="javascript" type="text/javascript">
function timedCount()
{
get_questions(this.value);
t=setTimeout("timedCount()",1000);
}
timedCount();
</script>
<?php include('footer.php'); ?>