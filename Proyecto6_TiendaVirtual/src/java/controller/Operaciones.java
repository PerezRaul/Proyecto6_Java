/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import model.Administrador;
import model.ConexionBBDD;
import model.Producto;

/**
 *
 * @author Raúl Pérez
 */
public class Operaciones {
    private ConexionBBDD conn = new ConexionBBDD();
    private Connection con = conn.conectar();
    private String sSQL = "";
    
    public boolean validarCliente(String dni, String password) {
        boolean estado = false;
        try {
            sSQL = "select * from tbl_cliente where cli_DNI = ? and cli_password = ?";

            PreparedStatement pst = con.prepareStatement(sSQL);
            pst.setString(1, dni);
            pst.setString(2, password);

            ResultSet rs = pst.executeQuery();
            estado = rs.next();

        } catch (Exception e) {
            System.out.println(e);
        }
        return estado;
    }
    
    public boolean validarAdmin(String user, String pass) {
        boolean estado = false;
        try {
            sSQL = "select * from tbl_administrador where adm_DNI = ? and adm_password = ?";

            PreparedStatement pst = con.prepareStatement(sSQL);
            pst.setString(1, user);
            pst.setString(2, pass);

            ResultSet rs = pst.executeQuery();
            estado = rs.next();

        } catch (Exception e) {
            System.out.println(e);
        }
        return estado;
    }
    
