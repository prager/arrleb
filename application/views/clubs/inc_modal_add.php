<!-- Edit Class Modal -->
		  <div class="modal fade" id="addClass" role="dialog">
		    <div class="modal-dialog modal-lg">
		
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">×</button>
		          <h4><span class="glyphicon glyphicon-copy"></span> Add Club</h4>
		        </div>
		        <div class="modal-body">
		        <?php echo form_open('club/edit_club/0'); ?>
		            <div class="form-group">
					<div class="row">
						<div class="col-md-3 col-md-offset-1">
						<?php $data = array(
							'name'          => 'name',
							'id'            => 'name',
			            		'value'         =>  '',
			            	'placeholder' => 'Club Name',
			                'class'			=> 'form-control',
							'maxlength'     => '64');?>
						Club Short Name
						<?php echo form_input($data);?>
						</div>
						<div class="col-md-3">
						<?php $data = array(
							'name'          => 'link',
							'id'            => 'link',
			            		'value'         =>  '',
			            	'placeholder' => 'Club URL',
			                'class'			=> 'form-control',
							'maxlength'     => '64');?>
						Club URL
						<?php echo form_input($data);?>
						</div>
						<div class="col-md-3">
						Active
			          	<?php echo form_dropdown('active', array('No', 'Yes'), 0, 'class="form-control"'); ?>
						</div>
					</div>
					<div class="row">&nbsp;</div>
		            <div class="row">
			            <div class="col-md-9 col-md-offset-1">
			            <?php $data = array(
							'name'          => 'long_name',
							'id'            => 'long_name',
			            		'value'         =>  '',
			            	'placeholder' => 'Class',
			                'class'			=> 'form-control',
							'maxlength'     => '75');?>
						Club Long Name
						<?php echo form_input($data);?>
						</div>				
					</div>
					<div class="row">&nbsp;</div>
					<div class="row">
			            <div class="col-md-9 col-md-offset-1">
			            Club Narrative
    						<?php 
                            $data = array(
                            'name' => 'narrative',
                            'id' => 'narrative',
                            'value' => '',
                            'cols' => 75,
                            'rows' => 7,
                            'class' => 'form-control'
                            );
                            echo form_textarea($data);
                            ?>	
                        </div>
					</div>
					<div class="row">&nbsp;</div>
					<div class="row">&nbsp;</div>
					<div class="row">
						<div class="col-md-3 col-md-offset-4">
			          	<?php echo form_submit('submit', 'Add Club', 'class="btn btn-primary btn-block"'); ?>
			          	</div>
		          	</div>
					<div class="row">&nbsp;</div>
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
