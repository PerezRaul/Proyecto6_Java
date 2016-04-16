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
@WebServlet(name = "ModificarProductoController", urlPatterns = {"/ModificarProductoController"})
public class ModificarProductoController extends HttpServlet {

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
        String idProducto = request.getParameter("id");
        int idPro = Integer.parseInt(idProducto);
        pro.setPro_id(idPro);
        pro.setPro_nombre(request.getParameter("nombre"));
        String cantidadStr = request.getParameter("cantidad");
        int cantidad = Integer.parseInt(cantidadStr);
        pro.setPro_cantidad(cantidad);
        String precioStr = request.getParameter("precio");
        int precio = Integer.parseInt(precioStr);
        pro.setPro_precio(precio);
      
        if (op.modificarProducto(pro)) {
            response.sendRedirect("gestionar_productos.jsp");
        } else {
            response.sendRedirect("modificar_producto.jsp?idProd="+idPro);
        }
    }
}