<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : recapjspjsp
    Created on : 20 déc. 2016, 11:49:41
    Author     : lapin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--       Theme  CSS-->
        <link href="../css/arcade.css" rel="stylesheet" type="text/css"/>
        <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

        <!-- Theme CSS -->
        <link href="css/freelancer.min.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
        <link href="css/mesStyles.css" rel="stylesheet" type="text/css"/>
        <!--<link href="css/mesStyles2.css" rel="stylesheet" type="text/css"/>-->
        <title>Recap de Vos Informations</title>
        <style>
            body{background-color: #18BC9C;} 
        </style>
        <!--        <script>
                    document.getElementById("ctnr").innerHTML = Date();
                </script> -->
    </head>
    <body>

        <div class="container">
            <h1>Récap de Vos Informations</h1>
            <table class="table table-condensed"  id="recapinfos" border="4" border-style="">
                <tr class="active">
                    <td class="success"> Utilisation :${devis.recap.utilisationVehicule}</td>
                    <td class="success"> Kilometrage:${devis.recap.kilometrage}</td>                    
                    <td class="success"> Marque :${devis.recap.marque}</td>
                    <td class="success"> Modeles:${devis.recap.modele}</td>
                    <td class="success">Formule: ${devis.recap.formule}</td>
                    <td class="success"> Montant de Votre Assurance : ${devis.recap.montant}</td>
                    <td class="success"> Nom : ${devis.client.nom}</td>
                </tr>
            </table>
        </div> 
        
       
        <div class="centerize">           
            <input class="buttonInfosOk"  type="submit" id="InfosOK"  value="OK! " name="Infos OK !" /><br><br>
            <input type="submit" value="retour"  name="retour" onclick="WEB-INF/accueiljsp.jsp"  />
        </div> 
        <footer class="text-center resume-footer"  >
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
    </body>
</html>
<!-- <br/>-->