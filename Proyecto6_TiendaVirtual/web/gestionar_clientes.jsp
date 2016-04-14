<%-- 
    Document   : index
    Created on : 11-abr-2016, 11:14:23
    Author     : Raúl Pérez
--%>

<%@page import="model.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controller.Operaciones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Principal Administrador</title>
        <meta lang="es">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Raúl">
        <link rel="stylesheet" href="css/estilo.css">
        <link rel="icon" type="image/png" href="img/favicon.png" />

        <!-- JQUERY -->
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script> 

        <!-- BOOTSTRAP -->
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
        <!-- FONTAWESOME ICONS-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

    </head>
    <body cz-shorcut-listen="true">
        <div id="cont">
            <header id="cab">
                <img src="img/logo.png" width="50px" height="55px" />
                <h1 id="my">Tienda Virtual</h1>
                <a href="prinAdmin.jsp"><img id="flecha" src="img/flecha.png" width="50px" height="50px" /></a>
            </header>
            <section id="sec">
                <div id="divCli">
                    <h1>Gestión de clientes <a href="registrar_clienteAdm.jsp"><i id="plusAñadirCli" class="fa fa-plus"></i></a></h1>
                </div>
                <div id="englobarClientes">
                    <%
                        ArrayList<Cliente> lista = new ArrayList<Cliente>();
                        Operaciones op = new Operaciones();  
                        op.leerClientes(lista);

                        for(Cliente cli:lista){
                            out.println("<div id='divClientes'>");
                                out.println("<i class='fa fa-user fa-5x'></i><br />");
                                out.println("<b>Nombre:</b> "+cli.getCli_nombre()+"<br />");
                                out.println("<b>DNI:</b> "+cli.getCli_DNI()+"<br />");
                                out.println("<b>Teléfono:</b> "+cli.getCli_telefono()+"<br /><br />");
                                out.println("<a href='modificar_cliente.jsp?id='"+cli.getCli_id()+" class='btn btn-default'>Editar</a>");
                                out.println("<a href='' class='btn btn-danger'>Eliminar</a>");
                            out.println("</div>");
                        }
                   %>
                </div>
            </section>
            <footer id="foot">
            	<b><p>Derechos reservados &copy;2016 - Raúl Pérez</p></b>
            </footer>
        </div>
    </body>
</html>