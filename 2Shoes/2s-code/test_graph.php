<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
 <script type="text/javascript" src="https://www.google.com/jsapi"></script>
 								
								<script type="text/javascript">
								  google.load("visualization", "1", {packages:["corechart"]});
								  google.setOnLoadCallback(drawChart);
								  function drawChart() {
									var data = google.visualization.arrayToDataTable([
									['Events','Question1','Question2','Question3'],
									['786786A October 31 2013',44,53,35],
									['786786A October 31 2013',40,23,31],
									['786786A October 31 2013',14,23,15]
									]);
									var options = {title: 'Short Code And Feed Back Against Questions'};
									var chart = new google.visualization.LineChart(document.getElementById('chart_div1'));
									chart.draw(data, options);
								  }
								</script>
									  
									  <br  />
							<div id="chart_div1"></div> 
	 
</body>
</html>
