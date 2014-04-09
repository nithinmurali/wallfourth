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

    <link rel="stylesheet" href="css/compiled/about.css" type="text/css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/lib/animate.css" media="screen, projection" />
    <link rel="stylesheet" href="css/lib/flexslider.css" type="text/css" media="screen" />

    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
    
    <?php include 'nav-bar static.php'; ?>
    
    <div id="aboutus">
        <div class="container">
            <div class="section_header">
                <h3>About Us</h3>
            </div>
            <div class="row">
                <div class="col-sm-6 intro">
                    <h6>The drama is not dead but liveth, and contains the germs of better things.</h6>
                    <p>
                        Fourth Wall is the dramatics club of IIT Bombay . Although a  hub for all fun lovers and ‘lukkhi janta’ each year it produces a wide variety of performances ranging from one act plays to street plays and mimes to broad ways and each time it astounds us all with it’s creativity and heart winning acts. So entertainment , friendship and liveliness are few words which truly describe this group in short.<br /><br />
                        </p>
                </div>
                <div class="col-sm-6">
                    <div class="flexslider">
                        <ul class="slides">
                            <li>
                              <img src="img/about/slide1.jpg" />
                            </li>
                            <li>
                              <img src="img/about/slide2.jpg" />
                            </li>
                            <li>
                              <img src="img/about/slide3.jpg" />
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="team">
        <div class="container">
            <div class="section_header">
                <h3>Meet our Team</h3>
            </div>
            <div class="row people ">
               
            <?php
            // STORE details of all members .. add here
             $mem =array( 
                            array(
                                  array("Gaganjeet Singh","Convener","09029713447","gagsunny@gmail.com","fb"),
                                  array("Yashasvi Gawali","Convener","09920733687","yashasvi.gawali@gmail.com","fb"),
                                  array("Anand Agrawalla","Convener","07208758395","andyagarwalla@gmail.com","fb"),
                                  array("Akash Rajwani","Convener","08888665000","aakashrajwani.iitb@gmail.com","fb"),
                                  array("Soham","PG Convener","09820720633","condensed.moon@gmail.com","fb"),
                                  array("Kanad Dagaonkar","Overall Coordinator, Theatre Fest’13","09833428465","kanaddagaonkar.iitb@gmail.com","fb"),
                                
                                ),
                            array(
                                  array("Gaganjeet Singh","Convener","09029713447","gagsunny@gmail.com","fb"),
                                  array("Yashasvi Gawali","Convener","09920733687","yashasvi.gawali@gmail.com","fb"),
                                  array("Anand Agrawalla","Convener","07208758395","andyagarwalla@gmail.com","fb"),
                                  array("Akash Rajwani","Convener","08888665000","aakashrajwani.iitb@gmail.com","fb"),
                                  array("Soham","PG Convener","09820720633","condensed.moon@gmail.com","fb"),
                                  array("Kanad Dagaonkar","Overall Coordinator, Theatre Fest’13","09833428465","kanaddagaonkar.iitb@gmail.com","fb"),
                               
                                 )

                          );  
                
                $num_of_col=2.0;
                $num_of_yrs=2;    //change this to add more years
                
                for($k=0;$k<$num_of_yrs;$k++)   
                {   
                    echo '<div class="row people num'.$k.'" id="'.$k.'" >'; 
                    $n=1;
                    for($i=0;$i<ceil(count($k)/$num_of_col);$i++)
                    {
                        echo '<div class="row row1" >';
                            for($j=0;$j<$num_of_col;$j++)
                            {
                                echo '
                                <div class="col-sm-6 bio_box">
                                    <img src="img/about/'.$mem[0][$n][0].'.png" alt="">
                                    <div class="info">
                                        <p class="name">'.$mem[0][$n][0].'</p>
                                        <p class="area">'.$mem[0][$n][1].'</p>
                                        <p class="area">'.$mem[0][$n][2].'</p>
                                        <p class="arealast">'.$mem[0][$n][3].'</p>
                                        <!--
                                        <a href="http://www.fb.com/'.$mem[0][$n][4].'" class="facebook">
                                            <span class="socialicons ico1"></span>
                                            <span class="socialicons_h ico1h"></span>
                                        </a>
                                        <a href="about-us.html#" class="twitter">
                                            <span class="socialicons ico2"></span>
                                            <span class="socialicons_h ico2h"></span>
                                        </a>
                                        -->
                                    </div>
                                </div> ';
                                $n++;
                                if($n==6)$n=0;
                            }
                        
                        echo ' </div>';
                    }
                    
                    echo '</div>';
                }    

                echo'
                    <div class="row row1" >
                        
                    </div>
                ';
            ?>
            </div>
        </div>
    </div>
<!--
    <div id="process">
        <div class="container">
            
            <div class="row services_circles">
                <div class="col-sm-4 description">
                    <div class="text active">
                        <h4>Plan what you need.</h4>
                        <p>
                             Internet.</p>
                    </div>
                    <div class="text">
                        <h4>Develop your product or service.</h4>
                        <p>
                            
                            making this the first true generator  Internet.</p>
                    </div>
                    <div class="text">
                        <h4>Design this theme to your needs.</h4>
                        <p>
                            generator  Internet.</p>
                    </div>
                </div>

                <div class="col-sm-8 areas">
                    <div class="circle active">
                        <span>2013-14</span>
                    </div>
                    <div class="circle ">
                        <span>2012-13</span>
                    </div>
                    <div class="circle ">
                        <span>2011-12</span>
                    </div>
                    <div class="circle ">
                        <span>2010-11</span>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
   -->
   <div class="container">
        
            <a href="signin.php" class="btn btn-info btn-lg" style="width:200px;position: relative;left:39%">Admin Login</a>
      
   </div>
    <!-- starts footer -->
    <?php include 'footer.php'; ?>
    <!--       -->

    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>
    <script type="text/javascript" src="js/flexslider.js"></script>

    <script type="text/javascript">
        $("#about").addClass("active");
    </script>
</body>
</html>