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
//$q1="INSER INTO feedback(id,question1,question2,question3,classcode,studentid) VALUES('NULL','$question1','$question2','$question3','$code',$class)";
$q1="INSERT INTO feedback (`id`, `question1`, `question2`, `question3`, `classcode`, `studentid`) VALUES (NULL, '$question1', '$question2', '$question3', '$code', '$stdid')";

mysql_query($q1);
 //$_SESSION['msg']="Thanks for Your Feed Back";
 header('Location:thanks_feedback.php');
}
 ?>
 
 

 <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.raty.min.js"></script>
 
 <div class="feedback" style="max-width:700px; margin:0 auto;">
 <form method="post" action="" >
 
 <div style=" margin:0 auto;width: 280px;">
 
 <h2> Feed Back</h2>

 <h4>1. Did the teacher make today's class engaging?</h4>

 <div class="star" style="width:150px !important;"></div>
 <script type="text/javascript">
	$('.star').raty({ 
	scoreName: 'question1',
  	starOff: 'img/star-off-big.png',
  	starOn : 'img/star-on-big.png'
	});
 </script>
 
 
  <h4>2. Were the examples used in today's class helpful in conveying the day's lesson?</h4>
 <div class="rate"  style="float:right;">

 <div class="star1" style="width:150px !important;"></div>
  <script type="text/javascript">
	$('.star1').raty({ 
	scoreName: 'question2',
  	starOff: 'img/star-off-big.png',
  	starOn : 'img/star-on-big.png'
	});
 </script>
 
 
  <h4>3.  Were you treated fairly and respected by the teacher, in today's class? </h4>
   
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
  

 </div>
<br  /> 
  <?php include("footer.php"); ?>
 
 
 
 
 
 
 
 
 
 
 
 

 