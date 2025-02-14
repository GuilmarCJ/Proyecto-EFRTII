<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Términos y Condiciones</title>
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
    <article>
        <h1 class="mb-4" style="color: var(--secondary-color);">Términos y Condiciones</h1>

        <section>
            <h2 class="h3" style="color: var(--secondary-color);">1. Introducción</h2>
            <p>
                Bienvenido a CanCan.  Estos términos y condiciones rigen el uso de nuestro sitio web y servicios. Al acceder o utilizar nuestro sitio web, usted acepta estar sujeto a estos términos.
            </p>
        </section>

        <section>
            <h2 class="h3" style="color: var(--secondary-color);">2. Reservas</h2>
            <p>
                Las reservas están sujetas a disponibilidad. Nos reservamos el derecho de cancelar o modificar reservas en caso de circunstancias imprevistas.
            </p>
        </section>

        <section>
             <h2 class="h3" style="color: var(--secondary-color);">3. Uso del menu</h2>
            <p>
                Al acceder y utilizar nuestro menú en línea, usted acepta los siguientes términos y condiciones.  Estos términos se aplican a todos los usuarios del menú, ya sean clientes registrados o visitantes ocasionales.
            </p>
            <h3 class="h4" style="color: var(--secondary-color);">3.1 Disponibilidad de Productos</h3>
            <p>
                La disponibilidad de los platos y bebidas mostrados en nuestro menú en línea está sujeta a cambios sin previo aviso.  Hacemos todo lo posible por mantener el menú actualizado, pero no podemos garantizar que todos los elementos estén disponibles en todo momento.
            </p>
        </section>

          <section>
            <h2 class="h3" style="color: var(--secondary-color);">4. Precios</h2>
           <p>
               Los precios mostrados en nuestro menú en línea son válidos únicamente para pedidos realizados a través de la plataforma web.  Estos precios pueden diferir de los precios ofrecidos en nuestro restaurante físico o a través de otros canales de venta.
           </p>
           <h3 class="h4" style="color: var(--secondary-color);">4.1 Impuestos y Cargos Adicionales</h3>
           <p>
               Todos los precios mostrados incluyen los impuestos aplicables según la legislación vigente. Sin embargo, pueden aplicarse cargos adicionales, como gastos de envío o propinas, que se indicarán claramente durante el proceso de pedido.
           </p>
           <h3 class="h4" style="color: var(--secondary-color);">4.2  Modificaciones de Precios</h3>
           <p>
              Nos reservamos el derecho de modificar los precios de los productos en cualquier momento y sin previo aviso.  Los precios aplicables a su pedido serán los que se muestren en el momento de la confirmación del mismo.
           </p>
        </section>

        <section>
            <h2 class="h3" style="color: var(--secondary-color);">5. Modificaciones</h2>
            <p>
               Nos reservamos el derecho de modificar estos términos y condiciones en cualquier momento.  Las modificaciones entrarán en vigor inmediatamente después de su publicación en el sitio web.
            </p>
        </section>
    </article>
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
</body>
</html>