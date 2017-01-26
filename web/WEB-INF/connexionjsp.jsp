<%-- 
    Document   : connexionjsp
    Created on : 25 janv. 2017, 10:37:21
    Author     : lapin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <title>Connexion Client</title>
    </head>
    <body>
        <!--action="login avec mot de passe "-->
        <form id="login-form" action="Assurance2017Controleur?cmd=essaiconnexion" method="post" role="form" style="display: block;">
<!--            <div class="form-group">
                <input type="email" name="email" id="email" tabindex="1" class="form-control requis" placeholder="Email Address" >"
                <span class="erreur"></span>
            </div>-->
            <div class="form-group">
                <input type="text"  name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value=""/>
                <span class="erreur">${form.erreurs['username']}</span>               
            </div>
            <br>
            <div class="form-group">
                <input type="telephone" name="telephone" id="telephone" tabindex="2" class="form-control requis" placeholder="Telephone">
                <span class="erreurs" >${form.erreurs['telephone']}</span>
            </div>
            <br>
            <div class="form-group text-center">
<!--                <input type="checkbox" tabindex="3" class="" name="remember" id="remember">
                <label for="remember"> Remember Me</label>-->
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3">
                        <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
                        <br>
                        <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>

                    </div>
                </div>
            </div>
<!--            <div class="form-group">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center">
                            <a href="http://phpoll.com/recover" tabindex="5" class="forgot-password">Forgot Password?</a>
                        </div>
                    </div>
                </div>
            </div>-->
        </form>
        
        <!--action="http://phpoll.com/register/process" / enregistrement creation de compte-->
<!--        <form id="register-form" name="enregistrement" action="connexion" method="POST" role="form" style="display: none;">
            <div class="form-group">
                <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
            </div>
            <div class="form-group">
                <input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email Address" value="">
            </div>
            <div class="form-group">
                <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
            </div>
            <div class="form-group">
                <input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirm Password">
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3">
                        <input type="submit" name="rconnexion-submit" id="connexion-submit" tabindex="4" class="form-control btn btn-register" value="Connexion">
                    </div>
                </div>
            </div>
        </form>  -->
    </body>
</html>
