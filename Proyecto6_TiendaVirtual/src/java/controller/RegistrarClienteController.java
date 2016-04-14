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
@WebServlet(name = "RegistrarClienteController", urlPatterns = {"/RegistrarClienteController"})
public class RegistrarClienteController extends HttpServlet {

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
        cli.setCli_nombre(request.getParameter("nombre"));
        cli.setCli_DNI(request.getParameter("dni"));
        cli.setCli_direccion(request.getParameter("direccion"));
        cli.setCli_cp(request.getParameter("cp"));
        cli.setCli_email(request.getParameter("email"));
        cli.setCli_telefono(request.getParameter("telf"));
        cli.setCli_password(request.getParameter("pwd"));
        cli.setCli_estado(0);
        cli.setRol_id(1);
      
        if (op.registrarCliente(cli)) {
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("registrar_cliente.jsp");
        }
    }
}