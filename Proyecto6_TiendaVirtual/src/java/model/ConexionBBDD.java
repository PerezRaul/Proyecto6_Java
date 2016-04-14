/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;
/**
 *
 * @author Raúl Pérez
 */
public class ConexionBBDD {
    public ConexionBBDD(){
    };
    
    public Connection conectar() {
        Connection con=null;
        try {
            Class.forName("org.gjt.mm.mysql.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/bbdd_tiendavirtual","root","");
        } catch (ClassNotFoundException  e) {
            JOptionPane.showConfirmDialog(null, e);
        } catch (SQLException e){
            JOptionPane.showConfirmDialog(null, e);
        }
        return con;
    }
}
