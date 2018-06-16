

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- Inclus la vue en-tête (dynamique) 
    Il faut importer tous les imports de la vue appelée !
--%>
<jsp:include page="Header.jsp" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ceci est une vue générée par une page JSP </h1>
        <p>
            <%-- Les commentaires --%>
            <%!
                String attribut = "Les déclarations"; 
            %>
            <%= 
                "Equivalent du print" 
            %>
            <br>
            <% 
                attribut = (String) request.getAttribute("test");
                out.println(attribut); 

                String oui = (String) request.getParameter("fautif");
                out.println("Voilà le paramètre -> " + oui);
            %>
        </p>
        <p>
            <!--Bean 1 :-->
            <%-- Récupère un Bean et le crée s'il n'existe pas --%>
            <jsp:useBean id="BeanUtilisateur" class="Beans.Bean1" scope="request" />
           
            <%-- Définit l'attribut prénom de ce bean --%>
            <jsp:setProperty name="BeanUtilisateur" property="prenom" value="Utilisateur beubeu la fripouille" />
            
            <%-- Récupère l'attribut "prenom" de ce bean --%>
            <jsp:getProperty name="BeanUtilisateur" property="prenom" />
             <%-- NIVEAU 3 : Récupère l'attribut "prenom" de ce bean avec les EL --%>
            ${notreBean.prenom}
        </p>
        <!--<p>-->
            Bean 2 :
            <%-- Récupère un Bean existant et affiche ses variables --%>
            <% 
//                Beans.Bean1 notreBean = (Beans.Bean1) request.getAttribute("nomduBean");
//                 out.println("Prenom " + notreBean.getPrenom() );
//                 out.println("Nom " + notreBean.getNom() );
                 
            %>
        </p>
        <p>
            Langue: ${param.langue}
        </p>
    </body>
</html>

<%-- Inclus la vue pied de page (statique) --%>
<%@ include file="Footer.jsp" %>

<%-- La redirection
    <jsp:forward page="/WEB-INF/Client.jsp"/>
--%>
