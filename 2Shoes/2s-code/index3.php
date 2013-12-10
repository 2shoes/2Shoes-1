  
	 <script type="text/javascript" src="https://www.google.com/jsapi"></script>
 <?php
$con=mysql_connect("localhost","root","root");
mysql_select_db("uniapp",$con);
$class=BSCS;
$sql=mysql_query("SELECT * FROM class where classtitle='".$class."'");

			while($class=mysql_fetch_array($sql))
			{
					$id=$class['id'];
					$classtitle=$class['classtitle'];
					$teacher=$class['teacher_id'];
					$feedback=$class['feedback_id'];
					
					$sql2=mysql_query("select * from class_code where id_class=".$id);
					$count=1;
				while($row=mysql_fetch_array($sql2))
				{
						$classdate = date('F d, Y ', strtotime($row['class_datetime']));
						$classcode=$row['class_code'];
						$id_class=$row['id_class'];
						$teacher_id=$row['teacher_id'];
						
						//$feedback=mysql_query("select avg(question1) as t1, avg(question2) as t2, avg(question3) as t3 from feedback where classcode='".$row['class_code']."'");
						$feedback=mysql_query("select avg(question1) as t1, avg(question2) as t2, avg(question3) as t3 from feedback where classcode='".$row['class_code']."'");
					
						$r=mysql_fetch_array($feedback);
			
			
							   $classcodes   = $classcode;	
							   $t1= round($r['t1']);
							   $t2= round($r['t2']);
							   $t3= round($r['t3']);						// Trim Extra Spaces coming from site divs and avoid sql injectio
							   echo $classcodes;
								echo "<br />";
							   echo $t1;
								echo "<br />";
							   echo $t2;
							   echo "<br />";
							   echo $t3;
								echo "<br />";
								 echo "<br />";
								 
								 ?>
								
								<script type="text/javascript">
								  google.load("visualization", "1", {packages:["corechart"]});
								  google.setOnLoadCallback(drawChart);
								  function drawChart() {
									var data = google.visualization.arrayToDataTable([
									  [ 'Events','Question1', 'Question2','Question3'],
									  
									  ['<?php echo $classcodes;?>,<?php echo $classdate;?>',<?php echo $t1; ?>,    <?php echo $t2; ?> , <?php echo $t3; ?>]
									
									 
									 ]);
									var options = {
									  title: 'Short Code And Feed Back Against Questions'
									};
							
									var chart = new google.visualization.LineChart(document.getElementById('chart_div<? echo $count;?>'));
									chart.draw(data, options);
								  }
								</script>
									  
									  <br  />
							<div id="chart_div<? echo $count;?>"></div> 
	 
	 
   <?php 

   
		
		
			$count+=1;
			}
				
			}
			
			?>

			