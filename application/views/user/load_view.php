<div class="container text-center">
<br><br>
<hr />
<br><br>

<div class="row">
<div class="col-md-6 col-md-offset-3 heading">
<h3>Admin Features Available</h3>
</div>
</div>

<br>
<div class="row">
<div class="col-md-10 col-md-offset-1">

<ol class="breadcrumb">
  <li>
  	<?php 
  	if(is_numeric(strpos($user['profile_str'], "99"))) {
  	    echo anchor('master/user_management', 'User Management');
  	} 
    ?>
  </li>
  <li>
  	<?php 
  	if(is_numeric(strpos($user['profile_str'], "99"))) {
  	     echo anchor('master/user_types', 'User Types'); 
  	}
  	?>
  </li>
  <li>
      <?php 
      if((is_numeric(strpos($user['profile_str'], "99"))) || (is_numeric(strpos($user['profile_str'], "5")))) {
          echo anchor('club', 'Clubs');
      }
      ?>
  </li>
  <li>
      <?php 
      if((is_numeric(strpos($user['profile_str'], "99"))) || (is_numeric(strpos($user['profile_str'], "1")))) {
          echo anchor('edu', 'Classes');
      }
      ?>
  </li>
  <li>
      <?php 
      if(is_numeric(strpos($user['profile_str'], "99"))) {
          echo anchor('staff', 'Staff');
      }
      ?>
  </li>
  <li>
      <?php 
      if((is_numeric(strpos($user['profile_str'], "99"))) || (is_numeric(strpos($user['profile_str'], "3")))) {
          echo anchor('speaker', 'Speaker');
      }
      ?>
  </li>
  <li>
      <?php 
      if(is_numeric(strpos($user['profile_str'], "99"))) {
          echo anchor('master/set_user_profile', 'Set User Profile');
      }
      ?>
  </li>
</ol>
</div>
</div>

<div class="row">
<div class="col-md-8 col-md-offset-2">
<ol class="breadcrumb">
	<li><?php echo anchor('user', 'Edit Your Personal Info', 'class="btn btn"'); ?></li>
	<li><?php echo anchor('public_ctl/reset_password', 'Reset Your Password', 'class="btn btn"'); ?></li>
</ol>
</div>
</div>
<br>
<hr />
<br><br><br>
</div>
<!-- Footer -->
