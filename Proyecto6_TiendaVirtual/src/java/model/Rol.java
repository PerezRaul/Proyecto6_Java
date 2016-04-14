/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Raúl Pérez
 */
public class Rol {
    private int rol_id;
    private String rol_nombre;
    
    //////////////////// Getters /////////////////////

    public int getRol_id() {
        return rol_id;
    }

    public String getRol_nombre() {
        return rol_nombre;
    }
    
    /////////////////////// Setters //////////////////

    public void setRol_id(int rol_id) {
        this.rol_id = rol_id;
    }

    public void setRol_nombre(String rol_nombre) {
        this.rol_nombre = rol_nombre;
    }
    
    ////////////////////////// Constructores ///////////////

    public Rol() {
    }

    public Rol(int rol_id, String rol_nombre) {
        this.rol_id = rol_id;
        this.rol_nombre = rol_nombre;
    }
    
    
}
