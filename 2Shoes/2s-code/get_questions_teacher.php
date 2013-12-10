<?php 
@session_start();
include("db/dbcon.php");
$code=$_SESSION['classcode'];
$q2="SELECT * from question where classcode='".$code."' order by rating DESC";
$rs=mysql_query($q2);
$count=1;
?>

<table width="100%">
<tr>
<th width="5%">Sr</th>
<th width="58%">Question(s)</th>
<th width="37%">Action</th>
</tr>
<?php
if(mysql_num_rows($rs)>0){  
 while($row=mysql_fetch_array($rs)){ ?>

<tr>
<td style="text-align:center;"><?php echo $count; ?></td>
<td style="text-align:center;">
<h5><?php //echo $row['question']; 
$text=stripslashes($row['question']);
 $text = strip_tags($text,"<b><i><u>");
 $text = preg_replace("/(?<!http:\/\/)www\./","http://www.",$text);
 $text = preg_replace( "/((http|ftp)+(s)?:\/\/[^<>\s]+)/i", "<a href=\"\\0\" target=\"_blank\">\\0</a>",$text);
echo $text;
?></h5>
</td>
<td style="text-align:center;">
<?
if($row['status']=="Posted"){
?>
<a title="Delete" href="delete2.php?id=<?php echo $row['id']; ?>&code=<?php echo $code; ?>"><img src="themes/images/del.png" alt="Delete" title="Delete"/></a>
<?
}else{
?>
<a title="Post" href="allow.php?id=<?php echo $row['id']; ?>&code=<?php echo $code; ?>"><img src="themes/images/allow.png" alt="Post" title="Post"/></a>
<?
}
?>
</td>
</tr>

<?php 
$count++;}
} 
else
{
echo "<tr><td></td><td>No Question(s) Asked Yet.</td><td></td></tr>";
}

?>
</table>
