<div id="content">
<div class="container">
	
	<div class="box">
      <div class="row">
      	<div class="col-md-12 text-center">
      		<h3>Public Service Events</h3>
      	</div>
      </div>
	<div class="row">
       	<div class="col-md-10 col-md-offset-1">
       	<div class="vertical">
       	<p>Beginning in early spring each year and continuing into early winter many ham radio operators 
       	become involved in doing radio team communications to support various public service events. The events include long distance 
       	bike rides, bike races, running races, walkathons, a March for Babies, a half marathon, a Mt Diablo Trail Ride, and local city parades. 
       	<br><br>
       	The locations include beautiful scenic areas such as nearby regional and wilderness areas, municipal trails and parks around East Bay region. 
       	Some of the agencies and causes that ham radio operators helped are: Children's Hospital of Oakland, the MS Society, the March of Dimes, 
       	Meals on Wheels, and Save Mt. Diablo.
		<br>
       	</div>
       </div>
    </div>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
        	<table class="table table-striped table-responsive">
        		<thead>
        			<tr>
        				<th>Event</th>
        				<th style="width: 8%">Date</th>
        				<th>Day</th>
        				<th>Ham Club</th>
        				<th>Location</th>
        				<th>Details</th>
        			</tr>
        		</thead>
        		<tbody>
        		<?php if($cnt > 0) {
        		    foreach($events as $row) {?>
        			<tr>
        				<td><strong><?php echo $row['name']; ?></strong></td>
        				<td>
            				<?php 
                				if($row['date'] != 0) {
                				    echo date("m/d/Y", $row['date']); 
                				}
                				else {
                				    echo 'TBD';
                				}
            				?>
        				</td>
        				<td><?php echo $row['day']; ?></td>
        				<td><?php echo $row['club']; ?></td>
        				<td class="elips1"><?php echo $row['location']; ?></td>
        				<td><?php echo anchor('public_ctl/event_details/' . $row['id'], 'View Event'); ?></td>
        			</tr>
        			<?php }
        		      }
        		      else { ?>
        		    <tr>
        		    <td colspan="6">No Public Service Events Listed</td>
        		    </tr>  
        		          
        		   <?php   }?>
        		</tbody>        	
        	</table>
        </div>    
    </div>
    <div class="row">&nbsp;</div>
    <div class="row">&nbsp;</div>
</div>
</div>
</div>
<!-- Footer -->
