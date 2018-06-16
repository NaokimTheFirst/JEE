package Servlet;

import BD.BD;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
@WebServlet(urlPatterns = {"/test"})
public class test extends HttpServlet {
    public static final String ATT_MESSAGES = "messages";
    public static final String VUE   = "/WEB-INF/AffichageBD.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String message= "";
        
        ResultSet result = BD.FaireRequete("Select * FROM SALLE");
        
        try{
            while(result.next()){
            message += " "+result.getString("NOM");
            }
        }catch (Exception e){
           message = e.getMessage();
        }
        

        /* Enregistrement de la liste des messages dans l'objet requête */
        request.setAttribute( ATT_MESSAGES, message );

        /* Transmission vers la page en charge de l'affichage des résultats */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
