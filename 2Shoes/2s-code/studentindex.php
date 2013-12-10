<?php include('header-login.php'); ?>

<div data-role="content" class="ui-content" role="main">
  <div align="center" style="font-size: 20px;font-weight: bold;"> Attendee Login </div>
  <div data-role="content" class="ui-content" role="main">
  
  <?php
if(isset($_GET['error']) && $_GET['error'] == 1)
{?>
<span style='color:red'>&middot;</span>&nbsp;Invalid Module Code/You ARe Not Allowed!
<?php } ?>

  
    <form id="forms" method="post" action="studentlogin.php" data-ajax="false">
      <fieldset data-role="controlgroup" class="ui-corner-all ui-controlgroup ui-controlgroup-vertical">
      <input style="color:#999;"  name="classcode" type="text" id="login" value="Enter The Event Code" onClick="this.value=''">
      </fieldset>
    
	  <fieldset data-role="controlgroup" class="ui-corner-all ui-controlgroup ui-controlgroup-vertical">
	  </fieldset>
  
    <div data-corners="true" data-shadow="true" class=" ui-fullsize ui-btn-block" ><input type="submit" name="login" value="Enter Event">
    </div>
	
	</form>

  </div>
  <!-- /content -->
 <!-- <div data-role="footer" class="ui-bar ui-footer ui-bar-a" data-theme="a" role="contentinfo"> </div>-->
  <!-- /footer -->
</div>
<!-- /page -->


<?php include('footer.php'); ?>