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
    
    <!-- Navigation -->
    <jsp:include page="Header.jsp" />
    
    <body>
        <div class="container">
        <div class="col-lg-9">
            <!-- action : Lien vers la serlvet en chage d'afficher le client créé-->
            <form method="post" action="Client">
                <fieldset>
                    <h4>Informations clients</h4>
                    <table>
                    <tr>
                      <th><label for="nomClient">Nom</label></th>
                      <td><input type="text" id="nomClient" name="nomClient" value="${client.nom}" size="20" maxlength="20" required/></td>
                    </tr>
                    <tr>
                      <th><label for="prenomClient">Prénom </label></th>
                      <td><input type="text" id="prenomClient" name="prenomClient" value="${client.prenom}" size="20" maxlength="20" required/></td>
                    </tr>
                    <tr>
                      <th><label for="adresseClient">Adresse de livraison</label></th>
                      <td><input type="text" id="adresseClient" name="adresseClient" value="${client.adresse}" size="20" maxlength="50" required/></td>
                    </tr>
                    <tr>
                      <th><label for="telephoneClient">Numéro de téléphone</label></th>
                      <td><input type="text" id="telephoneClient" name="telephoneClient" value="${client.telephone}" size="20" maxlength="10" required/></td>
                    </tr>
                    <tr>
                      <th><label for="emailClient">Adresse email</label></th>
                      <td><input type="email" id="emailClient" name="emailClient" value="${client.email}" size="20" maxlength="50" /></td>
                    </tr>
                    <tr>
                        <%-- Affichage de la chaîne "message" transmise par la servlet --%>
                        <th><p class="bg-warning">${ message }</p></th>
                    </tr>
                    </table>
                </fieldset>
                <input type="submit" value="S'inscrire"/>
                <input type="reset" value="Remettre à zéro" /> 
            </form>
                    <br/>
        </div>
        </div>
        
        <!-- Footer -->
    <jsp:include page="Footer.jsp" />
    </body>
</html>