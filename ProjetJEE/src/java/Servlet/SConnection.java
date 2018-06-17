package Servlet;

import BD.DAOClient;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Beans.Client;
import javax.servlet.http.HttpSession;

public class SConnection extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        this.getServletContext().getRequestDispatcher( "/Connection.jsp" ).forward( request, response );
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String page;
        String message;
        Client client = null;
        
        String nom = request.getParameter( "nomClient" );
        String prenom = request.getParameter( "prenomClient" );
        
        if(DAOClient.CheckBD(nom, prenom) == true){
            page ="/AffichageClient.jsp";                                       //On se redirige vers la page des informations du client
            client = DAOClient.GetClient(nom, prenom);
            message = "Bienvenu(e) "+client.getPrenom()+" "+client.getNom()+" !";
            //On crée une session et on lui ajoute l'attribut client
            HttpSession session = request.getSession();                         
            session.setAttribute( "client", client );
        } else {
            page ="/Connection.jsp";
            message = "Identifiant ou Mot de Passe incorrect";
        }
        
        /* Ajout du bean et du message à l'objet requête */
        request.setAttribute( "client", client );
        request.setAttribute( "message", message );
        
        /* Transmission à la page JSP en charge de l'affichage des données */
        this.getServletContext().getRequestDispatcher(page).forward( request, response );
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
