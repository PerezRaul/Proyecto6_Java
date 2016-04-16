<%-- 
    Document   : index
    Created on : 11-abr-2016, 11:14:23
    Author     : Raúl Pérez
--%>

<%@page import="model.Producto"%>
<%@page import="controller.Operaciones"%>
<%@page import="java.util.ArrayList"%>
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
                    <h1>Gestión de Productos <a href="registrar_producto.jsp"><i id="plusAñadirCli" class="fa fa-plus"></i></a></h1>
                </div>
                <div id="englobarClientes">
                    <%
                        ArrayList<Producto> lista = new ArrayList<Producto>();
                        Operaciones op = new Operaciones();  
                        op.leerProductos(lista);

                        for(Producto pro:lista){
                            out.println("<div id='divClientes'>");
                                out.println("<i class='fa fa-shopping-cart fa-5x'></i><br />");
                                out.println("<b>Título:</b> "+pro.getPro_nombre()+"<br />");
                                out.println("<b>Cantidad:</b> "+pro.getPro_cantidad()+"<br />");
                                out.println("<b>Precio:</b> "+pro.getPro_precio()+"€<br /><br />");
                                int idProd = pro.getPro_id();
                                String nombre = pro.getPro_nombre();
                                out.println("<a href='modificar_producto.jsp?idProd="+idProd+"' class='btn btn-default'>Editar</a>");
                                if (pro.getPro_estado() == 0){
                                    out.println("<button class='btn btn-danger' id='eliminar"+idProd+"' identificador='"+idProd+"' titulo='"+nombre+"'>Eliminar</a>");
                                } else {
                                    out.println("<button class='btn btn-success' id='activar"+idProd+"' identificador='"+idProd+"' titulo='"+nombre+"'>Activar</a>");
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
                            <h4 class="modal-title"><b>¿Estás seguro de eliminar este producto?</b></h4>
                        </div>
                        <div class="modal-body">
                            <form id="formModal" action="EliminarProductoController" method="post">
                                <b>Identificador: </b><input type="number" id="idProducto" name="id" class="form-control" readonly /><br />
                                <b>Título: </b><input type="text" id="nombreProducto" name="nombre" class="form-control" readonly /><br />
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
                            <h4 class="modal-title"><b>¿Estás seguro de activar este producto?</b></h4>
                        </div>
                        <div class="modal-body">
                            <form id="formModal2" action="ActivarProductoController" method="post">
                                <b>Identificador: </b><input type="number" id="idProducto2" name="id" class="form-control" readonly /><br />
                                <b>Título: </b><input type="text" id="nombreProducto2" name="nombre" class="form-control" readonly /><br />
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
                    $('#idProducto').val($(this).attr('identificador'));
                    $('#nombreProducto').val($(this).attr('titulo'));

                });
                $('#activar'+i).click( function(){
                    $('#myModal2').modal();
                    $('#idProducto2').val($(this).attr('identificador'));
                    $('#nombreProducto2').val($(this).attr('titulo'));

                });
            }
        </script>
    </body>
</html>