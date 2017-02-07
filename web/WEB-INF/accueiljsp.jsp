<%-- 

    Document   : accueiljsp.jsp

    Created on : 23 janv. 2017, 12:42:06

    Author     : lapin

--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

    <head>

        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



        <meta charset="utf-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">

        <meta name="author" content="">

        <script src="vendor/jquery/jquery.js" type="text/javascript"></script>



        <script src="js/pub.js" type="text/javascript"></script>



        <title>Ma Compagnie d'Assurance</title>



        <!-- Bootstrap Core CSS -->

        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">



        <!-- Theme CSS -->

        <link href="css/freelancer.min.css" rel="stylesheet">



        <!-- Custom Fonts -->

        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

        <link href="css/mesStyles.css" rel="stylesheet" type="text/css"/>



        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->

        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

        <!--[if lt IE 9]>

            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>

            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>

        <![endif]-->

    </head>

    <body>

    <body id="page-top" class="index">





        <!-- Navigation -->

        <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">

            <div class="container">

                <!-- Brand and toggle get grouped for better mobile display -->

                <div class="navbar-header page-scroll">

                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">

                        <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>

                    </button>



                    <a id="header" class="navbar-brand " href="#page-top" >La Compagnie qui ASSURE</a>


                </div>
                <!--                <div>
                                    <marquee><img src="img/portfolio/car009.GIF"/><font color="#009900">  BIENVENU(E) ${user.nom}</font></marquee>
                
                                </div>-->



                <!-- Collect the nav links, forms, and other content for toggling -->

                <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">

                    <ul class="nav navbar-nav navbar-right">

                        <li class="hidden">

                            <a href="#page-top"></a>

                        </li>

                        <li class="page-scroll">

                            <a href="#nos_services">Nos Services</a>

                        </li>

                        <li class="page-scroll">

                            <a href="#a_propos">A propos</a>

                        </li>

                        <li class="page-scroll">

                            <a href="#nous_contacter">Nous Contacter</a>

                        </li>

                        <li >

                            <a href="Assurance2017Controleur?cmd=devis" target="_blank">Devis en Ligne</a>

                        </li>

                        <li >

                            <a href="Assurance2017Controleur?cmd=usager" >Creer Mon Compte</a>

                        </li>

                        <li >

                            <c:choose>

                                <c:when test="${user != null}">

                                    <a href="Assurance2017Controleur?cmd=deconnexion" >Deconnecter <font color="#0099bb" >${user.nom}</font></a>


                                </c:when>                               

                                <c:otherwise>

                                    <a href="Assurance2017Controleur?cmd=connexion" >Me connecter</a>

                                </c:otherwise>

                            </c:choose>

                            <!--                            <a href=""></a>-->

                        </li>


                    </ul>
                    <br>
                    <div>
                        <marquee><img src="img/portfolio/car009.GIF"/><font color="#009900">  BIENVENU(E) ${user.nom}</font></marquee>

                    </div>

                </div>

                <!-- /.navbar-collapse -->

            </div>

            <!-- /.container-fluid -->

        </nav>





        <!-- Header -->

        <header>

            <div class="container">

                <div class="row">

                    <div class="col-lg-12">                        



                        <!--                        ======================================================-->

                        <!--                        <div>
                                                    <marquee behavior="alternate"><h1>Bonjour : ${user.nom}</h1></marquee>
                                                </div>-->

                        <div class="row">

                            <div class="col-sm-4 portfolio-item">

                                <img  src="img/portfolio/car--3-.png" class="img-responsive"  alt="">

                            </div>

                            <div class="col-sm-4 portfolio-item">

                                <img src="img/portfolio/home (1).png" class="img-responsive" alt="">

                            </div>

                            <div class="col-sm-4 portfolio-item">

                                <img src="img/portfolio/hourglass (1).png"  class="img-responsive" alt=""/>

                            </div>                  

                            <!--                        ======================================================-->



                            <div class="intro-text">

                                <span class="name">La Compagnie Qui ASSURE BIEN</span>

                                <hr class="star-light">

                                <span class="skills">Auto - Habitation - Vie</span>



                                <img src="img/portfolio/satisfaction.png" class="img-responsive" alt=""/>

                            </div>

                        </div>

                    </div>

                </div>

        </header>

        <!-- Portfolio Grid Section -->

        <section id="nos_services">

            <div class="container" >

                <div class="row">

                    <div class="col-lg-12 text-center">

                        <h2>Nos Services</h2>

                        <hr class="star-primary">

                    </div>

                </div>

                <div class="row">

                    <div class="col-sm-4 portfolio-item" >

                        <!--<a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">-->

                        <div class="caption">

                            <div class="caption-content">

                                <p>               

                                    <a href="Devis.html" target=" _blank">

                                        <img src="img/portfolio/karr3.png" class="img-responsive" alt=""/>

                                        <span class="button">Assurance Auto</span>

                                    </a>

                                </p>

                                <!--<i class="fa fa-search-plus fa-3x"></i>-->

                            </div>

                        </div>



                    </div>

                    <div class="col-sm-4 portfolio-item">

                        <!--<a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">-->

                        <div class="caption">

                            <div class="caption-content">

                                <p>

                                    <a href="https://www.zoobeauval.com/">

                                        <img src="img/portfolio/howm-2.png" class="img-responsive" alt=""/>

                                        <span class="button">Assurance Habitation</span>

                                    </a>

                                </p>

                                <!--<i class="fa fa-search-plus fa-3x"></i>-->

                            </div>

                        </div>



                    </div>

                    <div class="col-sm-4 portfolio-item">

                        <!--<a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">-->

                        <div class="caption">

                            <div class="caption-content">

                                <p>

                                    <a href="https://www.bankofamerica.com/deposits/savings/savings-accounts/">

                                        <img src="img/portfolio/ekonomy (1).png" class="img-responsive" alt=""/>

                                        <span class="button">Assurance Vie</span></a>   

                                </p>

                                <!--<i class="fa fa-search-plus fa-3x"></i>-->

                            </div>

                        </div>



                    </div>

                </div>

            </div>

        </section>



        <!-- About Section -->

        <section class="success" id="a_propos">

            <div class="container">

                <div class="row">

                    <div class="col-lg-12 text-center ">                        

                        <img id="im1" src="img/portfolio/A.01.png" alt=""/>

                        <h2>A propos</h2>

                        <hr class="star-light">

                    </div>

                </div>

                <div class="row">

                    <div>

                        <p>Le plein de garanties et de services.

                            Vous roulez un peu ? Beaucoup ? Au Tiers, Médiane ou Tous Risques, nos formules incluent une Responsabilité Civile et une Protection du conducteur.

                            Grâce à nos forfaits kilométriques, vous payez seulement pour les trajets réellement parcourus. Et avec les Renforts Dépannage et Indemnisation, l’assistance et le remboursement de votre voiture sont renforcés en cas de vol ou de destruction.

                            Bonne nouvelle : nous récompensons votre fidélité</p>

                    </div>



                </div>

            </div>

        </section>



        <!-- Contact Section -->

        <section id="nous_contacter" >

            <div class="container">

                <div class="row">                   

                    <div class="col-lg-12 text-center">

                        <h2>Nous Contacter</h2>

                        <hr class="star-primary"> 

                    </div>

                </div>

                <div class="row">

                    <div class="col-lg-8 col-lg-offset-2">

                        <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->

                        <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->

                        <form name="sentMessage" id="contactForm" novalidate>

                            <div class="row control-group">

                                <div class="form-group col-xs-12 floating-label-form-group controls">

                                    <label>Nom</label>

                                    <input type="text" class="form-control" placeholder="Nom" id="email" required data-validation-required-message="Please enter your email address.">

                                    <p class="help-block text-danger"></p>

                                </div>

                            </div>

                            <div class="row control-group">

                                <div class="form-group col-xs-12 floating-label-form-group controls">

                                    <label>Type de Vehicule</label>

                                    <input type="text" class="form-control" placeholder="Type De Vehicule" id="email" required data-validation-required-message="Please enter your email address.">

                                    <p class="help-block text-danger"></p>

                                </div>

                            </div>

                            <div class="row control-group">

                                <div class="form-group col-xs-12 floating-label-form-group controls">

                                    <label>Address Email</label>

                                    <input type="email" class="form-control" placeholder="Address Email" id="email" required data-validation-required-message="Please enter your email address.">

                                    <p class="help-block text-danger"></p>

                                </div>

                            </div>

                            <div class="row control-group">

                                <div class="form-group col-xs-12 floating-label-form-group controls">

                                    <label>Numéro de Téléphone</label>

                                    <input type="tel" class="form-control" placeholder="Numéro de Téléphone" id="phone" required data-validation-required-message="Please enter your phone number.">

                                    <p class="help-block text-danger"></p>

                                </div>

                            </div>

                            <div class="row control-group">

                                <div class="form-group col-xs-12 floating-label-form-group controls">

                                    <label>Message</label>

                                    <textarea rows="5" class="form-control" placeholder="Message contenant des détails sur la raison de votre sollicitation" id="message" required data-validation-required-message="Please enter a message."></textarea>

                                    <p class="help-block text-danger"></p>

                                </div>

                            </div>

                            <br>

                            <div id="success"></div>

                            <div class="row">

                                <div class="form-group col-xs-12">

                                    <button type="submit" class="btn btn-success btn-lg">Envoyer</button>

                                </div>

                            </div>

                        </form>

                    </div>

                </div>

            </div>

        </section>



        <!-- Footer -->

        <footer class="text-center">

            <div class="footer-above">

                <div class="container">

                    <div class="row">

                        <div class="footer-col col-md-4">

                            <h3>Adresse</h3>

                            <p>42 Rue de L'As-sur-Ance

                                <br>75013, PARIS,FRANCE</p>

                        </div>

                        <div class="footer-col col-md-4">

                            <h3>AUTOUR DU WEB</h3>

                            <ul class="list-inline">

                                <li>

                                    <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>

                                </li>

                                <li>

                                    <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>

                                </li>

                                <li>

                                    <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>

                                </li>

                                <li>

                                    <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>

                                </li>

                                <!--                                <li>

                                                                    <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>

                                                                </li>-->

                            </ul>

                        </div>

                        <div class="footer-col col-md-4">

                            <h3>A votre Service</h3>

                            <p>Vous bénéficiez des garanties essentielles : 

                                Responsabilité Civile et Protection du conducteur et 

                                vous pouvez compléter votre couverture en fonction de vos besoins. 

                            </p>                           

                        </div>                       

                    </div>

                </div>

            </div>



            <div class="footer-below">

                <div class="container">

                    <div class="row">

                        <div class="col-lg-12">

                            Copyright &copy; La Compagnie Qui ASSURE 2016

                        </div>

                    </div>

                </div>

            </div>

        </footer>



        <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->

        <div class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">

            <a class="btn btn-primary" href="#page-top">

                <i class="fa fa-arrow-circle-up" ></i>

            </a>

        </div>



    </body>





</html>