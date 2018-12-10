/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

/**
 *
 * @author qs
 */
public class Post {
    private String titre;
    private String contenu;
    private String type;

    public Post(String titre, String contenu, String type) {
        this.titre = titre;
        this.contenu = contenu;
        this.type = type;
    }

    public Post() {
    }

    

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public String getContenu() {
        return contenu;
    }

    public void setContenu(String contenu) {
        this.contenu = contenu;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    
    

   
    
    
}
