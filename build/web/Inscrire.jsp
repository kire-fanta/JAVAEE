<%-- 
    Document   : Inscrire.jsp
    Created on : 25 juil. 2022, 09:31:25
    Author     : mfkire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fatoumata KIRE</title>
    </head>
    
    <body>
        
        <div class="moy">  
            
            ${error}
            <h2> FORMULAIRE D'INSCRIPTION </h2>
         <form action="MonServlet" method="POST"> 
          </br>

        </br>Nom </br> <input type="text" name="nom" placeholder='Nom'/>
        </br>
        </br> Prénom </br><input type="text" name="prenom" placeholder="XXXXX" />
        </br>
         </br> Pseudo </br><input type="text" name="pseudo" placeholder="XXXXX"  />
        </br>
         </br> Email </br><input type="email" name="email" placeholder="abc@gmail.com" />
        </br>
        </br> Mot de passe </br><input type="password" name="mot1" minlenght{8}" placeholder="Fatoumata"  />
        </br>
         </br> Confirmer de mot de passe </br><input type="password" name="mot2" minlength="8" placeholder="Fatoumata" width="92px"/>
        </br>
        </br>
        <input name="action" type="submit" value="Se connecter"/>
        <input name="action" type="reset" value="Annuler"/>
         
         
         </form>
            
          
  
      
        
      </div>  
        
        <style>
            *{
                    text-align: center;
             }
             .moy{
                     border-radius: 46px;
    position: relative;
    width: 320px;
    height: 600px;
    left: 601px;
    top: 221px;
    margin-block: 222PX;
    box-shadow: -29px 10px 15px #c5c5c5;
        background: lightblue;
             }
             form {
    background: lightblue;
}
        h2 {
    background: lightblue;
}
            
        </style>
      
    </body>
</html>
