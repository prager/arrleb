<div class="modal fade" id="setProfile<?php echo $row->id_user; ?>" role="dialog">
		    <div class="modal-dialog">
		
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">×</button>
		          <h4><span class="glyphicon glyphicon-pencil"></span>Set User Profile</h4>
		        </div>
		        <div class="modal-body">
		        <?php echo form_open('master/load_user_profile/' .  $row->id_user) ?>
		            <div class="form-group">
		            <div class="row">
			            <div class="col-md-8">
							<?php echo $row->fname . ' ' . $row->lname; ?>
						</div>
					</div>
					<div class="row">&nbsp;</div>
					<div class="row">
						<div class="col-md-8">
						Set User Profile (to do)
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