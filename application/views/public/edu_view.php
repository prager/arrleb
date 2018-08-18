<div id="heading-breadcrumbs">
 <div class="container">
  <div class="row d-flex align-items-center flex-wrap">
   <div class="col-md-7">
    <h1 class="h2">Education</h1>
    </div>
     <div class="col-md-5">
      <ul class="breadcrumb d-flex justify-content-end">
       <li class="breadcrumb-item"><?php echo anchor('Public_ctl', 'Home');?></li>
       <li class="breadcrumb-item active">Education</li>
      </ul>
     </div>
    </div>
  </div>
</div>

<div id="content">
        <div class="container">
        
            <div id="customer-orders" class="col-md-12">
              <p class="text-muted lead">
              Classes listed in ARRL East Bay Section area:</p>
              <div class="box mt-0 mb-lg-0">
                <div class="table-responsive">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>Course</th>
                        <th>Dates</th>
                        <th>Fee</th>
                        <th style="text-align:center">Status</th>
                        <th>Details</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th>Amateur Radio Extra Class</th>
                        <td>08/09/2018 - 10/11/2018</td>
                        <td>$ 8.00</td>
                        <!--  <td><span class="badge badge-info">Being prepared</span></td>-->
                        <td style="text-align:center"><span class="label label-warning">In Session</span></td>
                        <td><?php echo anchor('Public_ctl/class_details', 'View'); ?></td>
                      </tr>
                      <tr>
                        <th>Amateur Radio License Class</th>
                        <td>10/06/2018</td>
                        <td>$ 30.00</td>
                        <!--  <td><span class="badge badge-info">Being prepared</span></td>-->
                        <td style="text-align:center"><span class="label label-success">Open</span></td>
                        <td><?php echo anchor_popup('http://files.arrleb.org/Ham-Class-Oct2018-flyer.pdf', 'View'); ?></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
           <!-- <div class="col-md-3 mt-4 mt-md-0">-->
              <!-- CUSTOMER MENU -->
              <!-- <div class="panel panel-default sidebar-menu">
                <div class="panel-heading">
                  <h3 class="h4 panel-title">Customer section</h3>
                </div>
                <div class="panel-body">
                  <ul class="nav nav-pills flex-column text-sm">
                    <li class="nav-item"><a href="customer-orders.html" class="nav-link active"><i class="fa fa-list"></i> My orders</a></li>
                    <li class="nav-item"><a href="customer-wishlist.html" class="nav-link"><i class="fa fa-heart"></i> My wishlist</a></li>
                    <li class="nav-item"><a href="customer-account.html" class="nav-link"><i class="fa fa-user"></i> My account</a></li>
                    <li class="nav-item"><a href="index.html" class="nav-link"><i class="fa fa-sign-out"></i> Logout</a></li>
                  </ul>
                </div>
              </div> --> 
            <!-- </div>-->

        </div>
      </div>