<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>ARRL East Bay Section</title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,500,700,800' rel='stylesheet' type='text/css'>

    <!-- Bootstrap and Font Awesome css
    <link rel="stylesheet" href="<?php echo base_url() ;?>/assets/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo base_url() ;?>/assets/vendor/bootstrap/css/bootstrap.min.css"> -->
        
    <!-- Bootstrap and Font Awesome css -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- Css animations  -->
    <link href="<?php echo base_url() ;?>/assets/css/animate.css" rel="stylesheet">

    <!-- Theme stylesheet, if possible do not edit this stylesheet -->
    <link href="<?php echo base_url() ;?>/assets/css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- Custom stylesheet - for your changes -->
    <link href="<?php echo base_url() ;?>/assets/css/custom.css" rel="stylesheet">

    <!-- Responsivity for older IE -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

    <!-- Favicon and apple touch icons-->
    <link rel="shortcut icon" href="<?php echo base_url() ;?>/assets/img/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="<?php echo base_url() ;?>/assets/img/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="57x57" href="<?php echo base_url() ;?>/assets/img/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="<?php echo base_url() ;?>/assets/img/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="<?php echo base_url() ;?>/assets/img/apple-touch-icon-76x76.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="<?php echo base_url() ;?>/assets/img/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="<?php echo base_url() ;?>/assets/img/apple-touch-icon-120x120.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="<?php echo base_url() ;?>/assets/img/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="<?php echo base_url() ;?>/assets/img/apple-touch-icon-152x152.png" />
    <!-- owl carousel css -->

    <link href="<?php echo base_url() ;?>/assets/css/owl.carousel.css" rel="stylesheet">
    <link href="<?php echo base_url() ;?>/assets/css/owl.theme.css" rel="stylesheet">
    <link href="<?php echo base_url() ;?>/assets/css/bootstrap-social.css" rel="stylesheet">
</head>

<body>
    <div id="all">

        <header>

            <!-- *** TOP ***
_________________________________________________________ -->
            <?php include 'inc_top.php'; ?>

            <!-- *** TOP END *** -->

            <!-- *** NAVBAR ***
    _________________________________________________________ -->

            <div class="navbar-affixed-top" data-spy="affix" data-offset-top="200">

                <div class="navbar navbar-default yamm" role="navigation" id="navbar">

                    <div class="container">
                        <div class="navbar-header">

                            <a class="navbar-brand home" href="<?php echo base_url() ;?>">
                                <img src="<?php echo base_url() ;?>/assets/img/logo.png" alt="Universal logo" class="hidden-xs hidden-sm">
                                <img src="<?php echo base_url() ;?>/assets/img/logo-small.png" alt="Universal logo" class="visible-xs visible-sm"><span class="sr-only">Universal - go to homepage</span>
                            </a>
                            <div class="navbar-buttons">
                                <button type="button" class="navbar-toggle btn-template-main" data-toggle="collapse" data-target="#navigation">
                                    <span class="sr-only">Toggle navigation</span>
                                    <i class="fa fa-align-justify"></i>
                                </button>
                            </div>
                        </div>
                        <!--/.navbar-header -->

                        <div class="navbar-collapse collapse" id="navigation">

                            <ul class="nav navbar-nav navbar-right">
                              <li class="active"><a href="javascript: void(0)">Home</a></li>
                              <li class="dropdown">
                              	<a href="javascript: void(0)" class="dropdown-toggle" data-toggle="dropdown">Events<b class="caret">
                                </b></a>
                                <ul class="dropdown-menu">
                                    <li><?php echo anchor('public_ctl/education', 'Classes & Testing')?></li>
                                	<li><?php echo anchor('public_ctl/public_events', 'Public Service Events')?></li>
                              	</ul>
                              </li>
                              <li><?php echo anchor(base_url() . 'index.php/club-corner', 'Club Corner');?></li>
                              <li class="dropdown">
                              	<a href="javascript: void(0)" class="dropdown-toggle" data-toggle="dropdown">Tools<b class="caret">
                                </b></a>
                                <ul class="dropdown-menu">
                                    <li><?php echo anchor('files', 'Files Repository')?></li>
                              	</ul>
                              </li>
                              <li class="dropdown">
                              	<a href="javascript: void(0)" class="dropdown-toggle" data-toggle="dropdown">About<b class="caret">
                                </b></a>
                                <ul class="dropdown-menu">
                                    <li><?php echo anchor('Public_ctl/about', 'About ARRL EB Section')?></li>
                                    <li><?php echo anchor('Public_ctl/team', 'Team')?></li>
                              	</ul>
                              </li>
                            </ul>

                        </div>
                        <!--/.nav-collapse -->
                        
                        <div class="collapse clearfix" id="search">
                            <form class="navbar-form" role="search">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search">
                                    <span class="input-group-btn"><button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
                                </div>
                            </form>

                        </div>
                        <!--/.nav-collapse -->

                    </div>
                </div>
                <!-- /#navbar -->

            </div>

            <!-- *** NAVBAR END *** -->

        </header>

       <?php include 'inc_login_modal.php'; ?>