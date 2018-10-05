<div class="container">
	
	<div class="box">
    <div class="row">
        <div class="col-md-10 offset-col-md-1">
        	<table class="table table-striped">
        		<thead>
        			<tr>
        				<th>Course</th>
        				<th>Date From</th>
        				<th>Date To</th>
        				<th>Fee ($)</th>
        				<th>Status</th>
        				<th>Location</th>
        				<th>URL</th>
        				<th>Edit</th>
        			</tr>
        		</thead>
        		<tbody>
        		<?php if($edu['cnt'] > 0)
        		    foreach($edu['classes'] as $row) {?>
        			<tr>
        				<td><?php echo $row['course']; ?></td>
        				<td><?php echo date("m-d-Y", $row['date_from']); ?></td>
        				<td><?php echo date("m-d-Y", $row['date_to']); ?></td>
        				<td><?php echo $row['fee']; ?></td>
        				<td><?php echo $row['status']; ?></td>
        				<td><?php echo $row['location']; ?></td>
        				<td><?php echo $row['details_url']; ?></td>
        				<td>
        					<a href="#" data-toggle="modal" data-target="#editData<?php echo $row['id']; ?>">Edit</a> 
        					<?php include 'inc_modal_edit.php'; ?>       				
        				</td>
        			</tr>
        			<?php }?>
        		</tbody>        	
        	</table>
        </div>    
    </div>
    
    <div class="row">
    	<div class="col-md-3 offset-col-md-4">
    		<br>
    		<a href="#" data-toggle="modal" data-target="#addClass" class="btn btn-primary" role="button">Add Class</a>
    		<?php include 'inc_modal_add.php'; ?>
    	</div>
    </div>
    </div>    
	<div class="row">
    	<div class="col-md-10">
    		<p><?php echo anchor('user', 'Edit Your Personal Info', 'class="btn btn"'); ?></p>
    	</div>
	</div>
    <div class="row">&nbsp;</div>
    <div class="row">&nbsp;</div>
</div>
<!-- Footer -->
