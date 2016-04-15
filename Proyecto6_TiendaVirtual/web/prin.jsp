<%-- 
    Document   : index
    Created on : 11-abr-2016, 11:14:23
    Author     : Raúl Pérez
--%>

<%@page import="controller.Operaciones"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Principal Cliente</title>
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
            </header>
            <section id="sec">
                <div id="divCli">
                    <h1>Visualizar Productos </h1>
                </div>
                <div id="englobarClientes">
                    <%
                        ArrayList<Producto> lista = new ArrayList<Producto>();
                        Operaciones op = new Operaciones();  
                        op.leerProductosCli(lista);

                        for(Producto pro:lista){
                            out.println("<div id='divClientes'>");
                                out.println("<i class='fa fa-shopping-cart fa-5x'></i><br />");
                                out.println("<b>Título:</b> "+pro.getPro_nombre()+"<br />");
                                out.println("<b>Cantidad:</b> "+pro.getPro_cantidad()+"<br />");
                                out.println("<b>Precio:</b> "+pro.getPro_precio()+"€<br /><br />");
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