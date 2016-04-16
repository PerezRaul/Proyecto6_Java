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
import model.Administrador;

/**
 *
 * @author Raúl Pérez
 */
@WebServlet(name = "ActivarAdministradorController", urlPatterns = {"/ActivarAdministradorController"})
public class ActivarAdministradorController extends HttpServlet {

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
        Administrador adm = new Administrador();
        String ident = request.getParameter("id");
        int id = Integer.parseInt(ident);
        adm.setAdm_id(id);
      
        if (op.activarAdministrador(adm)) {
            response.sendRedirect("gestionar_administradores.jsp");
        } else {
            response.sendRedirect("gestionar_administradores.jsp");
        }
    }
}