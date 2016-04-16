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
import model.Cliente;

/**
 *
 * @author Raúl Pérez
 */
@WebServlet(name = "ActivarClienteController", urlPatterns = {"/ActivarClienteController"})
public class ActivarClienteController extends HttpServlet {

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
        Cliente cli = new Cliente();
        String ident = request.getParameter("id");
        int id = Integer.parseInt(ident);
        cli.setCli_id(id);
      
        if (op.activarCliente(cli)) {
            response.sendRedirect("gestionar_clientes.jsp");
        } else {
            response.sendRedirect("gestionar_clientes.jsp");
        }
    }
}