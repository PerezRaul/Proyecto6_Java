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
public class Factura {
    private int fac_id;
    private String fac_fecha;
    private double fac_total;
    private int cli_id;
    private int com_id;
    
    /////////////////////// Getters ////////////////////

    public int getFac_id() {
        return fac_id;
    }

    public String getFac_fecha() {
        return fac_fecha;
    }

    public double getFac_total() {
        return fac_total;
    }

    public int getCli_id() {
        return cli_id;
    }

    public int getCom_id() {
        return com_id;
    }
    
    /////////////////////////// Setters ////////////////

    public void setFac_id(int fac_id) {
        this.fac_id = fac_id;
    }

    public void setFac_fecha(String fac_fecha) {
        this.fac_fecha = fac_fecha;
    }

    public void setFac_total(double fac_total) {
        this.fac_total = fac_total;
    }

    public void setCli_id(int cli_id) {
        this.cli_id = cli_id;
    }

    public void setCom_id(int com_id) {
        this.com_id = com_id;
    }
    
    ///////////////////// Constructores /////////////////

    public Factura() {
    }

    public Factura(int fac_id, String fac_fecha, double fac_total, int cli_id, int com_id) {
        this.fac_id = fac_id;
        this.fac_fecha = fac_fecha;
        this.fac_total = fac_total;
        this.cli_id = cli_id;
        this.com_id = com_id;
    }
    
    
}
