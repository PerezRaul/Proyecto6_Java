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
public class Producto {
    private int pro_id;
    private String pro_nombre;
    private int pro_cantidad;
    private double pro_precio;
    private int pro_estado;
    
    /////////////////// Getters ///////////////////

    public int getPro_id() {
        return pro_id;
    }

    public String getPro_nombre() {
        return pro_nombre;
    }

    public int getPro_cantidad() {
        return pro_cantidad;
    }

    public double getPro_precio() {
        return pro_precio;
    }

    public int getPro_estado() {
        return pro_estado;
    }
    
    
    
    //////////////////////// Setters ///////////////////

    public void setPro_id(int pro_id) {
        this.pro_id = pro_id;
    }

    public void setPro_nombre(String pro_nombre) {
        this.pro_nombre = pro_nombre;
    }

    public void setPro_cantidad(int pro_cantidad) {
        this.pro_cantidad = pro_cantidad;
    }

    public void setPro_precio(double pro_precio) {
        this.pro_precio = pro_precio;
    }

    public void setPro_estado(int pro_estado) {
        this.pro_estado = pro_estado;
    }
    
    
    
    /////////////////////// Constructores //////////////

    public Producto() {
    }

    public Producto(int pro_id, String pro_nombre, int pro_cantidad, double pro_precio, int pro_estado) {
        this.pro_id = pro_id;
        this.pro_nombre = pro_nombre;
        this.pro_cantidad = pro_cantidad;
        this.pro_precio = pro_precio;
        this.pro_estado = pro_estado;
    }
    
    
}
