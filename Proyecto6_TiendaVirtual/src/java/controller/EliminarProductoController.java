/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Producto;

/**
 *
 * @author Raúl Pérez
 */
@WebServlet(name = "EliminarProductoController", urlPatterns = {"/EliminarProductoController"})
public class EliminarProductoController extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        
        Operaciones op = new Operaciones();
        Producto pro = new Producto();
        String ident = request.getParameter("id");
        int id = Integer.parseInt(ident);
        pro.setPro_id(id);
      
        if (op.eliminarProducto(pro)) {
            response.sendRedirect("gestionar_productos.jsp");
        } else {
            response.sendRedirect("gestionar_productos.jsp");
        }
    }
}