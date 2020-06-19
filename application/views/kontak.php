<!DOCTYPE html>
<html>
<head>
    <!-- Page Title -->
    <title>Travelo | Responsive HTML5 Travel Template</title>
    
    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta name="keywords" content="HTML5 Template" />
    <meta name="description" content="Travelo | Responsive HTML5 Travel Template">
    <meta name="author" content="SoapTheme">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Theme Styles -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>gudang/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>gudang/css/font-awesome.min.css">
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="<?php echo base_url(); ?>gudang/css/animate.min.css">
    
    <!-- Main Style -->
    <link id="main-style" rel="stylesheet" href="<?php echo base_url(); ?>gudang/css/style.css">
    
    <!-- Custom Styles -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>gudang/css/custom.css">

    <!-- Updated Styles -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>gudang/css/updates.css">
    
    <!-- Responsive Styles -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>gudang/css/responsive.css">
    
    <!-- CSS for IE -->
    <!--[if lte IE 9]>
        <link rel="stylesheet" type="text/css" href="css/ie.css" />
    <![endif]-->
    
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script type='text/javascript' src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
      <script type='text/javascript' src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
    <![endif]-->
</head>
<body>
    <div id="page-wrapper">
        <?php $this->load->view('common/header'); ?>
        <div class="page-title-container">
            <div class="container">
                <div class="page-title pull-left">
                    <h2 class="entry-title">Hubungi Kami</h2>
                </div>
                <ul class="breadcrumbs pull-right">
                    <li><a href="http://localhost/travelmate/">HOME</a></li>
                    <li class="active">Hubungi Kami</li>
                </ul>
            </div>
        </div>

        <section id="content">
            <div class="container">
                <div id="main">
                    <div class="row">
                        <div class="col-sm-4 col-md-3">
                            <div class="travelo-box contact-us-box">
                                <h4>Hubungi Kami</h4>
                                <ul class="contact-address">
                                    <li class="address">
                                        <i class="soap-icon-address circle"></i>
                                        <h5 class="title">Alamat</h5>
                                        <p>Indonesia</p>
                                        <p>Tangerang, Jl Ciledug Raya</p>
                                    </li>
                                    <li class="phone">
                                        <i class="soap-icon-phone circle"></i>
                                        <h5 class="title">Phone</h5>
                                        <p>Telp: 021-800965 </p>
                                        <p>Mobile: 085719401086</p>
                                    </li>
                                    <li class="email">
                                        <i class="soap-icon-message circle"></i>
                                        <h5 class="title">Email</h5>
                                        <p>help@Travelmate.com</p>
                                        <p>www.Travelmate.com</p>
                                    </li>
                                </ul>
                                <ul class="social-icons full-width">
                                    <li><a href="https://twitter.com" target="blank" data-toggle="tooltip" title="Twitter"><i class="soap-icon-twitter"></i></a></li>
                                    <li><a href="https://plus.google.com/?hl=id" target="blank" data-toggle="tooltip" title="GooglePlus"><i class="soap-icon-googleplus"></i></a></li>
                                    <li><a href="https://facebook.com" target="blank" data-toggle="tooltip" title="Facebook"><i class="soap-icon-facebook"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-8 col-md-9">
                            <div class="travelo-box">
                                <form class="contact-form" action="contact_us.php" method="post">
                                    <h4 class="box-title">Hubungi kami</h4>
                                    <div class="row form-group">
                                        <div class="col-xs-6">
                                            <label>Nama Anda</label>
                                            <input type="text" name="name" class="input-text full-width">
                                        </div>
                                        <div class="col-xs-6">
                                            <label>Email Anda</label>
                                            <input type="text" name="email" class="input-text full-width">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Pesan Anda</label>
                                        <textarea name="message" rows="6" class="input-text full-width" placeholder="Tulis pesan anda disini"></textarea>
                                    </div>
                                    <button type="submit" class="btn-large full-width">KIRIM PESAN</button>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <footer id="footer">
            <?php $this->load->view('common/footer'); ?>
        </footer>
    </div>
<?php $this->load->view('common/scbawah'); ?>
</body>
</html>