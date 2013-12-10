<?php 
 @session_start();
@ob_start();
require('db/dbcon.php'); 
include('header3.php'); 

if(is_numeric($_GET['id']))
{
$modid=$_GET['id'];
}
else
{
$modid="0";
}

if(is_numeric($_GET['user']))
{
$userid=$_GET['user'];
}
else
{
$userid="0";
}

$sql="select * from class where teacher_id='".$userid."'";
$r=mysql_query($sql);
?>


<div data-role="content" class="ui-content" role="main">
<h3 style="text-align:center;">Welcome Admin Panel!</h3>
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

}
?>

</div>

</div> 

<br />
<div align="center" style="font-size: 20px;font-weight: bold;"> Event - <?php if(isset($_GET['class'])){echo $_GET['class'];} ?> </div>
<br />

<div class="dailyclasses outer2" style="padding:15px; width:480px;font-size: 14px;">

<div class="left">
<!-- Total Events against A class--->
<?php 
$sql2="select * from class_code where id_class='".$modid."'";
$rr=mysql_query($sql2); 
$count=1;
?>


<table width="100%" cellspacing="10" class="table">
<tr>
<th width="10%">Sr</th>
<th style="text-align:left;" width="20%">Event Code</th>
<th width="70%"><!--Date--></th>
<!--<th>Attendee</th>-->
</tr>
<?php while($rew=mysql_fetch_array($rr)){?>

<!-- Total Number Of Attendee--->
<?php 
$class=$rew['class_code'];
$sql3="select count(studenid) from counter where classcode='".$class."'";
//echo $sql3;
$rr3=mysql_query($sql3); 
$rew2=mysql_fetch_array($rr3);
$code=$rew['class_code'];
?>
<!-- Total Number Of Questions--->
<?php 
$class=$rew['class_code'];
$sql4="select count(question) from question where classcode='".$class."'";
$rr4=mysql_query($sql4); 
$rew4=mysql_fetch_array($rr4);
?>
<!-- Most Interatcive Post--->
<?php 
$class=$rew['class_code'];
$sql5="select * from question where classcode='".$class."'";
$rr5=mysql_query($sql5); 
$rew5=mysql_fetch_array($rr5);

?>

<tr style="border:1px solid #000;">
<td style="text-align:center;"><?php echo $count; ?></td>
<td style="text-align:left;"><?php echo $rew['class_code']; ?></td>
<td style="text-align:left;">

<table>
<tr>
<td>Date</td><td><?php echo date('F d, Y ', strtotime($rew['class_datetime']));?></td>
</tr>
<tr>
<td>No Of Attendee</td><td><?php echo $rew2['count(studenid)']; ?></td>
</tr>
<tr>
<td>No Of Question</td><td><?php echo $rew4['count(question)'];  ?>  &nbsp;&nbsp;<a href="classquestions.php?code=<?php echo $rew['class_code']; ?>">View Question</a></td>
</tr>
<tr>
<td>Most Interactive Post </td><td><?php echo $rew5['question']; ?> </td>
</tr>
<tr>
<td>Votes </td><td><?php echo $rew5['rating']; ?> </td>
</tr>
</table>

</td>
</tr>
<!--<tr>
<td style="text-align:center;"><?php //echo $count; ?></td>
<td style="text-align:center;"><a href="classquestions.php?code=<?php //echo $rew['class_code']; ?>"><?php //echo $rew['class_code']; ?></a></td>
<td style="text-align:center;"><?php // echo $rew['class_datetime']; ?>
<?php //echo date('F d, Y ', strtotime($rew['class_datetime']));?>
</td>
<td style="text-align:center;"><?php //echo $rew2['count(studenid)']; ?></td>
</tr>-->
<?php $count++;} ?>
</table>


<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          [ 'Events','Question1', 'Question2','Question3'],
		<?php
		
		if(is_numeric($_GET['id']))
		{
		$idss=$_GET['id'];
		}
		else
		{
		$idss=0;
		}
		
		$classid=$idss;
		$count=0;
		$qt1=0;
		$qt2=0;
		$qt3=0;
			$sql=mysql_query("SELECT * FROM class where id=".$classid);
			$class=mysql_fetch_array($sql);
			
			$sql2=mysql_query("select * from class_code where id_class=".$class['id']);	
		
		   while( $row=mysql_fetch_array($sql2)){
			 $count+=1;
		$feedback=mysql_query("select sum(question1) as t1, sum(question2) as t2, sum(question3) as t3 from feedback where classcode='".$row['class_code']."'");
		$f=mysql_fetch_array($feedback);
		if($f['t1']>0){
		$qt1=$f['t1'];
		}
		if($f['t2']>0){
		$qt2=$f['t2'];
		}
		if($f['t3']>0){
		$qt3=$f['t3'];
		}
		
		?>         
		 ['<?php echo $row['class_code'];?>',<?php echo $qt1; ?>,    <?php echo $qt2; ?> , <?php echo $qt3; ?>]<?php if($count<mysql_num_rows($sql2)){echo ",";}?>
		

		<?php }?>
	      
  		]);
        var options = {
          title: 'Short Code And Feed Back Against Questions'
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
<br  />
<div id="chart_div"></div>
</div>
<br  />
<!--<div id="chart_div"></div>-->

</div>



</div>









<?php include('footer.php'); ?>