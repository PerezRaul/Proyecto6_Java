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
public class Cliente {
    private int cli_id;
    private String cli_nombre;
    private String cli_DNI;
    private String cli_direccion;
    private String cli_cp;
    private String cli_email;
    private String cli_telefono;
    private String cli_password;
    private int cli_estado;
    private int rol_id;
    
    //////////////////// Getters ///////////////////

    public int getCli_id() {
        return cli_id;
    }

    public String getCli_nombre() {
        return cli_nombre;
    }

    public String getCli_DNI() {
        return cli_DNI;
    }

    public String getCli_direccion() {
        return cli_direccion;
    }

    public String getCli_cp() {
        return cli_cp;
    }

    public String getCli_email() {
        return cli_email;
    }

    public String getCli_telefono() {
        return cli_telefono;
    }

    public String getCli_password() {
        return cli_password;
    }

    public int getCli_estado() {
        return cli_estado;
    }

    public int getRol_id() {
        return rol_id;
    }
    
    //////////////////// Setters /////////////////////

    public void setCli_id(int cli_id) {
        this.cli_id = cli_id;
    }

    public void setCli_nombre(String cli_nombre) {
        this.cli_nombre = cli_nombre;
    }

    public void setCli_DNI(String cli_DNI) {
        this.cli_DNI = cli_DNI;
    }

    public void setCli_direccion(String cli_direccion) {
        this.cli_direccion = cli_direccion;
    }

    public void setCli_cp(String cli_cp) {
        this.cli_cp = cli_cp;
    }

    public void setCli_email(String cli_email) {
        this.cli_email = cli_email;
    }

    public void setCli_telefono(String cli_telefono) {
        this.cli_telefono = cli_telefono;
    }

    public void setCli_password(String cli_password) {
        this.cli_password = cli_password;
    }

    public void setCli_estado(int cli_estado) {
        this.cli_estado = cli_estado;
    }

    public void setRol_id(int rol_id) {
        this.rol_id = rol_id;
    }
    
    /////////////////////// Contstructores /////////////

    public Cliente() {
    }

    public Cliente(int cli_id, String cli_nombre, String cli_DNI, String cli_direccion, String cli_cp, String cli_email, String cli_telefono, String cli_password, int cli_estado, int rol_id) {
        this.cli_id = cli_id;
        this.cli_nombre = cli_nombre;
        this.cli_DNI = cli_DNI;
        this.cli_direccion = cli_direccion;
        this.cli_cp = cli_cp;
        this.cli_email = cli_email;
        this.cli_telefono = cli_telefono;
        this.cli_password = cli_password;
        this.cli_estado = cli_estado;
        this.rol_id = rol_id;
    }
    
    
}
