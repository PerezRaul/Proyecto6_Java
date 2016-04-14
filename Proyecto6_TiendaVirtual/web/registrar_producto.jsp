<%-- 
    Document   : registrar_cliente
    Created on : 13-abr-2016, 10:28:13
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrar Producto</title>
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
                        <h1>Registrar Producto</h1>
                    </header>
                	<form name="form" action="RegistrarClienteAdmController" method="post">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-shopping-cart"></i></span>
                                <input type="text" name="nombre" maxlength="50" placeholder="Título" class="form-control" required />
                            </div><br />
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                <input type="number" name="cantidad" placeholder="Cantidad" class="form-control" required />
                            </div><br />
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                <input type="number" step="0.01" name="precio" placeholder="Precio" class="form-control" required />
                            </div><br />
                            <div style="color:red;">

                            </div>
                            <input type="submit" class="btn btn-default" name="entrar" value="Entrar" /> <a href="gestionar_productos.jsp" class="btn btn-primary">Volver</a>
                	</form><br />
                </article>
            </section>
            <footer id="foot">
            	<b><p>Derechos reservados &copy;2016 - Raúl Pérez</p></b>
            </footer>
        </div>
    </body>
</html>
