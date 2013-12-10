<?php 
 @session_start();
@ob_start();
require('db/dbcon.php'); 
include('header3.php'); 
$code=$_GET['code'];
/*if(is_numeric($_GET['code']))
{
$code=$_GET['code'];
}
else
{
$code="0";
}*/
?>

<!--<script type="text/javascript" src="https://www.google.com/jsapi"></script>-->
    <!--<script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          [ 'Events','Question1', 'Question2','Question3'],
		<?php
		/*$classid=25;
		$count=0;
			$sql=mysql_query("SELECT * FROM class where id=".$classid);
			$class=mysql_fetch_array($sql);
			
			$sql2=mysql_query("select * from class_code where id_class=".$class['id']);	
		
		   while( $row=mysql_fetch_array($sql2)){
			 $count+=1;
		$feedback=mysql_query("select sum(question1) as t1, sum(question2) as t2, sum(question3) as t3 from feedback where classcode='".$row['class_code']."'");
		$f=mysql_fetch_array($feedback);*/
		?>         
		 ['<?php //echo $row['class_code'];?>',<?php //echo $f['t1']; ?>,    <?php //echo $f['t2']; ?> , <?php //echo $f['t3']; ?>]<?php //if($count<mysql_num_rows($sql2)){echo ",";}?>
		

		<?php //}?>
	      
  		]);
        var options = {
          title: 'Short Code And Feed Back Against Questions'
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>-->


<div data-role="content" class="ui-content" role="main">
<h3 style="text-align:center;">Welcome Admin Panel!</h3>
 <br  />
<div align="center" style="font-size: 20px;font-weight: bold;"> Events Code - <?php if(isset($_GET['code'])){echo $_GET['code'];} ?> </div>
<br />
<?php
/*$sqll="select * from question where classcode='". $code ."' order by rating DESC";
$rr=mysql_query($sqll);
$rrr=mysql_fetch_array($rr);*/
?>
<!--<div align="center" style="font-size: 13px;font-weight: normal;"><b>Most Interactive Post</b> <br /> <?php //echo $rrr['question']; ?> </div>-->
<!--<br />
<div align="center" style="font-size: 13px;font-weight: normal;"><b>Ratings</b>- -  <?php //echo $rrr['rating']; ?></div>-->
<br />
<div class="outer2">
<div class="left">
<?php 
$sql2="select * from question where classcode='".$code."' order by rating DESC";
$rr=mysql_query($sql2);
$count=1;
?>
<table width="100%">
<tr>
<th width="10%">Sr</th>
<th style="text-align:left;" width="40%">Questions</th>
<!--<th style="text-align:center;">Delete</th>-->
</tr>

<?php
if(mysql_num_rows($rr)>0){ 
while($row=mysql_fetch_array($rr)){
?>
<tr>
<td style="text-align:center;"><!--<img src="themes/images/right.png" alt="" height="20" border="0" />--><?php echo $count; ?></td>
<td style="text-align:left;">
<h5><?php echo $row['question']; ?></h5>
</td>
<!--<td style="text-align:center;"><a class="buitton3" href="delete.php?id=<?php// echo $row['id']; ?>&code=<?php //echo $code; ?>">Delete</a></td>-->
</tr>


<?php $count++;}} 
else
{
echo '<tr><td></td><td><div class="outer23">
No Question(s) Asked Yet.</div></td><td></td></tr>';
}

?>
</table>
</div>

<div id="chart_div"></div>

</div>

</div>

<?php include('footer.php'); ?>