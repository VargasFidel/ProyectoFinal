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

        <title>USUARIOS</title>
    </head>
    <body>
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="usuarios" />
        </jsp:include>
        <body background="img/login.jpg">
        <div class="container">
            <br>
            <center>
             <FONT FACE="impact" SIZE=8 COLOR="#E61D3E">AGREGAR USUARIO</FONT>
            </center>
            <br>
            <form action="UsuarioControlador" method="post">
                <input type="hidden" name="id_usuario" value="${usuario.id_usuario}" >

                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Usuario</FONT>
                    
                    <input type="text" class="form-control" style="width: 500px;" name="usuario" value="${usuario.usuario}" placeholder="Escriba su usuario">
                </div>
                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Contraseña</FONT>
                    <input type="password" class="form-control" style="width: 500px;" name="password" value="${usuario.password}" placeholder="Escriba su contraseña">
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>    

        </div>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    </body>
</html>
