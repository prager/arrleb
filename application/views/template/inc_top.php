
            <!-- *** TOP ***
_________________________________________________________ -->
            <div id="top">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-5 contact">
                            <p class="hidden-sm hidden-xs" style="link a {color: white;}">Contact: <?php 
                            echo anchor_popup('http://jlkconsulting.info/#contact', 
                            'webmaster@jlkconsulting.info'); ?></p>
                            <p class="hidden-md hidden-lg"><a href="#" data-animate-hover="pulse"><i class="fa fa-phone"></i></a>  
                            <a href="#" data-animate-hover="pulse">
                              <i class="fa fa-envelope"></i></a>
                            </p>
                        </div>
                        <div class="col-xs-7">
                            <div class="login">
                                <?php if($logged) {?>
                                    <a href="<?php echo base_url() ;?>index.php/login/logout">
                                    <i class="fa fa-sign-out"></i> <span class="hidden-xs">Logout</span></a>
                                    <?php echo anchor('login/load_user', 'Admin Page'); ?>
                                <?php }
                                      else {?>
                                    <a href="#" data-toggle="modal" data-target="#login-modal">
                                    <i class="fa fa-sign-in"></i> <span class="hidden-xs">Sign in</span></a>
                                    <a href="<?php echo base_url() ;?>index.php/Public_ctl/register">
                                    <i class="fa fa-user"></i> <span class="hidden-xs">Sign up</span></a>
                                <?php }?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- *** TOP END *** -->