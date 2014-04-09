<!DOCTYPE html>
<html>
<head>
	<title>Fourthwall | IITB</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
    <!-- Styles -->
    <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/compiled/bootstrap-overrides.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/compiled/theme.css" />

    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css' />

    <link rel="stylesheet" href="css/compiled/index.css" type="text/css" media="screen" />    
    <link rel="stylesheet" type="text/css" href="css/lib/animate.css" media="screen, projection" />    

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body class="pull_top">
    
    <?php include 'nav-bar fixed.php'; ?>

    <section id="feature_slider" class="lol">
        <!-- 
            Each slide is composed by <img> and .info
            - .info's position is customized with css in index.css
            - each <img> parallax effect is declared by the following params inside its class:
            
            example: class="asset left-472 sp600 t120 z3"
            left-472 means left: -472px from the center
            sp600 is speed transition
            t120 is top to 120px
            z3 is z-index to 3
            Note: Maintain this order of params

            For the backgrounds, you can combine from the bgs folder :D
        -->
        <article class="slide" id="showcasing" style="background: url('img/backgrounds/landscape.png') repeat-x top center;">
            <img class="asset left-30 sp600 t120 z1" src="img/slides/scene1/macbook.png" />
            <div class="info">
                <h2>The machaus of the insti.</h2>
            </div>
        </article>
        <article class="slide" id="ideas" style="background: url('img/backgrounds/aqua.jpg') repeat-x top center;">
            <div class="info">
                <h2>We love to turn ideas into beautiful things.</h2>
            </div>
            <img class="asset left-480 sp600 t260 z1" src="img/slides/scene2/left.png" />
            <img class="asset left-210 sp600 t213 z2" src="img/slides/scene2/middle.png" />
            <img class="asset left60 sp600 t260 z1" src="img/slides/scene2/right.png" />
        </article>
        <article class="slide" id="tour" style="background: url('img/backgrounds/color-splash.jpg') repeat-x top center;">
            <img class="asset left-472 sp650 t210 z3" src="img/slides/scene3/ipad.png" />
            <img class="asset left-365 sp600 t270 z4" src="img/slides/scene3/iphone.png" />
            <img class="asset left-350 sp450 t135 z2" src="img/slides/scene3/desktop.png" />
            <img class="asset left-185 sp550 t220 z1" src="img/slides/scene3/macbook.png" />
            <div class="info">
                <h2>Want more?</h2>
                <a href="features.html">TOUR WITH US</a>
            </div>
        </article>
        <article class="slide" id="responsive" style="background: url('img/backgrounds/indigo.jpg') repeat-x top center;">
            <img class="asset left-472 sp600 t120 z3" src="img/slides/scene4/html5.png" />
            <img class="asset left-190 sp500 t120 z2" src="img/slides/scene4/css3.png" />
            <div class="info">
                <h2>
                    Responsive <strong>HTML5 & CSS3</strong>
                    Theme
                </h2>                
            </div>
        </article>        
    </section>

            <?php
                    $con=mysqli_connect("localhost","root","","fourthwall");
                    // Check connection
                    if (mysqli_connect_errno())
                    {
                      echo "Failed to connect to MySQL: " . mysqli_connect_error();
                    }
                    else
                    {
                       // $result = mysqli_query($con,"SELECT * FROM events WHERE id= " . $id) or die('cant fetch data');
    
                        $recent_posts = mysqli_query($con,"SELECT * FROM events ORDER BY dated ASC") or die('cant fetch data');
                        $recent_review = mysqli_query($con,"SELECT * FROM reviews ORDER BY dated ASC") or die('cant fetch data');
                        //$results = mysqli_query($con,"SELECT * FROM ".$_GET['type']." WHERE ID=".$_GET['id']) or die('cant fetch data');
                        $r_row = array("","","","");
                        $n=0;
                        foreach ($recent_posts as $post) {
                            $r_row[$n] = $post;
                            
                            $n++;

                            if($n==4)
                            break;
                        }
                        foreach ($recent_review as $review) {
                            break;
                        }

                     }
                     ///////////////////////////////////////////////////////////////////////

                        echo"<h4>add an intro of annprod here</h4>";

                    ////////////////////////////////////////////////////////////////////
                   
           
     ?>
    <!-- starts footer -->
    <footer id="footer">
        <div class="container">
            <div class="row sections">
                
                <div class="col-sm-4 recent_posts">
                    <h3 class="footer_header">
                        Find us on FB
                    </h3>
                    
                    <div class="fb-like-box" data-href="https://www.facebook.com/Fourth.Wall" data-width="313" data-height="320" data-colorscheme="dark" data-show-faces="true" data-header="false" data-stream="false" data-show-border="false"></div>
                </div>
               <?php
               $review_c= substr($review['content'],0,190) . " ... ";
               echo ' 
                <div class="col-sm-4 testimonials">
                    <h3 class="footer_header">
                        REVIEWS
                    </h3>
                    <div class="wrapper">
                        <div class="quote">
                            <span>“</span>
                            '.$review_c.'
                            <span></span>
                        </div>
                        <div class="author">
                            <img src="img/user-display.png" />
                            <div class="name">'.$review["author"].'</div>
                            <div class="info">
                                 author
                            </div>
                        </div>
                    </div>
                </div>';
                ?>
                
                <div class="col-sm-4 contact">
                    <h3 class="footer_header">
                        Calender
                    </h3>
                    
                </div>
            </div>
            
            <div class="row credits">
                <div class="col-md-12">
                    <div class="row social">
                        <div class="col-md-12">
                            <a href="index.html#" class="facebook">
                                <span class="socialicons ico1"></span>
                                <span class="socialicons_h ico1h"></span>
                            </a>
                            <a href="index.html#" class="twitter">
                                <span class="socialicons ico2"></span>
                                <span class="socialicons_h ico2h"></span>
                            </a>
                            <a href="index.html#" class="gplus">
                                <span class="socialicons ico3"></span>
                                <span class="socialicons_h ico3h"></span>
                            </a>
                            
                        </div>
                    </div>
                    <div class="row copyright">
                        <div class="col-md-12">
                            © 2014 FourthWall IIT Bombay.
                        </div>
                    </div>
                </div>            
            </div>
        </div>
    </footer>

    <!-- Scripts -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>

    <script type="text/javascript" src="js/index-slider.js"></script>	

    <script type="text/javascript">
        $("#annprod").addClass("active");
    </script>

    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

</body>
</html>