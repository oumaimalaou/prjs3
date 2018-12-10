/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Utilisateur;
import methode.Methode_user;

/**
 *
 * @author qs
 */
@WebServlet(urlPatterns = {"/TestUser"})
public class TestUser extends HttpServlet {
 
   public List<String> erreur = new ArrayList<String>();
	Boolean result = false; 
  
   
    
    
    
  
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/FormInscrip.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
         String email = request.getParameter( "email" );
        String password = request.getParameter( "password" );
        String password2 = request.getParameter( "password2" );
        String username = request.getParameter( "username" );
        Utilisateur user = new Utilisateur();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);
       
           if ( email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) 
           
           {
                 if(password.equals(password2)){
           //System.out.println("Taper un autre mot de passe");
           //response.sendRedirect("FormInscrip.jsp");
                         
                     
           
       
                         Methode_user mt =new Methode_user();
        
      
                            try {
                             mt.addUser(user);
                            } catch (ClassNotFoundException | SQLException ex) {
                                Logger.getLogger(TestUser.class.getName()).log(Level.SEVERE, null, ex);
                             }
                           request.setAttribute("erreur2", "succes"); 
                         this.getServletContext().getRequestDispatcher("/FormInscrip.jsp").forward(request, response);

        
                 }else{
                     request.setAttribute("erreur", "Utilisateur ou mot de passe incorrect");
                         this.getServletContext().getRequestDispatcher("/FormInscrip.jsp").forward(request, response);
                 }
        
        /*
        Methode_user mt =new Methode_user();
        try {
            mt.addUser(user);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TestUser.class.getName()).log(Level.SEVERE, null, ex);
        }*/
        
        
        
        
        
        
             }else{
               request.setAttribute("erreur1", "email incorrect");
                         this.getServletContext().getRequestDispatcher("/FormInscrip.jsp").forward(request, response);
               }
     
    
    }
     

    
    
    
    
    
    
    
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
