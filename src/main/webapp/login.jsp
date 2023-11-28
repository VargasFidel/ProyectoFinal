
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
    <header class="encabezado">
        <div class="contenedor-navegacion">
            <div class="contenido-navegacion contenedor">
                <div class="logo">
                    <h2>SISTEMA DE  <span class="rojo">INV</span><span class="amarillo">ENTA</span><span class="verde">RIO</span></h2>
                </div>
            </div>
        </div>
    </header>
    <script src="js/ap.js"></script>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/logeo.css">
    <title>login</title>
</head>

<body>
    <section>
        <div class="form-box">
            <div class="form-value">
                <form action="Login" method="post">
                    <h2>Bienvenido</h2>
                    <div class="inputbox">
                        <ion-icon name="mail-outline"></ion-icon>
                        <input id="usuario" type="text" name="usuario" placeholder="Usuario" required>
                        <label for="usuario">Usuario</label>
                    </div>
                    <div class="inputbox">
                        <ion-icon name="lock-closed-outline"></ion-icon>
                        <input id="password" type="password" placeholder="Contraseña" name="password" required>
                        <label for="password">Contraseña</label>
                    </div>
                    <div class="forget">
                        <label for=""><input type="checkbox">Recordar mi <a href="">Contraseña</a></label>
                    </div>
                    <button type="submit" title="Ingresar" name="Ingresar">Ingresar</button>
                </form>
            </div>
        </div>
    </section>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>

</html>