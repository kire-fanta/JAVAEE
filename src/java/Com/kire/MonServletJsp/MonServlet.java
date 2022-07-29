/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Com.kire.MonServletJsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mfkire
 */
public class MonServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String nom = request.getParameter("nom");
        String prenom =request.getParameter("prenom");
        String pseudo =request.getParameter("pseudo");
        String mot1 =request.getParameter("mot1");
        String mot2 =request.getParameter("mot2");
        String email =request.getParameter("email");
        String error ="";
        
        if (!"".equals(nom) && !"".equals(prenom) && !"".equals(email )&& !"".equals(mot1)&&!"".equals(mot2))
        {
            
            if(mot1.equals(mot2)){
                
                
                HttpSession session = request.getSession();

               List<Utilisateurs> myArrayList = (List)session.getAttribute("liste");
               if(myArrayList == null) {

                   myArrayList=new ArrayList<Utilisateurs>();
               }
               Utilisateurs user = new Utilisateurs(nom, prenom, pseudo, email, mot1);

               myArrayList.add(user);
//
                 request.setAttribute("nom", nom);
                 request.setAttribute("prenom", prenom);
               session.setAttribute("liste", myArrayList);
                
                
           request.getRequestDispatcher("/Accueil.jsp").forward(request, response);

         }
        else{
            request.getRequestDispatcher("/Inscrire.jsp").forward(request, response);
            
        }
 
            
            
        }
               else 
        { 
            error= "VEUILLEZ RENSEIGNER TOUS LES CHAMPS ";
            request.setAttribute("error", error);
             request.getRequestDispatcher("/Inscrire.jsp").forward(request, response);
        }
       
    }
   

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
        processRequest(request, response);
        
       
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
        processRequest(request, response);
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
