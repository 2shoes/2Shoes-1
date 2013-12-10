<?php 
 @session_start();
@ob_start();
include('header3.php'); 
require('db/dbcon.php');

?>
<style>
table, td, th
{

}
td
{
height:50px;
vertical-align:bottom;
}
</style>
<script type="text/javascript">

    function do_this(){

        var checkboxes = document.getElementsByName('id_class[]');
        var button = document.getElementById('toggle');

        if(button.value == 'select'){
            for (var i in checkboxes){
                checkboxes[i].checked = 'FALSE';
            }
            button.value = 'deselect'
        }else{
            for (var i in checkboxes){
                checkboxes[i].checked = '';
            }
            button.value = 'select';
        }
    }
</script>
<div class="main">



<h3 style="text-align:center;">Welcome Admin Panel!</h3>

<h5 style="text-align:center;">Edit Feed Back Questions</h5>

<div class="msg" style="text-align:center;"><?php if($_GET['msg']=="success"){ echo '<font color="green">Edit Feed back Success</font>';} ?></div>
<div style="margin:0 auto; width:400px;">
<form name="" action="editfeedback2.php" method="post">
<table>

<tr>
<td>Question 1:</td>
<td><input type="text" name="question1" style="width:285px;"  /></td>
</tr>

<tr>
<td>Question 2:</td>
<td><input type="text" name="question2" style="width:285px;"  /></td>
</tr>

<tr>
<td>Question 3:</td>
<td><input type="text" name="question3" style="width:285px;"  /></td>
</tr>
</table>
<br />
<table>
<tr>
<h3 style="text-align:center;">Apply To</h3>
<div style="margin:0 auto; width:400px;">
</tr>
<tr>
<th width="10%"><input type="checkbox" id="toggle" value="select" onClick="do_this()" /></th>
<th style="text-align:left;" width="20%">Class Name</th>
<th style="text-align:left;" width="30%">Teacher Name</th>
</tr>

<?php
/*$sql="select * from class_code";
$res=mysql_query($sql);

$count=2;
while($row=mysql_fetch_array($res))
{
$classcode= $row["classcode"];
$idclass=$row["id_class"];
$sql2="select * from class where id=".$idclass;
$res2=mysql_query($sql2);

while($row2=mysql_fetch_array($res2))
{*/
//$sql="SELECT * FROM `class` inner join class_code on class.id=class_code.id_class GROUP BY(classtitle) ORDER BY class_code.id DESC";
//$sql="SELECT * FROM `class` inner join class_code on class.id=class_code.id_class ";
$sql="SELECT * FROM `class` ORDER BY id DESC";
$res=mysql_query($sql);

$count=2;
while($row=mysql_fetch_array($res))
{
$teacherid= $row['teacher_id']; 

$q=mysql_query("select * from teacher where id=".$teacherid);
if(mysql_num_rows($q)>0)
{
$r=mysql_fetch_array($q);

?>
<tr>
<td><input type="checkbox" name="id_class[]" value="<?php echo $row['id']; ?>" /></td>
<td><?php echo $row['classtitle']; ?> <!--<input type="hidden" name="id_class[]" value="<?php echo $row['id_class']; ?>" />--></td>
<td><a style="text-transform:capitalize;" href="usermodule.php?user=<?php echo $r['id'];  ?>"><?php echo $r['name']; ?></a></td>
</tr>

<?php
}
$count++;
}
?>

</table>
<input type="submit" name="submit" value="Submit"  />
</form>
</div>









</div>

<?php include('footer.php'); ?>
