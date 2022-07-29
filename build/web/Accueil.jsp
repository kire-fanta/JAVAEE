<%-- 
    Document   : Accueil.jsp
    Created on : 25 juil. 2022, 10:07:04
    Author     : mfkire
--%>
<%@page import="java.util.*"%>
<%@page import="Com.kire.MonServletJsp.Utilisateurs"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String pseudo = request.getParameter("pseudo");
            String mot1 = request.getParameter("mot1");
            String mot2 = request.getParameter("mot2");
            String email = request.getParameter("email");

        %>
        <h3><p> Bienvenue <%= pseudo %> </p></h3> 

        </br>
        </br>
  

        <form action="MonServlet2" method="POST">
            <br>
            <input name="action" type="submit" value="Deconnecter"/>
        </form>
            
            <style>
                table{
                    border: 1px solid black;
                }
                td{
                    border: 1px solid black;
                }
            </style>
            
            
         <div class="matable col-lg-8" align="center">
                    <table class="table" id="table">
                        <thead class="color-blue">
                        <th>Nom</th> <th> Prénom </th> <th> Pseudo </th> <th> Email </th>
                        </thead>
                        <tbody>
                        <%
                            /*List<Utilisateurs> users = (List)session.getAttribute("liste");*/

                            List<Utilisateurs> users=(ArrayList<Utilisateurs>)session.getAttribute("liste");
                            for(Utilisateurs user : users)
                            {
                        %>

                                  <tr>
                                 <td> <% out.print(user.getNom()); %></td>
                                   <td><% out.print(user.getPrenom()); %></td>
                                  <td><% out.print(user.getPsuedo()); %></td>
                                  <td> <% out.print(user.getEmail()); %></td>
                                </tr>


                        <%
                            } 
                        %>
                  </tbody>
                    </table>
                </div>   
            
            
            
            
            
            
    </body>
</html>
