/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Com.kire.MonServletJsp;

/**
 *
 * @author mfkire
 */
public class Utilisateurs {
    String nom,prenom,psuedo,email,mot;

    public Utilisateurs(String nom, String prenom, String psuedo, String email, String mot) {
        this.nom = nom;
        this.prenom = prenom;
        this.psuedo = psuedo;
        this.email = email;
        this.mot = mot;
    }

    
    
    public String getEmail() {
        return email;
    }

    public String getMot() {
        return mot;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getPsuedo() {
        return psuedo;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setMot(String mot) {
        this.mot = mot;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPsuedo(String psuedo) {
        this.psuedo = psuedo;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
    
    
    
}
