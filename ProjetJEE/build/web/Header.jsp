<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!--pour pouvoir print en faisant <c : out> -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="Accueil.jsp">La Halle aux Chaussettes</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <!--Affiche l'onglet "S'inscrire" et "Se connecter" si l'utilisateur n'est pas connecté-->
            <c:if test="${empty sessionScope.client}">
            <li class="nav-item">
                <a class="nav-link" href="Connection">Se Connecter</a>
            </li>
            <li class="nav-item"> 
                 <a class="nav-link" href="Client.jsp">S'inscrire</a>
            </li>
            </c:if>
            <!--Affiche l'onglet "Panier,"Profil" et "Se Déconnecter" si l'utilisateur est connecté-->
            <c:if test="${not empty sessionScope.client}">
                <li class="nav-item">
                  <a class="nav-link" href="Panier">Panier</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Commandes">Commandes</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="AffichageClient.jsp">Profil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Deconnection">Se déconnecter</a>
                </li>
            </c:if>
          </ul>
        </div>
      </div>
    </nav>
    </body>
</html>
