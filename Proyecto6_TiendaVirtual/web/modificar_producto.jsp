<%-- 
    Document   : index
    Created on : 11-abr-2016, 11:14:23
    Author     : Raúl Pérez
--%>

<%@page import="model.Producto"%>
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
            </header>
            <section id="sec">
                <article id="art">
                    <header>
                        <h1>Modificar Producto</h1>
                    </header>
                        <%
                            String idProducto = request.getParameter("idProd");
                            int idProd = Integer.parseInt(idProducto);
                            ArrayList<Producto> lista = new ArrayList<Producto>();
                            Operaciones op = new Operaciones();
                            op.leerModificarProducto(lista, idProd);

                            for(Producto prod:lista){
                       %>
                	<form name="form" action="ModificarProductoController" method="post">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                <input type="text" name="id" placeholder="Nombre" class="form-control" value="<% out.print(prod.getPro_id()); %>" readonly />
                            </div><br />
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-shopping-cart"></i></span>
                                <input type="text" name="nombre" maxlength="50" placeholder="Título" class="form-control" value="<% out.print(prod.getPro_nombre()); %>" required />
                            </div><br />
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-cart-plus"></i></span>
                                <input type="number" name="cantidad" placeholder="Cantidad" class="form-control" value="<% out.print(prod.getPro_cantidad()); %>" required />
                            </div><br />
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                <input type="number" name="precio" placeholder="Precio" class="form-control" value="<% out.print(prod.getPro_precio()); %>" required />
                            </div><br />
                            <div style="color:red;">

                            </div>
                            <input type="submit" class="btn btn-default" name="entrar" value="Modificar" /> <a href="gestionar_productos.jsp" class="btn btn-primary">Volver</a>
                	</form><br />
                        <%
                            }
                        %>
                </article>
            </section>
            <footer id="foot">
            	<b><p>Derechos reservados &copy;2016 - Raúl Pérez</p></b>
            </footer>
        </div>
    </body>
</html>