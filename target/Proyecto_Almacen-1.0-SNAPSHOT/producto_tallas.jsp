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

        <title>PRODUCTOS</title>
    </head>
    <body class="box">
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="producto_tallas" />
        </jsp:include>
        <body background="img/fondo.jpg">
        <div class="container">
            <br>
            <center>
                <div class="loader">
                    <h1>
                        <br><br>
                        <FONT FACE="impact" SIZE=8 COLOR="#873600"> GESTOR DE PRODUCTOS</FONT>
                    </h1>

                </div>
            </center>

            <br>
            <a  class="btn btn-primary btn-sm" href="Producto_tallaControlador?action=add"><i class="fa-solid fa-circle-plus"></i> Nuevo Producto</a>
            <br>
            <br>
            <table class="table table-dark table-striped">
                <tr>
                    <th>Id</th>
                    <th>Producto</th>
                    <th>Talla</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${producto_tallas}">
                    <tr>
                        <td>${item.id_producto_talla}</td>
                        <td>${item.producto}</td>
                        <td>${item.talla}</td>
                        <td><a href="Producto_tallaControlador?action=edit&id_producto_talla=${item.id_producto_talla}"><i class="fa-solid fa-pen-to-square" style="color: #F39C12"></i></a></td>
                        <td><a href="Producto_tallaControlador?action=delete&id_producto_talla=${item.id_producto_talla}" onclick="return(confirm('Esta seguro de Eliminar el producto ?'))"><i class="fa-solid fa-trash" style="color: #e10e0e"></i></a></td>
                    </tr>
                </c:forEach>

            </table>
        </div>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    </body>
</html>
