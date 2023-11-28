<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String opc = request.getParameter("opcion");

    if (session.getAttribute("login") != "ok") {
        response.sendRedirect("login.jsp");
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@400;700&family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/nav.css">
    <link rel="shortcut icon" href="imagenes/favicon.ico" type="image/x-icon">
</head>

<body>
    <header class="encabezado">
        <div class="contenedor-navegacion">
            <div class="contenido-navegacion contenedor">
                <div class="logo">
                    <h2>BIENVENIDO AL  <span class="rojo">SIS</span><span class="amarillo">TE</span><span class="verde">MA</span></h2>
                </div>
            </div>
        </div>
    </header>
    <script src="js/ap.js"></script>



<div class="inicio">
    <div class="contenedor-encabezado">
        <div class="texto-video">
            <h2>Control De Inventario</h2>
            <a href="UsuarioControlador" class="btn bordes">USUARIOS</a><br>
            <a href="LaboratorioControlador?action=view" class="btn bordes">PRODUCTOS</a><br>
            <a href="EmpleadoControlador?action=view" class="btn bordes">EMPLEADOS</a><br>
            <a href="CompraControlador" class="btn bordes">COMPRA</a><br>
            <a href="TipoControlador?action=view" class="btn bordes">DEVOLUCIONES</a><br>
            <a href="CaracteristicaControlador?action=view" class="btn bordes">CARACTERISITICAS</a><br>
            <a href="ProveedorControlador?action=view" class="btn bordes">PROVEEDORES</a><br>
            <a href="VentaControlador?action=view" class="btn bordes">VENTAS</a><br>
        </div>
        <video autoplay loop muted>
            <source src="imagenes/videoprin.mp4">
        </video>
    </div>


    </body>
</html>
