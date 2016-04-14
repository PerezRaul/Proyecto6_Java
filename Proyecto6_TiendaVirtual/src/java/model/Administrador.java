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
public class Administrador {
    private int adm_id;
    private String adm_nombre;
    private String adm_DNI;
    private String adm_direccion;
    private String adm_cp;
    private String adm_email;
    private String adm_telefono;
    private String adm_password;
    private int adm_estado;
    private int rol_id;
    
    ///////////////// Getters ////////////////

    public int getAdm_id() {
        return adm_id;
    }

    public String getAdm_nombre() {
        return adm_nombre;
    }

    public String getAdm_DNI() {
        return adm_DNI;
    }

    public String getAdm_direccion() {
        return adm_direccion;
    }

    public String getAdm_cp() {
        return adm_cp;
    }

    public String getAdm_email() {
        return adm_email;
    }

    public String getAdm_telefono() {
        return adm_telefono;
    }

    public String getAdm_password() {
        return adm_password;
    }
    
    public int getAdm_estado() {
        return adm_estado;
    }

    public int getRol_id() {
        return rol_id;
    }
    
    
    //////////////// Setters /////////////////

    public void setAdm_id(int adm_id) {
        this.adm_id = adm_id;
    }

    public void setAdm_nombre(String adm_nombre) {
        this.adm_nombre = adm_nombre;
    }

    public void setAdm_DNI(String adm_DNI) {
        this.adm_DNI = adm_DNI;
    }

    public void setAdm_direccion(String adm_direccion) {
        this.adm_direccion = adm_direccion;
    }

    public void setAdm_cp(String adm_cp) {
        this.adm_cp = adm_cp;
    }

    public void setAdm_email(String adm_email) {
        this.adm_email = adm_email;
    }

    public void setAdm_telefono(String adm_telefono) {
        this.adm_telefono = adm_telefono;
    }

    public void setAdm_password(String adm_password) {
        this.adm_password = adm_password;
    }

    public void setAdm_estado(int adm_estado) {
        this.adm_estado = adm_estado;
    }

    public void setRol_id(int rol_id) {
        this.rol_id = rol_id;
    }
    
    /////////////// Constructores /////////////////////

    public Administrador() {
    }

    public Administrador(int adm_id, String adm_nombre, String adm_DNI, String adm_direccion, String adm_cp, String adm_email, String adm_telefono, String adm_password, int adm_estado, int rol_id) {
        this.adm_id = adm_id;
        this.adm_nombre = adm_nombre;
        this.adm_DNI = adm_DNI;
        this.adm_direccion = adm_direccion;
        this.adm_cp = adm_cp;
        this.adm_email = adm_email;
        this.adm_telefono = adm_telefono;
        this.adm_password = adm_password;
        this.adm_estado = adm_estado;
        this.rol_id = rol_id;
    }
    
    
}
