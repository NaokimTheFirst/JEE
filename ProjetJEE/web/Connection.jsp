<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!--pour pouvoir print en faisant <c : out> -->
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Création d'un client</title>
       <!-- Bootstrap core CSS -->
        <link href="style/bootstrap.min.css" rel="stylesheet">
        <link href="style/bootstrap.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="style/shop-homepage.css" rel="stylesheet">
    </head> 
    
    <body>
    <!-- Vue Header -->
    <jsp:include page="Header.jsp" />
        <div>
            <!-- action : Lien vers la serlvet en chage d'afficher le client créé-->
            <form method="post" action="Connection">
                <fieldset>
                    <legend>Informations client</legend>
    
                    <label for="nomClient">Nom <span class="requis" >*</span></label>
                    <input type="text" id="nomClient" name="nomClient" value="${client.nom}" size="20" maxlength="20" required/>
                    <br />
                    
                    <label for="prenomClient">Prénom </label>
                    <input type="text" id="prenomClient" name="prenomClient" value="${client.prenom}" size="20" maxlength="20" required/>
                    <br />
                </fieldset>
                <input type="submit" value="Se Connecter"/>
                <input type="reset" value="Remettre à zéro"/> 
                <br/>
            </form>
            <%-- Affichage de la chaîne "message" transmise par la servlet --%>
             <p class="info">${ message }</p>
        </div>
    <!-- Vue Footer -->
    <jsp:include page="Footer.jsp" />
    </body>
</html>