<div class="container">
	
	<div class="box">
    <div class="row">
        <div class="col-md-12">
        	<table class="table table-striped table-responsive">
        		<thead>
        			<tr>
        				<th>Position</th>
        				<th>Name</th>
        				<th>Callsign</th>
        				<th>Select User</th>
        				<th>Edit / Delete</th>
        			</tr>
        		</thead>
        		<tbody>
		        <?php echo form_open('staff/edit_staff/'); ?>
        		<?php foreach($positions as $row) {?>
        			<tr>
        				<td><?php echo $row['pos_name']; ?></td>
        				<td><?php echo $row['fname'] . ' ' . $row['lname']; ?></td>
        				<td><?php echo $row['callsign']; ?></td>
        				<td><?php echo form_dropdown('user', $users, $row['id_user'], 'class="form-control"');?></td>
        				<td>
        					<a href="#" data-toggle="modal" data-target="#editData<?php echo $row['id_user']; ?>">Edit Position</a> 
        					/    
        					<a href="#" data-toggle="modal" data-target="#deleteClass<?php echo $row['id_user']; ?>">Delete Position</a>
        					<?php include 'inc_delete_class.php'; ?>
        					<?php include 'inc_modal_edit.php'; ?>     				
        				</td>
        			</tr>
        			<?php }?>
        		</tbody>        	
        	</table>
        </div>    
    </div>
    
	<?php echo form_close(); ?>
    <div class="row">
    	<div class="col-md-10 col-md-offset-1">
    		<br>
    		<a href="#" data-toggle="modal" data-target="#addClass" class="btn btn-primary" role="button">Add Staff Position</a>
    		<?php include 'inc_modal_add.php'; ?>
    	</div>
    </div>
    </div>    
	<div class="row">
    	<div class="col-md-10">
    		<p><?php echo anchor('user', 'Edit Your Personal Info', 'class="btn btn"'); ?></p>
    	</div>
	</div>  
	<div class="row">
    	<div class="col-md-10">
    		<p><?php echo anchor('public_ctl/reset_password', 'Reset Your Password', 'class="btn btn"'); ?></p>
    	</div>
	</div>
    <div class="row">&nbsp;</div>
    <div class="row">&nbsp;</div>
</div>
<!-- Footer -->
