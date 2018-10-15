<div class="container">
<div class="row">&nbsp;</div>
<div class="row text-center">
	<div class="col-md-4 col-md-offset-4">
	<?php 
            if($private) {
                $dir = 'files/do_private_upload/';
       ?>
       <h3>Files Upload/Download</h3>
    <?php       
            } 
           else {
            $dir = 'files/do_public_upload/';?>
    <?php     
           }
           echo form_open_multipart($dir, array('class' => 'form-control'));
    ?>
	
	<p class="text-center"><?php echo $error . '<br><br>';?>
	</div>
</div>
	<div class="row text-center">
	<div class="col-md-4 col-md-offset-4">
    <p class="text-center">
    
    <input type="file" name="userfile" />
    
    <br /><br />
    
    <input type="submit" value=" Upload File" class="form-control" />
    <?php  
           ?>
    </form></p>
    </div>
    </div>

<div class="row text-center">
<div class="col-md-4 col-md-offset-4">
<h3>Files to Download</h3>
<?php 
for($i=2; $i < count($files); $i++) {
    echo anchor('files/download_file/' . $i, $files[$i]) . '<br>-------------------------------<br>';
    
}

?>
</div>
</div>
<div class="row">&nbsp;</div>
</div>