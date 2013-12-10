<?php
@session_start();
@ob_start();
include("db/dbcon.php");
include('header2.php');
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
xmlhttp.open("GET","get_questions_teacher.php",true);
xmlhttp.send();
}
</script>
<?
/*if(!isset($_SESSION['uid'])){
header('Location:index.php');
}else{
$tid = $_SESSION['uid'];
}*/
$cid=$_GET['id'];
$_SESSION['classcode']=$cid;
//$code=$_SESSION['code'];
$q2="SELECT * from class_code where class_code='".$cid."'";

$rs=mysql_query($q2);
$row=mysql_fetch_array($rs);
$q3=mysql_query("select * from class where id=".$row['id_class']);
$row3=mysql_fetch_array($q3);

?>

<div data-role="content" class="ui-content" role="main">


<?php //if(isset($_SESSION['msg'])){echo $_SESSION['msg'];} ?>



<div class="main">
<div data-corners="true" data-shadow="true" class=" ui-fullsize ui-btn-block" ><input  type="submit" value="<?php echo $row3['classtitle']; ?> &nbsp;&nbsp;(<?php echo $row['class_code']; ?>)&nbsp;&nbsp;{Mode:<? echo $row['mode']?>}"></div>
<?php if(isset($_SESSION['msg'])){echo $_SESSION['msg'];$_SESSION['msg']="";} ?>
<h3>Questions</h3>

<div class="mainquestion" style="margin-top:5px;" id="questions">
<?php 
$q2="SELECT * from question where classcode='".$cid."' order by rating DESC";
$rs=mysql_query($q2);
if(mysql_num_rows($rs)>0){ 
 while($row=mysql_fetch_array($rs)){ ?>


<h5><img src="themes/images/right.png" alt="" height="20" border="0" />&nbsp;&nbsp;<?php echo $row['question']; ?></h5>

<?php 
}
} 
else
{
echo "No Question(s) Asked Yet.";
}

?>

</div>

<div style="clear:both"></div>

<div data-corners="true" data-shadow="true" class="ui-fullsize ui-btn-block"><a href="end_class.php?cid=<? echo $cid;?>"><input  type="submit" value="End This Event"></a></div>

<script language="javascript" type="text/javascript">
function timedCount()
{
get_questions(this.value);
t=setTimeout("timedCount()",5000);
}
timedCount();
</script>
</div>
</div>
<?php include('footer.php'); ?>