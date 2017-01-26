
<%-- 
    Document   : devisjsp
    Created on : 19 déc. 2016, 23:07:42
    Author     : Milou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>ENREGISTREMENTS</title>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">        
        <script src="vendor/jquery/jquery.js" type="text/javascript"></script>  
        <script src="js/pubFormule.js" type="text/javascript"></script>
        <script src="js/mesvoituresjs.js" type="text/javascript"></script>
        <script src="js/monUtilisation.js" type="text/javascript"></script>



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
    <body id="page-top" class="index">

        <!--        barre de navigation-->
        <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom clearfix">

            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                    </button>

                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <div class="row">
                        <p  class="col-lg-4 col-lg-offset-4">
                            <a class="navbar-brand " href="#page-top">DEVIS EN LIGNE</a>
                        </p>
                    </div>
                </div>
                <!-- /.navbar-collapse -->
            </div>

        </nav>

        <div class="container">
            <div class="row jumbotron" id="formul" style="margin-top: 100px" >
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->

                    <!--<img id="im2" src="img/portfolio/formul_00.png" alt="" class="img-rounded" />-->

                    <form action="Assurance2017Controleur?cmd=recap"  id="contactForm" method="POST">                       

                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <select name="Utilisations" id="utilisations" onchange="monUtilisation()" class="form-control" required data-validation-required-message="Merci d'entrer une marque ." >
                                    <option value="0" >UTILISATIONS</option>
                                    <option>Privee</option>
                                    <option>Professionel</option>
                                </select><br>                                
                            </div>
                        </div>

                        <div class="row control-group">
                            <div id="divkilometrage" class="form-group col-xs-12 floating-label-form-group controls" hidden>
                                <select data-style="btn-primary" name="Kilometrages" id="kilometrages"  class="form-control" required data-validation-required-message="Merci d'entrer une marque ." >
                                    <option>KILOMETRAGES</option>                                   
                                </select><br>

                            </div>
                        </div>

                        <div class="row control-group">
                            <div id="divmarques" class="form-group col-xs-12 floating-label-form-group controls"  >
                                <select name="Marques"  id="marques" onchange="mesVoitures()" class="form-control"  required data-validation-required-message="Merci d'entrer une marque ." >
                                    <option value="0" >MARQUES</option>
                                    <option>Omega</option>
                                    <option>Alpha</option>
                                </select><br>
                            </div>
                        </div>

                        <div class="row control-group">
                            <div id="divmodeles" class="form-group col-xs-12 floating-label-form-group controls" hidden>
                                <select data-style="btn-primary" name="Modeles" id="marquesModels" class="form-control  " required data-validation-required-message="Merci d'entrer un modele ." >
                                    <option>MODELES</option>                         
                                </select><br>
                            </div>
                        </div>

                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <select data-style="btn-primary" onchange="mesFormules()" name="Formules" id="formules" class="form-control  " required data-validation-required-message="Merci d'entrer un modele ." >
                                    <option value="0">VOTRE FORMULE</option> 
                                    <option>TIER</option>
                                    <option>INTERMEDIARE</option>
                                    <option>TOUS RISQUES</option>
                                </select><br>
                            </div>
                        </div>
                        <div id="montant"  name="Montant" hidden >
                            <p id="p1" > 
                            <h4>
                                Montant de la Prime :<br>
                                <br>
                                <input class="btn btn-primary btn-lg btn-block" type="submit" value="Calcul Du Montant" name="Montant"/><br>
                            </h4>
                            </p>
                        </div>
                        <input class="btn btn-primary btn-lg btn-block" type="reset" value="Recommencer" name="reset" />
                        <input class="btn btn-primary btn-lg btn-block" type="submit" value="Récap de Vos Informations" name="Valider" /><br>
                    </form>
                </div>
            </div>
        </div>

    </body>
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



</form>
</div>
</div>
</div>
</body>
</html>


<!--                        <div class="row control-group">                           
                                                   <div class="form-group col-xs-12 floating-label-form-group controls formulairectrl">
                                                       <input type="text" class="form-control" placeholder="Nom" name="nom" required data-validation-required-message="Merci d'entrer un nom.">
                                                       <p class="help-block text-danger"></p>
                                                   </div>
                                               </div>
                                               <div class="row control-group">
                                                   <div class="form-group col-xs-12 floating-label-form-group controls">
                                                       <input type="text" class="form-control" placeholder="Prenom" name="prenom" required data-validation-required-message="Merci d'entrer un prénom .">
                                                       <p class="help-block text-danger"></p>
                                                   </div>
                                               </div>
                       
                                               <div class="row control-group">
                                                   <div class="form-group col-xs-12 floating-label-form-group controls">
                                                       <input type="tel" class="form-control" placeholder="Numéro de Téléphone" name="numeroDeTel" required data-validation-required-message="Merci d'entrer un numéro valide.">
                                                       <p class="help-block text-danger"></p>
                                                   </div>
                                               </div>
                                               <div class="row control-group">
                                                   <div class="form-group col-xs-12 floating-label-form-group controls">
                                                       <input type="text" class="form-control" placeholder="Adresse" name="adresse" required data-validation-required-message="Merci d'entrer une adresse .">
                                                       <p class="help-block text-danger"></p>
                                                   </div>
                                               </div>-->