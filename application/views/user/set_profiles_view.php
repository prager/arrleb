<div class="container">
	
	<div class="box">
    <div class="row">
        <div class="col-md-12">
        	<table class="table table-striped table-responsive">
        		<thead>
        			<tr>
        				<th>First Name</th>
        				<th>Last Name</th>
        				<th>Call Sign</th>
        				<th>Set Profile</th>
        			</tr>
        		</thead>
        		<tbody>
        		    <?php foreach($users as $row) {?>
        			<tr>
        				<td><?php echo $row['fname']; ?></td>
        				<td><?php echo $row['lname']; ?></td>
        				<td><?php echo $row['callsign']; ?></td>
        				<td>
        					<a href="#" data-toggle="modal" data-target="#setProfile<?php echo $row['id_user']; ?>">Set Profile</a> 
        					<?php include 'inc_set_profile_modal.php'; ?>
        				</td>
        			</tr>
        			<?php }?>
        		</tbody>        	
        	</table>
        </div>    
    </div>
    </div>
    <div class="row">&nbsp;</div>
    <div class="row">&nbsp;</div>
</div>
<!-- Footer -->
