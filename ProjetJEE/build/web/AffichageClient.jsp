<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Affichage d'un client</title>
        
        <!-- Bootstrap core CSS -->
        <link href="style/bootstrap.min.css" rel="stylesheet">
        <link href="style/bootstrap.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="style/shop-homepage.css" rel="stylesheet">
    </head>
    <body>
    <!-- Navigation -->
    <jsp:include page="Header.jsp" />
    
        <%-- Affichage de la chaîne "message" transmise par la servlet --%>
        <p class="info">${ message }</p>
        <%-- Puis affichage des données enregistrées dans le bean "client" transmis par la servlet --%>
        <p>Nom : ${ client.nom }</p>
        <p>Prénom : ${ client.prenom }</p>
        <p>Adresse : ${ client.adresse }</p>
        <p>Numéro de téléphone : ${ client.telephone }</p>
        <p>Email : ${ client.email }</p>

     <!-- Navigation -->
    <jsp:include page="Footer.jsp" />
    </body>

</html>