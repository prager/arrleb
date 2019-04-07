<!-- Save File Modal -->
		  <div class="modal fade" tabindex="-1" id="saveFile" role="dialog">
		    <div class="modal-dialog">
		
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal"> × </button>
		          <h4><span class="glyphicon glyphicon-floppy-save"></span> Save File</h4>
		        </div>
		        <div class="modal-body">
		        <div class="row text-center">
		        <div class="col-md-10 col-md-offset-1">
		        /
		        </div>
		        </div>
    		    <div class="row text-center">
    		    <div class="col-md-10 col-md-offset-1">
    		    	<a data-toggle="collapse" href="#collps">Add New Directory</a>
    		    	
						<br><br>
    		    </div>
    		    </div>
    		    
    		    <div id="collps" class="panel-collapse collapse out">
    		    <div class="panel-body">
    		    <div class="row text-center">
				<div class="col-md-10 col-md-offset-1">
			            <?php $data = array(
							'name'          => 'newdir',
							'id'            => 'newdir',
			            		'value'         =>  '',
			            	'placeholder' => 'Directory Name',
			                'class'			=> 'form-control',
							'maxlength'     => '75');?>
						Directory Name
						<?php echo form_input($data);?>
						<br><br>
						</div>	
		    	</div> 
		    	</div>
		    	</div>		    	
		   
    		   <div class="modal-footer">
            	<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
            	<button type="button" class="btn btn-primary">Submit</button>
          	   </div>
		   
		   </div>
		 </div>
		 </div>
		 </div>

