<div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>User Info</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">
                            <li><?php echo anchor('login/load_user', 'User Page');?></li>
                            <li>User Info</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

<div class="container">
	<div class="row">
		<div class="col-md-5 col-md-offset-1">
			<?php $data = array(
				'name'          => 'fname',
				'id'            => 'fname',
			    'value'         =>  $fname,
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
    			'value'     =>  $lname,
    			'placeholder' => 'Last Name',
    			'class'			=> 'form-control',
    			'maxlength'     => '75');?>
    			Last Name
    		<?php echo form_input($data);?>
		</div>		
	</div>
	<div class="row">&nbsp;</div>
	<div class="row">
    	<div class="col-md-3 col-md-offset-1">
    		<?php $data = array(
    			'name'          => 'street',
    			'id'            => 'street',
    			'value'         =>  $street,
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
    			 'value'         =>  $city,
    			 'placeholder' => 'City',
    			 'class'			=> 'form-control',
    			 'maxlength'     => '35');?>
    		City
    		<?php echo form_input($data);?>
    	</div>
    	<div class="col-md-3">
			State
			<?php echo form_dropdown('state', $this->fill_arrays->get_states_array(), $state, 
			     'class="form-control"'); ?>
		</div>
		<div class="col-md-2">
			<?php $data = array(
				'name'          => 'zip',
				'id'            => 'zip',
			    'value'         =>  $zip,
			    'placeholder' => 'Zip',
			    'class'			=> 'form-control',
				'maxlength'     => '10');?>
			Zip
			<?php echo form_input($data);?>
		</div>
	</div>
	<div class="row">&nbsp;</div>
	<div class="row">
		<div class="col-md-4 col-md-offset-2">
			<?php $data = array(
				    'name'          => 'phone',
					'id'            => 'phone',
			        'value'         =>  $phone,
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
			    'value'         =>  $email,
			    'placeholder' => 'Email',
			    'class'			=> 'form-control',
				'maxlength'     => '35');?>
			Email
			<?php echo form_input($data);?>
		</div>
	</div>
	<div class="row">&nbsp;</div>
</div>