package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Beans.*;

public class Servlet1 extends HttpServlet {
       
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }
    
    @Override
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        //Transmission d'un attribut String "test" à la page
        String Fautif = request.getParameter("fautif");
        String PhysiqueDeJulien = Fautif + "20/20 Body of the Year, mention Lauréal Garnier, Bravo !";
        request.setAttribute("test",PhysiqueDeJulien);
        
        //Bean
        Bean1 pBean= new Bean1();
        pBean.setPrenom("Julien");
        pBean.setNom("Oui");
        
        request.setAttribute("nomduBean", pBean);
       
        
        //Affiche la vue JSP correspondante
        this.getServletContext().getRequestDispatcher( "/View1.jsp" ).forward( request, response );

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
