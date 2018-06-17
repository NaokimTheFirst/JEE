<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!--pour pouvoir print en faisant <c : out> -->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Commandes</title>
        
         <!-- Bootstrap core CSS -->
        <link href="style/bootstrap.min.css" rel="stylesheet">
        <link href="style/bootstrap.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="style/shop-homepage.css" rel="stylesheet">
    </head>
    <body>
    <!-- Vue Header -->
    <jsp:include page="Header.jsp" />
    <div class="container">
        <div class="col-lg-9">
            <table class="table table-striped">
                <tr>
                    <th>N° Commande :</th><th>Montant :</th><th>Date de la Commande:</th><th>Etat :</th><th>Date Livraison :</th>
                </tr>
                <c:forEach items="${commandes}" var="c">
                <tr>
                    <td>${c.idCommande}</td><td>${c.montant}</td><td>${c.date}</td><td>${c.statutLivraison}</td><td>${c.dateLivraison}</td>
                </tr>
                </c:forEach>
        </table>
        </div> 
    </div> 
    <!-- Vue Footer -->
    <jsp:include page="Footer.jsp" />
    </body> 
</html>
