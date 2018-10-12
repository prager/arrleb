<div class="container">
<div class="row">&nbsp;</div>
<div class="row text-center">
	<div class="col-md-6 col-md-offset-3">
	<h3>Files Upload/Download</h3>
	<p class="text-center"><?php echo $error;?>
	</div>
</div>
	<div class="row text-center">
	<div class="col-md-4 col-md-offset-4">
    <p class="text-center"><?php 
        if($private) {
            $dir = 'files/do_private_upload/';
        }
        else {
            $dir = 'files/do_public_upload/';
        }
        echo form_open_multipart($dir, array('class' => 'form-control'));
    ?>
    
    <input type="file" name="userfile" size="20" />
    
    <br /><br />
    
    <input type="submit" value=" Upload File" />
    
    </form></p>
    </div>
    </div>
<div class="row">&nbsp;</div>
<div class="row">&nbsp;</div>
<div class="row">&nbsp;</div>

<div class="row text-center">
<div class="col-md-4 col-md-offset-4">
<?php 
for($i=2; $i < count($files); $i++) {
    echo '<br>' . $files[$i];
    
}

?>
</div>
</div>
<div class="row">&nbsp;</div>
<div class="row">&nbsp;</div>
<div class="row">&nbsp;</div>
</div>