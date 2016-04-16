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
                                int idCli = cli.getCli_id();
                                String nombre = cli.getCli_nombre();
                                out.println("<a href='modificar_cliente.jsp?idCli="+idCli+"' class='btn btn-default'>Editar</a>");
                                if (cli.getCli_estado() == 0){
                                    out.println("<button class='btn btn-danger' id='eliminar"+idCli+"' identificador='"+idCli+"' nombre='"+nombre+"'> Eliminar </button>");
                                } else {
                                    out.println("<button class='btn btn-success' id='activar"+idCli+"' identificador='"+idCli+"' nombre='"+nombre+"'> Activar </button>");
                                }
                            out.println("</div>");
                        }
                   %>
                </div>
            </section>
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                            <div class="modal-header">
                                    <h4 class="modal-title"><b>¿Estás seguro de eliminar este cliente?</b></h4>
                            </div>
                            <div class="modal-body">
                                    <form id="formModal" action="EliminarClienteController" method="post">
                                            <b>Identificador: </b><input type="number" id="idCliente" name="id" class="form-control" readonly /><br />
                                            <b>Título: </b><input type="text" id="nombreCliente" name="nombre" class="form-control" readonly /><br />
                                            <div id="botonesModal">
                                                <input type="submit" class="btn btn-success" value="Aceptar" />
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                            </div>
                                    </form>
                            </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="myModal2" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                            <div class="modal-header">
                                    <h4 class="modal-title"><b>¿Estás seguro de activar este cliente?</b></h4>
                            </div>
                            <div class="modal-body">
                                    <form id="formModal2" action="ActivarClienteController" method="post">
                                            <b>Identificador: </b><input type="number" id="idCliente2" name="id" class="form-control" readonly /><br />
                                            <b>Título: </b><input type="text" id="nombreCliente2" name="nombre" class="form-control" readonly /><br />
                                            <div id="botonesModal">
                                                <input type="submit" class="btn btn-success" value="Aceptar" />
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                            </div>
                                    </form>
                            </div>
                    </div>
                </div>
            </div>
            <footer id="foot">
            	<b><p>Derechos reservados &copy;2016 - Raúl Pérez</p></b>
            </footer>
        </div>
        <script>
            for( var i = 1; i<100; i++){
                $('#eliminar'+i).click( function(){
                    $('#myModal').modal();
                    $('#idCliente').val($(this).attr('identificador'));
                    $('#nombreCliente').val($(this).attr('nombre'));

                });
                $('#activar'+i).click( function(){
                    $('#myModal2').modal();
                    $('#idCliente2').val($(this).attr('identificador'));
                    $('#nombreCliente2').val($(this).attr('nombre'));

                });
            }
        </script>
    </body>
</html>