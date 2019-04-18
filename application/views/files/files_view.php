<div class="container">
<div class="row">&nbsp;</div>
	  <?php 
         $dir1 = 'files/do_private_upload/';
         $dir2 = 'files/do_public_upload/';
         if($private) {
       ?>
<div class="row text-center">
	<div class="col-md-4 col-md-offset-4">
	
       <h3>Private Files Upload / Download</h3>
       <p class="text-center"><?php echo $error['error'] ;?></p>
    <?php       
             
        echo form_open_multipart($dir1, array('class' => 'form-control'));
    ?>
    <p class="text-center">
    
    <input type="file" name="userfile" />
    
    <br />
       <a href="#" data-toggle="modal" data-target="#saveFile">Add Description or (optional) Directory</a>
       <?php include 'inc_save_file.php'; ?>
    
    <input type="submit" value=" Upload File" class="form-control" />
    <?php echo form_close(); ?>
	
	</div>
</div>
<div class="row text-center">&nbsp;</div>
<div class="row text-center">&nbsp;</div>
<div class="row text-center">&nbsp;</div>
<div class="row text-center">&nbsp;</div>
<div class="row text-center">&nbsp;</div>
<div class="row text-center">
<div class="col-md-4 col-md-offset-4">
<?php 
for($i=2; $i < count($files_private); $i++) {
        $url_str = base_url() . 'index.php/files/download_file/' . $i . '/1';
        ?>
        <a href="<?php echo $url_str; ?>"><?php echo $files_private[$i]; ?></a>
        &nbsp;/&nbsp;
        <a href="#" data-toggle="modal" data-target="#deleteFilePrivate<?php echo $i; ?>">Delete File</a>
        <br>------------------------------------<br>
        <?php include 'inc_delete_file_private.php'; ?>
	<?php }	
	if((count($files_private)) == 2) {
	    echo 'There are no files in repository.';
	}
	?>
</div>
</div>

<?php }?>
<div class="row">&nbsp;</div>
<div class="row text-center">
<div class="col-md-4 col-md-offset-4">
<h3>Public Files Repository</h3>
</div></div>
<div class="row">
<div class="col-md-5 col-md-offset-5">
<?php 
echo 'Current directory:<br>' . $home_dir . '<br>';
foreach($dirs as $dir) {
    $strdir = str_replace('/', '~', $home_dir);
    $strdir = substr($strdir, 1, strlen($strdir)-1);
    echo anchor('files/get_dir/'. $strdir . $dir, $dir) . '<br>';    
}

foreach($files_public as $file) {
    $strdir = str_replace('/', '~', $home_dir);
    echo anchor('files/download_pub/' . $strdir . $file, $file) . '<br>';
}

if((count($dirs) == 0) && (count($files_public) == 0)) {
    echo '<br><br>There are no files in the selected directory ';
}
?>
</div>
<?php 
if($private) {
?>

	<div class="row text-center">
	<div class="col-md-4 col-md-offset-4">
	<?php 
         echo form_open_multipart($dir2, array('class' => 'form-control')); 
    ?>
        <p class="text-center">
        
        <input type="file" name="userfile" />
        
        <br /><br />
        
        <input type="submit" value=" Upload File" class="form-control" />
	<?php echo form_close(); 
        }
        else {?>
        <div class="row">&nbsp;</div>
    <div class="row">&nbsp;</div>
    <div class="row">&nbsp;</div>
    <div class="row">&nbsp;</div>
        <?php } ?>
    </div>
    </div>
    <div class="row">&nbsp;</div>
    <div class="row">&nbsp;</div>
    <div class="row">&nbsp;</div>
    <div class="row">&nbsp;</div>
<div class="row">&nbsp;</div>
</div>