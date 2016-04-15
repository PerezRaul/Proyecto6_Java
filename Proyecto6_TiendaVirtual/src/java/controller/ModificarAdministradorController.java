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
@WebServlet(name = "ModificarAdministradorController", urlPatterns = {"/ModificarAdministradorController"})
public class ModificarAdministradorController extends HttpServlet {

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
        String idAdministrador = request.getParameter("id");
        int idAdm = Integer.parseInt(idAdministrador);
        adm.setAdm_id(idAdm);
        adm.setAdm_nombre(request.getParameter("nombre"));
        adm.setAdm_DNI(request.getParameter("dni"));
        adm.setAdm_direccion(request.getParameter("direccion"));
        adm.setAdm_cp(request.getParameter("cp"));
        adm.setAdm_email(request.getParameter("email"));
        adm.setAdm_telefono(request.getParameter("telf"));
        adm.setAdm_password(request.getParameter("pwd"));
        
      
        if (op.modificarAdministrador(adm)) {
            response.sendRedirect("gestionar_administradores.jsp");
        } else {
            response.sendRedirect("modificar_administrador.jsp?idAdm="+idAdm);
        }
    }
}