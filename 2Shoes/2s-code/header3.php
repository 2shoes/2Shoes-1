<?php
require('db/dbcon.php');
if(!isset($_SESSION['uid'])){
header('Location:index.php');
//$id_member = $_SESSION['idm'];
}
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>2Shoes |Home</title>
<link rel="stylesheet" href="themes/custom.css" />
<link rel="stylesheet" href="themes/saneman.min.css" />
<link rel="stylesheet" href="themes/jquerymobile.css" />
<script type="text/javascript">

</script>
</head>
<body>
<div data-role="page" style="background-image: url(http://assets.codiqa.com/ps/14245/5c80f3df2b8bac0dheader-2.png); background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; background-position: initial initial; background-repeat: repeat repeat;">
<div data-role="header" data-theme="a"> <a title="Home" data-theme="a" data-wrapperels="span" data-iconshadow="true" data-shadow="true" data-corners="true" 
class="ui-btn-left ui-btn ui-shadow ui-btn-corner-all ui-btn-icon-notext ui-btn-up-a" href="superadmin.php" data-icon="home" data-iconpos="notext" data-direction="reverse"><span class="ui-btn-inner ui-btn-corner-all"><span class="ui-btn-text">Home</span><span class="ui-icon ui-icon-home ui-icon-shadow">&nbsp;</span></span></a></a>
  <h1> 2Shoes!</h1>


 <a href="logout.php" style="background:none; border:none;padding: 0px;height: 21px;">
 <img src="themes/images/bg_draggable_qaptcha.png" height="30" width="30" alt="" /></a>
</div>

  <?php 
$id= $_SESSION['uid'];

$sql="select * from teacher where id=".$id;
$r=mysql_query($sql);
$row=mysql_fetch_array($r);
?>
<div style="margin:0 auto; width:200px;">
<h2 style="text-align:center; color:#FF0000;margin-bottom: 0px;font-size: 1.2em;text-transform:capitalize;"> <?php echo " Hello " . $row['name'] ;?> </h2>
</div>



<!-- /header -->