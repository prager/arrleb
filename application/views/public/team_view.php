<div id="heading-breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>Our team</h1>
                    </div>
                    <div class="col-md-5">
                        <ul class="breadcrumb">
                            <li><?php echo anchor('Public_ctl', 'Home');?>
                            </li>
                            <li>Our team</li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

        <div id="content">
            <div class="container">

                <section>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="heading text-center">
                                <h2>Who is responsible for ARRL East Bay Section?</h2>
                            </div>

                            <p class="lead text-center">The ARRL East Bay Section team members:</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-md-offset-3">
                            <div class="team-member" data-animate="fadeInUp">
                                <div class="image">
                                    <a href="team-member.html">
                                        <img src="<?php echo base_url(). $staff[0]['image_loc']; ?>" alt="" class="img-responsive img-circle">
                                    </a>
                                </div>
                                <h3><?php echo anchor('user/show_user/' . $staff[0]['id_user'],
                                    $staff[0]['fname'] . ' ' . $staff[0]['lname'] . ', ' . $staff[0]['callsign']); ?></h3>
                                <p class="role">Section Manager</p>
                                <div class="social">
                            	<?php if($staff[0]['facebook'] != '') {?>
                                <a href="<?php echo $staff[0]['facebook']; ?>" class="external facebook" data-animate-hover="pulse">
                                <i class="fa fa-facebook"></i></a>
                                <?php }
                                if($staff[0]['googleplus'] != '') {?>
                                <a href="<?php echo $staff[0]['googleplus']; ?>" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                <?php }
                                if( $staff[0]['twitter'] != '') {?>
                                <a href="<?php echo $staff[0]['twitter']; ?>" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                <?php }
                                if($staff[0]['linkedin'] != '') {?>
                                <a href="<?php echo $staff[0]['linkedin']; ?>" class="external twitter" data-animate-hover="pulse"><i class="fa fa-linkedin"></i></a>
                                <?php }
                                if(($staff[0]['linkedin'] == '') || ($staff[0]['facebook'] == '') || ($staff[0]['twitter'] == '')
                                    || ($staff[0]['googleplus'] == '')) {
                                    echo '--------------';
                                }?>
                            	</div>
                                <div class="text">
                                    <p><?php echo $staff[0]['narrative']; ?></p>
                                </div>
                            </div>
                            <!-- /.team-member -->
                        </div>
                        <div class="col-md-3 col-sm-3" data-animate="fadeInUp">
                            <div class="team-member" data-animate="fadeInUp">
                                <div class="image">
                                    <a href="team-member.html">
                                        <img src="<?php echo base_url(). $staff[1]['image_loc']; ?>" alt="" class="img-responsive img-circle">
                                    </a>
                                </div>
                                <h3><?php echo anchor('user/show_user/' . $staff[1]['id_user'],
                                    $staff[1]['fname'] . ' ' . $staff[1]['lname'] . ', ' . $staff[1]['callsign']); ?></h3>
                                <p class="role">Section Manager</p>
                                <div class="social">
                            	<?php if($staff[1]['facebook'] != '') {?>
                                <a href="<?php echo $staff[1]['facebook']; ?>" class="external facebook" data-animate-hover="pulse">
                                <i class="fa fa-facebook"></i></a>
                                <?php }
                                if($staff[1]['googleplus'] != '') {?>
                                <a href="<?php echo $staff[1]['googleplus']; ?>" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                <?php }
                                if( $staff[1]['twitter'] != '') {?>
                                <a href="<?php echo $staff[1]['twitter']; ?>" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                <?php }
                                if($staff[1]['linkedin'] != '') {?>
                                <a href="<?php echo $staff[1]['linkedin']; ?>" class="external twitter" data-animate-hover="pulse"><i class="fa fa-linkedin"></i></a>
                                <?php }
                                else {
                                    //echo '--------------';
                                }?>
                            	</div>
                                <div class="text">
                                    <p><?php echo $staff[1]['narrative']; ?></p>
                                </div>
                            </div>
                            <!-- /.team-member -->
                        </div>
                    </div>
                    <!-- /.row -->

                    <div class="row">
                        <div class="col-md-2 col-md-offset-1 col-sm-3" data-animate="fadeInDown">
                            <div class="team-member">
                                <div class="image">
                                    <a href="team-member.html">
                                        <img src="<?php echo base_url() . $staff[2]['image_loc'] ;?>" alt="" class="img-responsive img-circle">
                                    </a>
                                </div>
                                <h3><a href="team-member.html">Misa Siemons, KJ6BUE</a></h3>
                                <p class="role">Public Information Coordinator</p>
                            </div>
                            <!-- /.team-member -->
                        </div>
                        <div class="col-md-2 col-sm-3" data-animate="fadeInDown">
                            <div class="team-member">
                                <div class="image">
                                    <a href="team-member.html">
                                        <img src="<?php echo base_url() . $staff[3]['image_loc'] ;?>" alt="" class="img-responsive img-circle">
                                    </a>
                                </div>
                                <h3><a href="team-member.html">Scott Morse, KC6SKM</a></h3>
                                <p class="role">Section Emergency Coordinator</p>
                            </div>
                            <!-- /.team-member -->
                        </div>
                        <div class="col-md-2 col-sm-3" data-animate="fadeInDown">
                            <div class="team-member">
                                <div class="image">
                                    <a href="team-member.html">
                                        <img src="<?php echo base_url() . $staff[4]['image_loc'] ;?>" alt="" class="img-responsive img-circle">
                                    </a>
                                </div>
                                <h3><a href="team-member.html">Steve Hawes, WB6UZX</a></h3>
                                <p class="role">Section Net Manager</p>
                            </div>
                            <!-- /.team-member -->
                        </div>
                        <div class="col-md-2 col-sm-3" data-animate="fadeInDown">
                            <div class="team-member">
                                <div class="image">
                                    <a href="team-member.html">
                                        <img src="<?php echo base_url(). $staff[5]['image_loc'] ;?>" alt="" class="img-responsive img-circle">
                                    </a>
                                </div>
                                <h3><a href="team-member.html">Gary Gross, KE6QR</a></h3>
                                <p class="role">Official Relay Station</p>
                            </div>
                            <!-- /.team-member -->
                        </div>
                        <div class="col-md-2 col-sm-3" data-animate="fadeInDown">
                            <div class="team-member">
                                <div class="image">
                                    <a href="team-member.html">
                                        <img src="<?php echo base_url(). $staff[6]['image_loc'] ;?>" alt="" class="img-responsive img-circle">                                    </a>
                                </div>
                                <h3><a href="team-member.html">Dave Piersall, N6ORB</a></h3>
                                <p class="role">Contra Costa County</p>
                            </div>
                            <!-- /.team-member -->
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-2 col-md-offset-1 col-sm-3" data-animate="fadeInDown">
                            <div class="team-member" data-animate="fadeInDown">
                                <div class="image">
                                    <a href="team-member.html">
                                        <img src="<?php echo base_url() ;?>/assets/img/team-member.gif" alt="" class="img-responsive img-circle">
                                    </a>
                                </div>
                                <h3><a href="team-member.html">Mathew Vurek, N4DLA</a></h3>
                                <p class="role">Affiliated Club Coordinator</p>
                            </div>
                            <!-- /.team-member -->
                        </div>
                        <div class="col-md-2 col-sm-3" data-animate="fadeInDown">
                            <div class="team-member" data-animate="fadeInDown">
                                <div class="image">
                                    <a href="team-member.html">
                                        <img src="<?php echo base_url() ;?>/assets/img/bart.png" alt="" class="img-responsive img-circle">
                                    </a>
                                </div>
                                <h3><a href="team-member.html">Bart Lee, K6VK</a></h3>
                                <p class="role">Local Govt Liaison</p>
                            </div>
                            <!-- /.team-member -->
                        </div>
                        <div class="col-md-2 col-sm-3" data-animate="fadeInDown">
                            <div class="team-member" data-animate="fadeInDown">
                                <div class="image">
                                    <a href="team-member.html">
                                        <img src="<?php echo base_url() ;?>/assets/img/team-member.gif" alt="" class="img-responsive img-circle">
                                    </a>
                                </div>
                                <h3><a href="team-member.html">Jim Tittle, K6SOE</a></h3>
                                <p class="role">Official Observer Coordinator</p>
                            </div>
                            <!-- /.team-member -->
                        </div>
                        <div class="col-md-2 col-sm-3" data-animate="fadeInDown">
                            <div class="team-member">
                                <div class="image">
                                    <a href="team-member.html">
                                        <img src="<?php echo base_url() ;?>/assets/img/team-member.gif" alt="" class="img-responsive img-circle">
                                    </a>
                                </div>
                                <h3><a href="team-member.html">Kristen McIntyre K6WX</a></h3>
                                <p class="role">Technical Coordinator</p>
                            </div>
                            <!-- /.team-member -->
                        </div>
                        <div class="col-md-2 col-sm-3" data-animate="fadeInDown">
                            <div class="team-member">
                                <div class="image">
                                    <a href="team-member.html">
                                        <img src="<?php echo base_url() . $staff[11]['image_loc'] ; ?>" alt="" class="img-responsive img-circle">
                                    </a>
                                </div>
                                <h3><a href="team-member.html">John Primus, AF6RJ</a></h3>
                                <p class="role">Education Coordinator</p>
                            </div>
                            <!-- /.team-member -->
                        </div>
                    </div>
                    
                    
                    </div>
                    <!-- /.row -->

                </section>

            </div>

