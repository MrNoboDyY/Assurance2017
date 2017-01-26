<%-- 
    Document   : usagerjsp
    Created on : 19 déc. 2016, 22:27:36
    Author     : Milou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    </head>
    <body>
        <h1>Creation de Compte</h1>
        <form name="usager"  id="contactForm" action="Assurance2017Controleur?cmd=creacli" method="POST" novalidate>
            <div class="row control-group">
                <div class="form-group col-xs-12 floating-label-form-group controls">
                    <input name="nom" type="text" class="form-control" aria-describedby="nomSuccessStatus" placeholder="nom" id="nomSuccess" required data-validation-required-message="Please enter your email address.">
                    <p class="help-block text-danger"></p>
                </div>
            </div>
            <div class="row control-group">
                <div class="form-group col-xs-12 floating-label-form-group controls">
                    <input name="prenom" type="text" class="form-control" placeholder="prenom" id="prenom" required data-validation-required-message="Please enter your email address.">
                    <p class="help-block text-danger"></p>
                </div>
            </div>
            
            <div class="row control-group">
                <div class="form-group col-xs-12 floating-label-form-group controls">
                    <input name="adresse" type="text" class="form-control" placeholder="adresse" id="adresse" required data-validation-required-message="Please enter your phone number.">
                    <p class="help-block text-danger"></p>
                </div>
            </div>
            <div class="row control-group">
                <div class="form-group col-xs-12 floating-label-form-group controls">
                    <input name="telephone" type="text" class="form-control" placeholder="telephone" id="telephone" required data-validation-required-message="Please enter your phone number.">
                    <p class="help-block text-danger"></p>
                </div>
            </div>
            <br>
            
            <div id="success"></div>            
            <div class="row">
                <div class="form-group col-xs-12">
                    <button type="submit" class="btn btn-success btn-lg">Creation de Compte</button>
                    <br>
                    <br>
                    <label><input type="checkbox"> Se souvenir de moi</label>
                </div>
            </div>
        </form>
    </body>
</html>
