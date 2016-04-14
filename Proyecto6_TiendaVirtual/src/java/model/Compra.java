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
public class Compra {
    private int com_id;
    private String com_fecha;
    private int com_cantidad;
    private int prod_id;
    private int cli_id;
    
    /////////////////// Getters ///////////////////

    public int getCom_id() {
        return com_id;
    }

    public String getCom_fecha() {
        return com_fecha;
    }

    public int getCom_cantidad() {
        return com_cantidad;
    }

    public int getProd_id() {
        return prod_id;
    }

    public int getCli_id() {
        return cli_id;
    }
    
    ////////////////// Setters ////////////////////////

    public void setCom_id(int com_id) {
        this.com_id = com_id;
    }

    public void setCom_fecha(String com_fecha) {
        this.com_fecha = com_fecha;
    }

    public void setCom_cantidad(int com_cantidad) {
        this.com_cantidad = com_cantidad;
    }

    public void setProd_id(int prod_id) {
        this.prod_id = prod_id;
    }

    public void setCli_id(int cli_id) {
        this.cli_id = cli_id;
    }
    
    ////////////////// Constructores //////////////////

    public Compra() {
    }

    public Compra(int com_id, String com_fecha, int com_cantidad, int prod_id, int cli_id) {
        this.com_id = com_id;
        this.com_fecha = com_fecha;
        this.com_cantidad = com_cantidad;
        this.prod_id = prod_id;
        this.cli_id = cli_id;
    }
    
    
}
