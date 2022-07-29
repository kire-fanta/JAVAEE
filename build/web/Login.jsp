<%-- 
    Document   : Login.jsp
    Created on : 25 juil. 2022, 10:08:58
    Author     : mfkire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2> CONNEXION </h2>
         <form action="Accueil.jsp" method="POST"> 
          </br>
           </br> Pseudo </br><input type="text" name="pseudo" required placeholder="XXXXX"  />
        </br>
         
        </br> Mot de passe </br><input type="password" name="mot" minlength="8"  required  placeholder="12345678" />
        </br>
        </br>
         <input name="action"  type="submit" value="Se connecter"/>
         </form>
        
    </body>
</html>
