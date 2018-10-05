<!-- Edit Class Modal -->
		  <div class="modal fade" id="editData<?php echo $row['id']; ?>" role="dialog">
		    <div class="modal-dialog modal-lg">
		
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">×</button>
		          <h4><span class="glyphicon glyphicon-pencil"></span>Edit User</h4>
		        </div>
		        <div class="modal-body">
		        <?php echo form_open('edu/edit_class/' .  $row['id']); ?>
		            <div class="form-group">
		            <div class="row">
			            <div class="col-md-12">
			            <?php $data = array(
							'name'          => 'course',
							'id'            => 'fname',
			            		'value'         =>  $row['course'],
			            	'placeholder' => 'Course',
			                'class'			=> 'form-control',
							'maxlength'     => '75');?>
						Course
						<?php echo form_input($data);?>
						</div>						
					</div>
					<div class="row">&nbsp;</div>
					<div class="row">
						<div class="col-md-6">
						<?php $data = array(
							'name'          => 'date_from',
							'id'            => 'date_from',
			            		'value'         =>  $row['date_from'],
			            	'placeholder' => 'From',
			                'class'			=> 'form-control',
							'maxlength'     => '35');?>
						Date From
						<?php echo form_input($data);?>
						</div>
						<div class="col-md-6">
						<?php $data = array(
							'name'          => 'date_to',
							'id'            => 'date_to',
			            		'value'         =>  $row['date_to'],
			            	'placeholder' => 'To',
			                'class'			=> 'form-control',
							'maxlength'     => '35');?>
						Date To
						<?php echo form_input($data);?>
						</div>	
					</div>
					<div class="row">&nbsp;</div>
					<div class="row">
						<div class="col-md-6">
						<?php $data = array(
							'name'          => 'fee',
							'id'            => 'fee',
			            		'value'         =>  '$' . $row['fee'],
			            	'placeholder' => 'Fee',
			                'class'			=> 'form-control',
							'maxlength'     => '35');?>
						Fee
						<?php echo form_input($data);?>
						</div>
						<div class="col-md-6">
						<?php $data = array(
							'name'          => 'status',
							'id'            => 'status',
			            		'value'         =>  $row['status'],
			            	'placeholder' => 'status',
			                'class'			=> 'form-control',
							'maxlength'     => '35');?>
						Status
						<?php echo form_input($data);?>
						</div>
					</div>
					<div class="row">&nbsp;</div>
					<div class="row">
						<div class="col-md-10">
						<?php $data = array(
							'name'          => 'location',
							'id'            => 'location',
			            		'value'         =>  $row['location'],
			            	'placeholder' => 'status',
			                'class'			=> 'form-control',
							'maxlength'     => '75');?>
						Location
						<?php echo form_input($data);?>
						</div>
					</div>
					<div class="row">&nbsp;</div>
					<div class="row">
						<div class="col-md-10">
						<?php $data = array(
							'name'          => 'details_url',
							'id'            => 'details_url',
			            		'value'         =>  $row['details_url'],
			            	'placeholder' => 'status',
			                'class'			=> 'form-control',
							'maxlength'     => '75');?>
						URL
						<?php echo form_input($data);?>
						</div>
					</div>
					<div class="row">&nbsp;</div>
					<div class="row">&nbsp;</div>
					<div class="row">
					<div class="col-md-4">&nbsp;</div>
						<div class="col-md-4">
			          	<?php echo form_submit('submit', 'Submit Changes', 'class="btn btn-block"'); ?>
			          	</div>
		          	</div>
		          	<div class="row">&nbsp;</div>
		        <div class="modal-footer">
		         <p><a href="#" data-dismiss="modal">Cancel</a></p>
		      <?php echo form_close(); ?>
		        </div>
		       </div>
		      </div>
		    </div> 
		    </div>
		    </div>
