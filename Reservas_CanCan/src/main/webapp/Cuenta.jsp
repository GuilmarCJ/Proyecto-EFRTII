<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Cuenta</title>
    <link rel="icon" type="image/png" href="https://cdn.worldvectorlogo.com/logos/cancan.svg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        :root {
            --primary-color: goldenrod;
            --secondary-color: black;
            --text-color: white;
            --link-hover-color: #ffdf00;
        }

       *{
           text-decoration: none;
        }

        body {
            color: var(--primary-color);
            padding-top: 56px;
            background-color: #f8f9fa;
        }

        .navbar, .footer {
            background-color: var(--secondary-color) !important;
        }

        .navbar-brand {
            color: var(--primary-color);
        }

        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }

        .header {
            background-color: var(--primary-color);
            color: var(--secondary-color);
            padding: 20px 0;
            text-align: center;
            margin-bottom: 30px;
        }

        .footer {
            color: var(--text-color);
        }

        .footer a {
            color: var(--text-color);
             text-decoration: none;
        }
         .footer a:hover {
            color: var(--link-hover-color);
            text-decoration: underline;
        }

        .account-container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }

        .account-section {
            margin-bottom: 25px;
        }

        .account-section h2 {
            color: var(--secondary-color);
            border-bottom: 2px solid var(--primary-color);
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        .account-section p {
             color: var(--secondary-color);
        }

        .account-form label {
            color: var(--secondary-color);
            font-weight: bold;
            margin-bottom: 5px;
        }

        .account-form input[type="text"],
        .account-form input[type="email"],
        .account-form input[type="password"],
        .account-form select,
        .account-form textarea
         {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            color: var(--secondary-color);
        }
        .account-form input::placeholder{
            color: #999;
        }

        .account-form button {
            background-color: var(--primary-color);
            color: var(--secondary-color);
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .account-form button:hover {
            background-color: var(--link-hover-color);
             color: var(--secondary-color);
        }

          /* Styles for the new footer */
        .cpnazo__footer {
            background-color: var(--secondary-color);
            color: var(--text-color);
            padding: 20px 0;
        }

        .cpnazo__footer-top {
            padding: 20px 0;
        }

        .footer-title {
            color: var(--link-hover-color);
            font-size: 1.5em;
            margin-bottom: 15px;
        }

        .footer-pages {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .footer-flex {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin-top: 20px;
             align-items: stretch;
        }

        .footer-flex-col {
            flex: 1;
            margin-bottom: 20px;
             min-width: 300px;
        }

        .footer-excert {
            margin-bottom: 10px;
            font-size: 0.9em;
        }

        .footer-input {
            display: flex;
        }

        .footer-input input {
             flex: 1;
            max-width: 250px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px 0 0 5px;
             color: var(--secondary-color);
        }

        .cpnazo__btn {
           background-color: var(--primary-color);
            border: none;
            padding: 10px 10px;
            border-radius: 0 5px 5px 0;
            color: var(--secondary-color);
            cursor: pointer;
        }

        .footer-redes {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            flex-wrap: wrap;
        }
         .footer-redes a {
           text-decoration: none;
        }

        .footer-redes a:hover {
             text-decoration: none;
        }
        .footer-redes li {
            margin-bottom: 10px;
            display: flex;
            align-items: center;
            margin-right: 15px;
        }

        .footer-redes li:last-child {
            margin-right: 0;
        }

        .cpnazo__footer-bottom {
            background-color: #222;
            padding: 15px 0;
        }

        .cpnazo__footer-bottom-flex {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .cpnazo__footer-bottom-flex .line {
            border-left: 1px solid #555;
            height: 20px;
            margin: 0 20px;
        }

        .cpnazo__img {
            max-width: 150px;
            height: auto;
            max-height: 60px;
        }

        .profile-image {
        width: 30px;
        height: 30px;
        border-radius: 50%;
        object-fit: cover;
        cursor: pointer;
        margin-left: 10px;
    }

   .box{
            width: 25px;
            height: 25px;
        }

    </style>
</head>
<body>
    <!-- inicio de navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="AfterLoginInicio.jsp">CANCAN</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="AfterLoginInicio.jsp">Inicio</a></li>
                    <li class="nav-item"><a class="nav-link" href="AfterLoginLibro.jsp">Libro de Reclamaciones</a></li>
                    <li class="nav-item"><a class="nav-link" href="AfterLoginContacto.jsp">Contacto</a></li>
                    <!-- Mi Cuenta dropdown replaced with image -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="miCuentaDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png" alt="Mi Cuenta" class="profile-image">
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="miCuentaDropdown">
                            <li><a class="dropdown-item" href="Cuenta.jsp">Cuenta</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="Inicio.jsp">Cerrar Sesión</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- final de navbar -->

    <!-- Header -->
    <header class="header">
        <h1>Mi Cuenta</h1>
    </header>

    <!-- Account Content -->
    <div class="container">
        <div class="account-container">
            <div class="account-section">
                <h2>Información Personal</h2>
                 <form action="#" method="post" class="account-form">
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre:</label>
                        <input type="text" id="nombre" name="nombre" class="form-control" placeholder="Tu Nombre" required>
                    </div>
                    <div class="mb-3">
                        <label for="apellidos" class="form-label">Apellidos:</label>
                        <input type="text" id="apellidos" name="apellidos" class="form-control" placeholder="Tus Apellidos" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Correo Electrónico:</label>
                        <input type="email" id="email" name="email" class="form-control" placeholder="Tu Correo Electrónico" required>
                    </div>
                      <div class="mb-3">
                        <label for="telefono" class="form-label">Teléfono:</label>
                        <input type="text" id="telefono" name="telefono" class="form-control" placeholder="Tu Teléfono">
                    </div>
                     <div class="mb-3">
                        <label for="direccion" class="form-label">Dirección:</label>
                         <textarea id="direccion" name="direccion" class="form-control" placeholder="Tu dirección" rows="3"></textarea>
                    </div>

                    <button type="submit" class="btn btn-primary">Actualizar Información</button>
                </form>
            </div>

             <div class="account-section">
                <h2>Cambiar Contraseña</h2>
                <form action="#" method="post" class="account-form">
                    <div class="mb-3">
                        <label for="current-password" class="form-label">Contraseña Actual:</label>
                        <input type="password" id="current-password" name="current-password" class="form-control" required placeholder="Contraseña Actual">
                    </div>
                    <div class="mb-3">
                        <label for="new-password" class="form-label">Nueva Contraseña:</label>
                        <input type="password" id="new-password" name="new-password" class="form-control" required placeholder="Nueva Contraseña">
                    </div>
                    <div class="mb-3">
                        <label for="confirm-password" class="form-label">Confirmar Nueva Contraseña:</label>
                        <input type="password" id="confirm-password" name="confirm-password" class="form-control" required placeholder="Confirmar Nueva Contraseña">
                    </div>
                    <button type="submit" class="btn btn-primary">Cambiar Contraseña</button>
                </form>
            </div>

        </div>
    </div>

    <!-- Footer -->
   <footer class="cpnazo__footer">
        <div class="cpnazo__footer-top">
            <div class="container">
                <div class="footer-flex">
                    <div class="footer-flex-col">
                        <h3 class="footer-title">Recibir Promociones</h3>
                        <p class="footer-excert">
                            Ingresa tu correo electrónico para recibir nuestras increíbles promociones:
                        </p>
                        <form action="#" method="post">
                            <div class="footer-input">
                                <input placeholder="tu@correo.com" type="email" required="required">
                                <button class="cpnazo__btn">Suscribirme</button>
                            </div>
                        </form>
                    </div>
                    <div class="footer-flex-col">
                        <h3 class="footer-title">Páginas</h3>
                        <ul class="footer-redes">
                            <li>
                                <a href="AfterLoginLibro.jsp" class="d-flex align-items-center text-white">
                                   <span class="box bg-goldenrod rounded-2 d-flex align-items-center justify-content-center me-2">
                                        <i aria-hidden="true" class="fa fa-envelope text-dark"></i>
                                    </span>
                                    <span>Libro de reclamaciones</span>
                                </a>
                            </li>
                            <li>
                                <a href="AfterLoginTerminos.jsp" class="d-flex align-items-center text-white">
                                   <span class="box bg-goldenrod rounded-2 d-flex align-items-center justify-content-center me-2">
                                        <i aria-hidden="true" class="fa fa-envelope text-dark"></i>
                                    </span>
                                    <span>Terminos y condiciones</span>
                                </a>
                            </li>
                            <li>
                                <a href="AfterLoginContacto.jsp" class="d-flex align-items-center text-white">
                                    <span class="box bg-goldenrod rounded-2 d-flex align-items-center justify-content-center me-2">
                                         <i aria-hidden="true" class="fa fa-envelope text-dark"></i>
                                    </span>
                                    <span>Contacto</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="cpnazo__footer-bottom">
            <div class="container">
                <div class="cpnazo__footer-bottom-flex">
                   <a href="#"><img src="https://cdn.worldvectorlogo.com/logos/cancan.svg" alt="CanCan" class="cpnazo__img"></a>
                    <div class="line"></div>
                    <p>
                        © 2025 CanCan. todos los derechos reservados.
                    </p>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>