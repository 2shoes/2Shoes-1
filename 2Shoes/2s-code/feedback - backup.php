<?php
@session_start();
@ob_start();
include("db/dbcon.php");
include("header.php");
$code=$_SESSION['code'];
$stdid=$_SESSION['stdid'];
if(isset($_POST['rate'])=="Submit")
{

$question1=$_POST['question1'];
$question2=$_POST['question2'];
$question3=$_POST['question3'];
$date=date("Y-m-d");

$q10 = "select * from class_code where class_code=".$code;
$res=mysql_query($q10);
$row=mysql_fetch_array($res);

$classid= $row['id_class'];
$q11 = "select * from class where id=".$classid;
$res2=mysql_query($q11);
$row2=mysql_fetch_array($res2);
$class=$row2['classtitle'];
//$q1="INSER INTO feedback(id,question1,question2,question3,classcode,studentid) VALUES('NULL','$question1','$question2','$question3','$code',$class)";
$q1="INSERT INTO feedback (`id`, `question1`, `question2`, `question3`, `classcode`, `studentid`, `create_date`,`classtitle`) VALUES (NULL, '$question1', '$question2', '$question3', '$code', '$stdid','$date','$class')";

mysql_query($q1);
$id = mysql_insert_id();
//echo "last id=".$id;
$q5="select * from class_code where class_code=".$code;

$res=mysql_query($q5);

if(mysql_num_rows($res)>0)
{

$row=mysql_fetch_array($res);

$classid=$row['id_class'];

$q7 = "select * from class where id=".$classid;
$ress=mysql_query($q7);
$rows=mysql_fetch_array($ress);
$classtitle= $rows['classtitle'];
$teacherid= $rows['teacher_id'];

//echo "CLassid=".$classid;
//$q6="UPDATE class SET feedback_id = '" . $id . "'where id = '" . $classid . "'";
$q6="insert into class(classtitle,teacher_id,feedback_id) values('$classtitle','$teacherid','$id')";
mysql_query($q6);
}


 $_SESSION['msg']="Thanks for Your Feed Back";
 header('Location:thanks_feedback.php');
}
 ?>
 
 
 <?php
 
 $sql= "select * from editfeed where classcode=".$code;
 $res=mysql_query($sql);
 if(mysql_num_rows($res)>0)
 {
 while($row=mysql_fetch_array($res))
 {  
  ?>
 
 
 
 

 <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.raty.min.js"></script>
 
 <div class="feedback" style="max-width:700px; margin:0 auto;">
 <form method="post" action="" >
 
 <div style=" margin:0 auto;width: 280px;">
 
 <h2> Feed Back</h2>

 <h4>1. <!--Did the teacher make today's class engaging?--><?php  echo $row['question1']; ?></h4>

 <div class="star" style="width:150px !important;"></div>
 <script type="text/javascript">
	$('.star').raty({ 
	scoreName: 'question1',
  	starOff: 'img/star-off-big.png',
  	starOn : 'img/star-on-big.png'
	});
 </script>
 
 
  <h4>2. <!--Were the examples used in today's class helpful in conveying the day's lesson?--><?php  echo $row['question2']; ?></h4>
 <div class="rate"  style="float:left;">

 <div class="star1" style="width:150px !important; "></div>
  <script type="text/javascript">
	$('.star1').raty({ 
	scoreName: 'question2',
  	starOff: 'img/star-off-big.png',
  	starOn : 'img/star-on-big.png'
	});
 </script>
 
 
  <h4>3.  <!--Were you treated fairly and respected by the teacher, in today's class?--><?php  echo $row['question3']; ?> </h4>
 
 <div class="star3" style="width:150px !important;"></div>
 <script type="text/javascript">
	$('.star3').raty({ 
	scoreName: 'question3',
  	starOff: 'img/star-off-big.png',
  	starOn : 'img/star-on-big.png'
	});
 </script>
 <br >

 
  <div><input type="submit" name="rate" value="Submit" ></div>
 </div>
 </form>
 </div>
 
<?php
 }
  
 }
else
 {

echo '<div class="feedback" style="max-width:700px; margin:0 auto; text-align:center;"><h3>Sorry! No feed Back QUestions Updated Yet for this Class!</h3></div>';
 
 }

?>   

<br  /> 

</div>
  <?php include("footer.php"); ?>
 
 
 
 
 
 
 
 
 
 
 
 

 