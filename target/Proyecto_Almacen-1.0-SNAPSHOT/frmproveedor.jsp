<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    if (session.getAttribute("login") != "ok") {
        response.sendRedirect("login.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>

        <title>PROVEEDOR</title>
    </head>
    <body>
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="clientes" />
        </jsp:include>
        <body background="img/login.jpg">
        <div class="container">

            <br>
            <center>
             <FONT FACE="impact" SIZE=8 COLOR="#E61D3E">PROVEEDORES</FONT>
            </center>

            <br>
            <form action="ProveedorControlador" method="post">
                <input type="hidden" name="id_proveedores" value="${proveedor.id_proveedores}" >

                <div class="mb-3">
                     <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Nombre</FONT>
                    <input type="text" class="form-control"  style="width: 500px;" name="nombre" value="${proveedor.nombre}" placeholder="Escriba su nombre">
                </div>
                <div class="mb-3">
                     <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Direccion</FONT>
                    <input type="text" class="form-control" style="width: 500px;" name="direccion" value="${proveedor.direccion}" placeholder="Escriba su Direccion">
                </div>
                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Cuidad</FONT>
                    <input type="text" class="form-control"  style="width: 500px;" name="ciudad" value="${proveedor.ciudad}" placeholder="Escriba su Ciudad">
                </div>
                <div class="mb-3">
                     <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Telefono</FONT>
                    <input type="text" class="form-control" style="width: 500px;" name="telefono" value="${proveedor.telefono}" placeholder="Escriba su Telefono">
                </div>
                <div class="mb-3">
                     <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Correo</FONT>
                    <input type="email" class="form-control" style="width: 500px;" name="correo" value="${proveedor.correo}" placeholder="Escriba su Correo">
                </div>
                <div class="mb-3">
                     <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Observaciones</FONT>
                    <input type="text" class="form-control"  style="width: 500px;" name="observaciones" value="${proveedor.observaciones}" placeholder="Escriba las Observaciones">
                </div>

                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>    

        </div>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    </body>
</html>
