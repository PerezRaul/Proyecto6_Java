<%-- 
    Document   : registrar_cliente
    Created on : 13-abr-2016, 10:28:13
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrar Cliente</title>
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
                        <h1>Registrar Cliente</h1>
                    </header>
                	<form name="form" action="RegistrarClienteAdmController" method="post">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                <input type="text" name="nombre" maxlength="50" placeholder="Nombre" class="form-control" required />
                            </div><br />
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                <input type="text" name="dni" maxlength="9" placeholder="DNI Usuario" class="form-control" title="Formato no correcto. Ejemplo de formato: 12345678A / X1232131B" pattern="(([X-Z]{1})([-]?)(\d{7})([-]?)([A-Z]{1}))|((\d{8})([-]?)([A-Z]{1}))" required />
                            </div><br />
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-home"></i></span>
                                <input type="text" name="direccion" maxlength="50" placeholder="Dirección" class="form-control" required />
                            </div><br />
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-home"></i></span>
                                <input type="text" name="cp" maxlength="5" placeholder="Codigo Postal" class="form-control" title="Formato no correcto. Ejemplo de formato: 08907" pattern="[\d]{5}" required />
                            </div><br />
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-at"></i></span>
                                <input type="text" name="email" maxlength="50" placeholder="Correo Electrónico" class="form-control" title="Formato no correcto. Ejemplo de formato: direccion@web.es" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required />
                            </div><br />
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-mobile-phone fa-lg"></i></span>
                                <input type="text" name="telf" maxlength="9" placeholder="Teléfono" class="form-control" required />
                            </div><br />
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-key"></i></span>
                                <input type="password" name="pwd" maxlength="50" placeholder="Password" class="form-control" required />
                            </div><br />
                            <div style="color:red;">

                            </div>
                            <input type="submit" class="btn btn-default" name="entrar" value="Entrar" /> <a href="gestionar_clientes.jsp" class="btn btn-primary">Volver</a>
                	</form><br />
                </article>
            </section>
            <footer id="foot">
            	<b><p>Derechos reservados &copy;2016 - Raúl Pérez</p></b>
            </footer>
        </div>
    </body>
</html>
