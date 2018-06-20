<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!--pour pouvoir print en faisant <c : out> -->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recherche</title>
        
         <!-- Bootstrap core CSS -->
        <link href="style/bootstrap.min.css" rel="stylesheet">
        <link href="style/bootstrap.css" rel="stylesheet">
        <link href="style/CSS1.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="style/shop-homepage.css" rel="stylesheet">
    </head>
    <body>
    <!-- Vue Header -->
    <jsp:include page="Header.jsp" />
     <div class="container">
        <div class="col-lg-9">
            <form method="post" action="SRecherche">
                <fieldset>
                <table>
                    <tr>
                        <p> Recherchez un Hotel disponible :</p>
                    </tr>
                    <tr>
                      <th><label for="jour">Jour</label></th>
                      <td><input class="input" type="text" name="jour"  size="5" maxlength="2" required/></td>
                    </tr>
                    <tr>
                        <th><label for="statut">Statut </label></th>
                        <td><input type="radio" name="statut" value="VIP" checked> VIP
                            <input type="radio" name="statut" value="Juré"> Juré
                        </td>
                    </tr>
               </table>
                <div style="position: relative; right: 0; margin-left: 500px;">
               <input class="btn btn-default btn-sm" type="submit" name="action" value="Rechercher"/>
                </div>
                </fieldset>

            </form>
             <br>
            
            <form method="post" action="SRecherche">
                
                <table class="table table-striped">
                    
                    <tr>
                        <th>NomHebergement :</th><th>Type :</th><th>Adresse :</th><th>Service :</th><th>Choisir :</th>
                    </tr>
                    <c:forEach items="${hotels}" var="h">
                        <tr>
                            <td>${h.nomhebergement}</td><td>${h.type}</td><td>${h.adresse}</td><td>${h.services}</td>
                            <td><input type="radio" name ="choix" value="${h.nomhebergement}"></td>
                        </tr>
                    </c:forEach>
                </table>
<!--                <label for="nomVIP">NOM VIP :</label>-->
<!--                <input type="text" name="nomVIP"  size="20" maxlength="20" required/>
                <input type="submit" name="action" value="Valider"/>-->
                  <div class="col-lg-6">
                    <div class="input-group">
                       <input type="text" name="nomVIP" size="20" maxlength="20" class="form-control" placeholder="Nom du VIP à affecter" required>
                       <span class="input-group-btn">
                          <input class="btn btn-default btn-sm" name="action" type="submit"></input>
                       </span>
                    </div>
                 </div>
            </form>
             <br>
             <%-- Affichage de la chaîne "message" transmise par la servlet --%>
              <p>${message}</p>
              <br>
        </div>
        </div>
    <!-- Vue Footer -->
    <jsp:include page="Footer.jsp" />
    </body>
</html>
