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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Raúl Pérez
 */
@WebServlet(name = "LoginClienteController", urlPatterns = {"/LoginClienteController"})
public class LoginClienteController extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String dni = request.getParameter("dni");
        String password = request.getParameter("pwd");
        
        Operaciones op = new Operaciones();        
      
        if (op.validarCliente(dni, password)) {
            HttpSession sesion = request.getSession(true);
            sesion.setAttribute("dni",dni);
            response.sendRedirect("prin.jsp");
        } else {
            request.setAttribute("error", "No existe ningún usuario!"); 
            response.sendRedirect("index.jsp");
        }
    }
}
