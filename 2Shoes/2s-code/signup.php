<?php

include('header-login.php'); ?>
<div data-role="content" class="ui-content" role="main">
<br />
  <div align="center" style="font-size: 20px;font-weight: bold;"> Administrator Signup! </div>
  <br />
	
    <form id="forms" method="post" action="signup2.php" data-ajax="false">
 	  
      <fieldset data-role="controlgroup" class="ui-corner-all ui-controlgroup ui-controlgroup-vertical">
      <input style="color:#999;" name="name" type="text" id="name"  value="Administrator Name" onClick="this.value=''">
      </fieldset>
	  
	  <fieldset data-role="controlgroup" class="ui-corner-all ui-controlgroup ui-controlgroup-vertical">
      <input style="color:#999;" name="email" type="text" id="email"  value="Administrator Email" onClick="this.value=''">
      </fieldset>
     	
	  <fieldset data-role="controlgroup" class="ui-corner-all ui-controlgroup ui-controlgroup-vertical">
      <input style="color:#999;" name="password" type="password" id="password"  value="Administrator Password" onClick="this.value=''">
      </fieldset>
		
	<div data-corners="true" data-shadow="true" data-iconshadow="true" data-wrapperels="span" data-icon="null" data-iconpos="null" data-theme="a" data-inline="false" data-mini="false" aria-disabled="false"><input type="hidden" name="signup" value="Register"><input type="submit" aria-disabled="false" class="ui-btn-hidden" data-theme="a" value="Register" name="signup"></div>
	</form>

  </div>

<?php  include('footer.php'); ?>
</div>


