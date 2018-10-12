<div class="container text-center">
<br><br>
<hr />
<br><br><br>
<div class="row">
<div class="col-md-1 offset-col-md-3">&nbsp;</div>
<div class="col-md-8">
<p style="text-align: center;"><?php echo anchor('master/user_management', 'User Management'); ?></p>
</div>
</div><br>
<div class="row">
<div class="col-md-1 offset-col-md-3">&nbsp;</div>
<div class="col-md-8">
<p style="text-align: center;"><?php echo anchor('master/user_types', 'User Types'); ?></p>
</div>
</div><br>
<div class="row">
<div class="col-md-1 offset-col-md-3">&nbsp;</div>
<div class="col-md-8">
<p style="text-align: center;"><?php echo anchor('user', 'Edit Account Info'); ?></p>
</div>
</div><br>
<div class="row">
<div class="col-md-1 offset-col-md-3">&nbsp;</div>
<div class="col-md-8">
<p style="text-align: center;"><?php echo anchor('edu', 'Classes'); ?></p>
</div>
</div>
<div class="row">

<div class="col-md-4 col-md-offset-3">
    <p><?php 
        echo form_open_multipart('files/do_private_upload', array('class' => 'form-control'));
    ?>
    
    <input type="file" name="userfile" size="10" />
    
    <br /><br />
    
    <input type="submit" value=" Upload Private File" />
    
    </form></p>
    </div>

</div>
<br><br><br>
<hr />
<br><br><br>
</div>
<!-- Footer -->