    public boolean registrarCliente (Cliente cli){
        sSQL = "insert into tbl_cliente(cli_nombre, cli_DNI, cli_direccion, cli_cp, cli_email, cli_telefono, cli_password, cli_estado, rol_id) values (?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement pst = con.prepareStatement(sSQL);
            pst.setString(1, cli.getCli_nombre());
            pst.setString(2, cli.getCli_DNI());
            pst.setString(3, cli.getCli_direccion());
            pst.setString(4, cli.getCli_cp());
            pst.setString(5, cli.getCli_email());
            pst.setString(6, cli.getCli_telefono());
            pst.setString(7, cli.getCli_password());
            pst.setInt(8, cli.getCli_estado());
            pst.setInt(9, cli.getRol_id());
            
            int n = pst.executeUpdate();
            if (n != 0){
                return true;
            }else{
                return false;
            }
        }catch(Exception e){
            return false;
        }
    }
    
    public boolean registrarClienteAdm (Cliente cli){
        sSQL = "insert into tbl_cliente(cli_nombre, cli_DNI, cli_direccion, cli_cp, cli_email, cli_telefono, cli_password, cli_estado, rol_id) values (?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement pst = con.prepareStatement(sSQL);
            pst.setString(1, cli.getCli_nombre());
            pst.setString(2, cli.getCli_DNI());
            pst.setString(3, cli.getCli_direccion());
            pst.setString(4, cli.getCli_cp());
            pst.setString(5, cli.getCli_email());
            pst.setString(6, cli.getCli_telefono());
            pst.setString(7, cli.getCli_password());
            pst.setInt(8, cli.getCli_estado());
            pst.setInt(9, cli.getRol_id());
            
            int n = pst.executeUpdate();
            if (n != 0){
                return true;
            }else{
                return false;
            }
        }catch(Exception e){
            return false;
        }
    }
    
    public boolean registrarAdministrador (Administrador adm){
        sSQL = "insert into tbl_administrador(adm_nombre, adm_DNI, adm_direccion, adm_cp, adm_email, adm_telefono, adm_password, adm_estado, rol_id) values (?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement pst = con.prepareStatement(sSQL);
            pst.setString(1, adm.getAdm_nombre());
            pst.setString(2, adm.getAdm_DNI());
            pst.setString(3, adm.getAdm_direccion());
            pst.setString(4, adm.getAdm_cp());
            pst.setString(5, adm.getAdm_email());
            pst.setString(6, adm.getAdm_telefono());
            pst.setString(7, adm.getAdm_password());
            pst.setInt(8, adm.getAdm_estado());
            pst.setInt(9, adm.getRol_id());
            
            int n = pst.executeUpdate();
            if (n != 0){
                return true;
            }else{
                return false;
            }
        }catch(Exception e){
            return false;
        }
    }
    
    public ArrayList leerClientes (ArrayList lista){
        sSQL = "select * from tbl_cliente";
        try {
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery(sSQL);
            while(rs.next()){
                Cliente cli = new Cliente();
                cli.setCli_id(rs.getInt("cli_id"));
                cli.setCli_nombre(rs.getString("cli_nombre"));
                cli.setCli_DNI(rs.getString("cli_DNI"));
                cli.setCli_direccion(rs.getString("cli_direccion"));
                cli.setCli_cp(rs.getString("cli_cp"));
                cli.setCli_email(rs.getString("cli_email"));
                cli.setCli_telefono(rs.getString("cli_telefono"));
                cli.setCli_password(rs.getString("cli_password"));
                cli.setCli_estado(rs.getInt("cli_estado"));
                cli.setRol_id(rs.getInt("rol_id"));
                lista.add(cli);
            }
            if (lista.size() == 0){
                lista.set(0, "No hay ningún cliente que mostrar");
                return lista;
            } else {
                return lista;
            }
        }catch(Exception e){
            lista.set(0, "No hay ningún cliente que mostrar");
            return lista;
        }
       
    }
    
    public ArrayList leerAdministradores (ArrayList lista){
        sSQL = "select * from tbl_administrador";
        try {
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery(sSQL);
            while(rs.next()){
                Administrador adm = new Administrador();
                adm.setAdm_id(rs.getInt("adm_id"));
                adm.setAdm_nombre(rs.getString("adm_nombre"));
                adm.setAdm_DNI(rs.getString("adm_DNI"));
                adm.setAdm_direccion(rs.getString("adm_direccion"));
                adm.setAdm_cp(rs.getString("adm_cp"));
                adm.setAdm_email(rs.getString("adm_email"));
                adm.setAdm_telefono(rs.getString("adm_telefono"));
                adm.setAdm_password(rs.getString("adm_password"));
                adm.setAdm_estado(rs.getInt("adm_estado"));
                adm.setRol_id(rs.getInt("rol_id"));
                lista.add(adm);
            }
            if (lista.size() == 0){
                lista.set(0, "No hay ningún administrador que mostrar");
                return lista;
            } else {
                return lista;
            }
        }catch(Exception e){
            lista.set(0, "No hay ningún administrador que mostrar");
            return lista;
        }
       
    }
    
    public ArrayList leerProductos (ArrayList lista){
        sSQL = "select * from tbl_producto";
        try {
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery(sSQL);
            while(rs.next()){
                Producto pro = new Producto();
                pro.setPro_id(rs.getInt("pro_id"));
                pro.setPro_nombre(rs.getString("pro_nombre"));
                pro.setPro_cantidad(rs.getInt("pro_cantidad"));
                pro.setPro_precio(rs.getDouble("pro_precio"));
                pro.setPro_estado(rs.getInt("pro_estado"));
                lista.add(pro);
            }
            if (lista.size() == 0){
                lista.set(0, "No hay ningún producto que mostrar");
                return lista;
            } else {
                return lista;
            }
        }catch(Exception e){
            lista.set(0, "No hay ningún producto que mostrar");
            return lista;
        }
       
    }
    
    
    /*public void mostrar (ArrayList lista){
        sSQL = "select * from tbl_cliente";
        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sSQL);
            while (rs.next()){
                Cliente cli = new Cliente();
                cli.setCli_id(rs.getInt("cli_id"));
                cli.setCli_nombre(rs.getString("cli_nombre"));
                cli.setCli_DNI(rs.getString("cli_DNI"));
                cli.setCli_direccion(rs.getString("cli_direccion"));
                cli.setCli_cp(rs.getString("cli_cp"));
                cli.setCli_email(rs.getString("cli_email"));
                cli.setCli_telefono(rs.getString("cli_telefono"));
                cli.setCli_password(rs.getString("cli_password"));
                cli.setRol_id(rs.getInt("rol_id"));
                lista.add(cli);
            }
        }catch(Exception e){
            
        }
    } 
    
    public boolean editar (Usuario user){
        sSQL = "UPDATE `usuario` SET `usu_dni`=?,`usu_password`=?,`rol_id`=?,`usu_nombre`=?,`usu_email`=? WHERE id=?";
        try {
            PreparedStatement pst = cn.prepareStatement(sSQL);
            pst.setString(1, user.getDni());
            pst.setString(2, user.getPassword());
            pst.setInt(3, user.getRol());
            pst.setString(4, user.getNombre());
            pst.setString(5, user.getEmail());
            pst.setInt(6, user.getId());
            
            int n = pst.executeUpdate();
            if (n != 0){
                return true;
            }else{
                return false;
            }
        }catch(Exception e){
            return false;
        }
    }
    public boolean desactivar (Usuario user){
        sSQL = "UPDATE `usuario` SET `usu_activo`=0 WHERE id=?";
        try {
            PreparedStatement pst = cn.prepareStatement(sSQL);
            pst.setInt(1, user.getId());    
            int n = pst.executeUpdate();
            if (n != 0){
                return true;
            }else{
                return false;
            }
        }catch(Exception e){
            return false;
        }
    }
    
    public boolean activar (Usuario user){
        sSQL = "UPDATE `usuario` SET `usu_activo`=1 WHERE id=?";
        try {
            PreparedStatement pst = cn.prepareStatement(sSQL);
            pst.setInt(1, user.getId());    
            int n = pst.executeUpdate();
            if (n != 0){
                return true;
            }else{
                return false;
            }
        }catch(Exception e){
            return false;
        }
    }*/
    
    
}
