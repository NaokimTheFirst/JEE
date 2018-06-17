//package Servlet;
//
//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import Beans.*;
//import org.joda.time.DateTime;
//import org.joda.time.format.DateTimeFormat;
//import org.joda.time.format.DateTimeFormatter;
//
//@WebServlet(urlPatterns = {"/ServletCommandes"})
//public class ServletCommandes extends HttpServlet {
//
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//       
//        
//    }
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        
//        
//        String nom = request.getParameter( "nomClient" );
//        String prenom = request.getParameter( "prenomClient" );
//        String adresse = request.getParameter( "adresseClient" );
//        String telephone = request.getParameter( "telephoneClient" );
//        String email = request.getParameter( "emailClient" );
//
//        /* Récupération de la date courante */
//        DateTime dt = new DateTime();
//        /* Conversion de la date en String selon le format défini */
//        DateTimeFormatter formatter = DateTimeFormat.forPattern( "dd/MM/yyyy HH:mm:ss" );
//        String date = dt.toString( formatter );
//        double montant;
//        try {
//            /* Récupération du montant */
//            montant = Double.parseDouble( request.getParameter( "montantCommande" ) );
//        } catch ( NumberFormatException e ) {
//            /* Initialisation à -1 si le montant n'est pas un nombre correct */
//            montant = -1;
//        }
//        String modePaiement = request.getParameter( "modePaiementCommande" );
//        String statutPaiement = request.getParameter( "statutPaiementCommande" );
//        String modeLivraison = request.getParameter( "modeLivraisonCommande" );
//        String statutLivraison = request.getParameter( "statutLivraisonCommande" );
//
//        String message = "";
//        /*
//         * Initialisation du message à afficher : si un des champs obligatoires
//         * du formulaire n'est pas renseigné, alors on affiche un message
//         * d'erreur, sinon on affiche un message de succès
//         */
//        
////        if ( nom.trim().isEmpty() || adresse.trim().isEmpty() || telephone.trim().isEmpty() || montant == -1
////                || modePaiement.isEmpty() || modeLivraison.isEmpty() ) {
////            message = "Erreur - Vous n'avez pas rempli tous les champs obligatoires. <br> <a href=\"creerCommande.jsp\">Cliquez ici</a> pour accéder au formulaire de création d'une commande.";
////        } else {
////            message = "Commande créée avec succès !";
////        }
//        /*
//         * Création des beans Client et Commande et initialisation avec les
//         * données récupérées
//         */
//        Client client = new Client();
//        client.setNom( nom );
//        client.setPrenom( prenom );
//        client.setAdresse( adresse );
//        client.setTelephone( telephone );
//        client.setEmail( email );
//
//        Commande commande = new Commande();
//        commande.setClient( client );
//        commande.setDate( date );
//        commande.setMontant( montant );
//        commande.setModePaiement( modePaiement );
//        commande.setStatutPaiement( statutPaiement );
//        commande.setModeLivraison( modeLivraison );
//        commande.setStatutLivraison( statutLivraison );
//
//        /* Ajout du bean et du message à l'objet requête */
//        request.setAttribute( "commande", commande );
//        request.setAttribute( "message", message );
//
//        //Affiche la vue JSP correspondante
//        this.getServletContext().getRequestDispatcher( "/Commandes.jsp" ).forward( request, response );
//        
//        processRequest(request, response);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }
//
//}
