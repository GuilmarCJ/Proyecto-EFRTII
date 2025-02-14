<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contacto</title>
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
            padding-top: 56px; /* Adjust for fixed navbar */
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
        }

        .footer {
            color: var(--text-color);
        }

        .footer a {
            color: var(--text-color);
        }

        .footer a:hover {
            color: var(--link-hover-color);
            text-decoration: underline;
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
            max-width: 250px; /* Adjust the value as needed */
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
           text-decoration: none; /* Remove underline from links */
        }

        .footer-redes a:hover {
             text-decoration: none; /* Ensure underline is not added on hover */
        }
        .footer-redes li {
            margin-bottom: 10px;
            display: flex;
            align-items: center;
            margin-right: 15px; /* Add spacing between items */
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
        /* Modal Styles */
        .modal {
          position: fixed;
          z-index: 1;
          left: 0;
          top: 0;
          width: 100%;
          height: 100%;
          overflow: auto;
          background-color: rgba(0,0,0,0.4);
        }

        .modal-content {
          background-color: #fefefe;
          margin: 15% auto;
          padding: 20px;
          border: 1px solid #888;
          width: 80%;
          max-width: 400px;
          text-align: center;
        }

        .modal-content a {
          display: block;
          padding: 10px;
          margin: 5px 0;
          text-decoration: none;
          color: var(--secondary-color);
           background-color: var(--primary-color); /* Light goldenrod color */
          border-radius: 5px;
        }

        .modal-content a:hover {
          background-color: #e6c600;
        }
        .close {
          color: #aaa;
          float: right;
          font-size: 28px;
          font-weight: bold;
        }

        .close:hover,
        .close:focus {
          color: var(--secondary-color);
          text-decoration: none;
          cursor: pointer;
        }
       .box{
            width: 25px;
            height: 25px;
        }

        .form-label {
            color: var(--secondary-color); /* Dark text for labels */
            font-weight: bold;
        }

          /* Style for form controls */
        .form-control {
            border: 1px solid var(--secondary-color);
            color: var(--secondary-color);
            margin-bottom: 1rem; /* Add some spacing between form elements */
        }

        /* Contact info styles */
        .contact-info {
            margin-bottom: 2rem;
        }
        .contact-info h2 {
            color: var(--secondary-color);
            margin-bottom: 1rem;
        }
        .contact-info p {
            margin-bottom: 0.5rem;
             color: var(--secondary-color);
        }
        .contact-info i {
            margin-right: 0.5rem;
            color: var(--primary-color); /* Icon color */
        }

        /* Map container styles */
        .map-container {
            position: relative;
            overflow: hidden;
            padding-top: 56.25%; /* 16:9 Aspect Ratio */
            margin-bottom: 2rem;
        }
        .map-container iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border: 0;
        }

    </style>
</head>
<body>
    <!-- Navbar (Same as your original) -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">CANCAN</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#reserva de mesas">Reserva de mesas</a></li>
                    <li class="nav-item"><a class="nav-link" href="#menu">Menu</a></li>
                    <li class="nav-item"><a class="nav-link" href="#promociones">Promociones</a></li>
                    <li class="nav-item"><a class="nav-link" href="#registro">Registro</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="miCuentaDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Mi Cuenta
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="miCuentaDropdown">
                            <li><a class="dropdown-item" href="#iniciar-sesion">Iniciar Sesión</a></li>
                            <li><a class="dropdown-item" href="#registrate">Regístrate</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <main class="container my-5">
        <div class="row">
            <div class="col-md-6">
                <h1 class="mb-4"  style="color: var(--secondary-color);">Contacto</h1>
                <p>¿Tienes alguna pregunta o comentario? ¡Contáctanos!</p>

                <form action="procesar_contacto.jsp" method="post" novalidate>  <!-- Replace with your actual processing script-->
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre:</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" required>
                        <div class="invalid-feedback">Por favor, ingrese su nombre.</div>
                    </div>

                    <div class="mb-3">
                        <label for="email" class="form-label">Correo Electrónico:</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                        <div class="invalid-feedback">Por favor ingrese un correo electrónico válido.</div>
                    </div>

                    <div class="mb-3">
                        <label for="mensaje" class="form-label">Mensaje:</label>
                        <textarea class="form-control" id="mensaje" name="mensaje" rows="5" required></textarea>
                        <div class="invalid-feedback">Por favor, ingrese su mensaje.</div>
                    </div>

                    <!-- Placeholder for displaying server-side error messages -->
                    <div id="error-message" class="alert alert-danger" style="display: none;"></div>

                    <button type="submit" class="btn btn-primary" style="background-color: var(--primary-color); color: var(--secondary-color); border-color: var(--primary-color)">Enviar Mensaje</button>
                </form>
            </div>

            <div class="col-md-6">
                <div class="contact-info">
                    <h2 style="color: var(--secondary-color)">Información de Contacto</h2>
                    <p><i class="fa fa-map-marker"></i> Calle Principal #123, Ciudad, País</p>
                    <p><i class="fa fa-phone"></i> +123 456 7890</p>
                    <p><i class="fa fa-envelope"></i> info@cancan.com</p>
                </div>

                 <div class="map-container">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25016.79555745553!2d-77.05253145485744!3d-12.11975738486839!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c81a920c4e35%3A0x88f0a7960275696a!2sMiraflores%2C%20Peru!5e0!3m2!1sen!2sus!4v1699393263532!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>
    </main>

   <!-- Footer (Same as your original) -->
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
                                <a href="#registro" class="d-flex align-items-center text-white">
                                    <span class="box bg-goldenrod rounded-2 d-flex align-items-center justify-content-center me-2">
                                       <i aria-hidden="true" class="fa fa-user text-dark"></i>
                                    </span>
                                    <span>Registro</span>
                                </a>
                            </li>
                            <li>
                                <a href="#terminos-y-condiciones" class="d-flex align-items-center text-white">
                                     <span class="box bg-goldenrod rounded-2 d-flex align-items-center justify-content-center me-2">
                                        <i aria-hidden="true" class="fa fa-copyright text-dark"></i>
                                     </span>
                                    <span>Términos y condiciones</span>
                                </a>
                            </li>
                            <li>
                                <a href="#libro-reclamaciones" class="d-flex align-items-center text-white">
                                   <span class="box bg-goldenrod rounded-2 d-flex align-items-center justify-content-center me-2">
                                        <i aria-hidden="true" class="fa fa-envelope text-dark"></i>
                                    </span>
                                    <span>Libro de reclamaciones</span>
                                </a>
                            </li>
                            <li>
                                <a href="#contacto" class="d-flex align-items-center text-white">
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
    <script>
        //Client-side form validation
        (function () {
          'use strict'

          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.querySelectorAll('form')

          // Loop over them and prevent submission
          Array.prototype.slice.call(forms)
            .forEach(function (form) {
              form.addEventListener('submit', function (event) {
                if (!form.checkValidity()) {
                  event.preventDefault()
                  event.stopPropagation()
                }

                form.classList.add('was-validated')
              }, false)
            })
        })()
    </script>
</body>
</html>