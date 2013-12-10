<?php 
 @session_start();
@ob_start();
include('header-login.php'); 
?>

<div data-role="content" class="ui-content" role="main">
  <div align="center" style="font-size: 20px;font-weight: bold;"> Administrator Login Area </div>
  <div data-role="content" class="ui-content" role="main">
  
  <?php
if(isset($_GET['error']) && $_GET['error'] == 1)
{?>
<span style='color:red'>&middot;</span>&nbsp;Invalid Username/Password, Please try again!
<?php } ?>

  <?php if(isset($_SESSION['msg'])){echo $_SESSION['msg'];} ?>
    <form id="forms" method="post" action="login.php" data-ajax="false">
      <fieldset data-role="controlgroup" class="ui-corner-all ui-controlgroup ui-controlgroup-vertical">
      <input style="color:#999;"  name="username" type="text" id="username" value="Username/Email" onClick="this.value=''">
     
      </fieldset>
      <fieldset data-role="controlgroup" class="ui-corner-all ui-controlgroup ui-controlgroup-vertical">
      <input style="color:#999;" name="password" type="password" id="password"  value="Password" onClick="this.value=''">
  
      </fieldset>
      <fieldset data-role="controlgroup" class="ui-corner-all ui-controlgroup ui-controlgroup-vertical">
      <div class="QapTcha">
        <div class="bgSlider">
          <div class="Slider ui-draggable"></div>
        </div>
        <div class="clr"></div>
       
      </div>
      </fieldset>

	
	<div data-corners="true" data-shadow="true" data-iconshadow="true" data-wrapperels="span" data-icon="null" data-iconpos="null" data-theme="a" data-inline="false" data-mini="false" aria-disabled="false">
	<input type="hidden" name="login" value="Login">
	<input type="submit" aria-disabled="false" class="ui-btn-hidden" data-theme="a" name="login" value="Login">
	</div>
	</form><br />
	<hr /><br />
<div data-corners="true" data-shadow="true" data-iconshadow="true" data-wrapperels="span" data-icon="null" data-iconpos="null" data-theme="a" data-inline="false" data-mini="false">
	<input type="hidden" name="signup" value="Signup">
	<input type="submit" aria-disabled="false" class="ui-btn-hidden" data-theme="a" value="Signup" name="signup" onclick="window.location='signup.php'">
	</div>
  </div>
  <!-- /content -->
 <!-- <div data-role="footer" class="ui-bar ui-footer ui-bar-a" data-theme="a" role="contentinfo"> </div>-->
  <!-- /footer -->
</div>
<!-- /page -->


<?php include('footer.php'); ?>