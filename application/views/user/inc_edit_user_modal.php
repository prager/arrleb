<div class="modal fade" id="editData<?php echo $i; ?>" role="dialog">
		    <div class="modal-dialog modal-lg">
		
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">×</button>
		          <h4><span class="glyphicon glyphicon-pencil"></span>Edit User</h4>
		        </div>
		        <div class="modal-body">
		        <?php echo form_open('master/update_user/' .  $users[$i]['id_user']); ?>
		            <div class="form-group">
		            <div class="row">
			            <div class="col-md-5">
			            <?php $data = array(
							'name'          => 'fname',
							'id'            => 'fname',
			            		'value'         =>  $users[$i]['fname'],
			            	'placeholder' => 'First Name',
			                'class'			=> 'form-control',
							'maxlength'     => '75');?>
						First Name
						<?php echo form_input($data);?>
						</div>
						<div class="col-md-1">&nbsp;</div>
			            <div class="col-md-5">
			            <?php $data = array(
							'name'          => 'lname',
							'id'            => 'lname',
			            	'value'     =>  $users[$i]['lname'],
			            	'placeholder' => 'Last Name',
			                'class'			=> 'form-control',
							'maxlength'     => '75');?>
						Last Name
						<?php echo form_input($data);?>
						</div>
					</div>
					<div class="row">&nbsp;</div>
					<div class="row">
						<div class="col-md-3">
						<?php $data = array(
							'name'          => 'street',
							'id'            => 'street',
			            		'value'         =>  $users[$i]['street'],
			            	'placeholder' => 'Street',
			                'class'			=> 'form-control',
							'maxlength'     => '35');?>
						Street
						<?php echo form_input($data);?>
						</div>
						<div class="col-md-3">
						<?php $data = array(
							'name'          => 'city',
							'id'            => 'city',
			            		'value'         =>  $users[$i]['city'],
			            	'placeholder' => 'City',
			                'class'			=> 'form-control',
							'maxlength'     => '35');?>
						City
						<?php echo form_input($data);?>
						</div>
			          	<div class="col-md-3">
			          	State
			          	<?php echo form_dropdown('state', $this->fill_arrays->get_states_array(), $users[$i]['state'], 
			          			'class="form-control"'); ?>
			          	</div>
						<div class="col-md-2">
						<?php $data = array(
							'name'          => 'zip',
							'id'            => 'zip',
			            		'value'         =>  $users[$i]['zip'],
			            	'placeholder' => 'Zip',
			                'class'			=> 'form-control',
							'maxlength'     => '10');?>
						Zip
						<?php echo form_input($data);?>
						</div>
					</div>
					<div class="row">&nbsp;</div>
					<div class="row">
						<div class="col-md-4">
						<?php $data = array(
							'name'          => 'phone',
							'id'            => 'phone',
			            		'value'         =>  $users[$i]['phone'],
			            	'placeholder' => 'Phone',
			                'class'			=> 'form-control',
							'maxlength'     => '35');?>
						Phone
						<?php echo form_input($data);?>
						</div>
						<div class="col-md-4">
						<?php $data = array(
							'name'          => 'email',
							'id'            => 'email',
			            		'value'         =>  $users[$i]['email'],
			            	'placeholder' => 'Email',
			                'class'			=> 'form-control',
							'maxlength'     => '35');?>
						Email
						<?php echo form_input($data);?>
						</div>
			          	<div class="col-md-3">
			          	Category: 
						<?php echo form_dropdown('role', $this->fill_arrays->bsbl_roles_arr(), $users[$i]['role'], 'class="form-control"');?>
			          	</div>
					</div>
					<div class="row">&nbsp;</div>
					<div class="row">
						<div class="col-md-4">
						User Type
						<?php echo form_dropdown('type', $usr_types, $users[$i]['usr_type'], 'class="form-control"'); ?>
						</div>
						<div class="col-md-4">
						Select Team / League
						<?php echo form_dropdown('team', $teams, $users[$i]['team_ind'], 'class="form-control"'); ?>
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