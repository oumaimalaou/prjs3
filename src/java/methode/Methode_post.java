/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package methode;

import db.Connect_BD;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.Post;

/**
 *
 * @author qs
 */
public class Methode_post {
    public void addPost(Post p) throws ClassNotFoundException, SQLException{
        PreparedStatement ps = Connect_BD.getPreparedStatement("insert into Post (titre,contenu,type)values(?,?,?);");
        ps.setString(1, p.getTitre());
        ps.setString(2, p.getContenu());
        ps.setString(3, p.getType());
        ps.executeUpdate();
    }
    
}
