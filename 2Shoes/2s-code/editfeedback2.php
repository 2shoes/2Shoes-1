<?php 
 @session_start();
@ob_start();
require('db/dbcon.php');


if($_POST['submit']=="Submit")
{
$classid=$_POST['id_class'];
/*echo "<pre>";
print_r($classid);
echo "</pre>";*/
 $question1=$_POST['question1'];
  $question2=$_POST['question2'];
  $question3=$_POST['question3'];
//$approve = $_POST['approve'];		// Trim Extra Spaces coming from site divs and avoid sql injection
$sql="insert into editfeed (question1,question2,question3) Values('$question1','$question2','$question3')";    
mysql_query($sql);
$id_feedback=mysql_insert_id();

for($i=0;$i<count($classid);$i++)
{
 
  //$approve2 = $approve[$i];
  $classid2=$classid[$i];  
	mysql_query("update class set feedback_id=".$id_feedback." where id=".$classid2);

}     // end for loop

header("location:editfeed.php?msg=success");
}

?>




















