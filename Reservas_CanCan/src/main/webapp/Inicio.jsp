<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CanCan</title>
    <link rel="icon" type="image/png" href="https://cdn.worldvectorlogo.com/logos/cancan.svg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- inicio de CSS -->
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

        .responsive-img {
            max-height: 300px;
            max-width: 100%;
            width: auto;
            height: auto;
        }

        .carousel-item img {
            width: 100%;
            height: auto;
            max-height: 400px;
            opacity: 0.7;
        }

        .carousel-caption {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: var(--secondary-color);
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
            text-align: center;
        }

        .carousel-caption-link {
            font-size: 4vw;
            color: var(--text-color);
            text-decoration: none;
        }

        .carousel-caption-link:hover {
            color: var(--link-hover-color);
        }

        .carousel-caption p {
            font-size: 2.5vw;
        }

        @media ( max-width : 768px) {
            .carousel-caption-link {
                font-size: 5vw;
            }
            .carousel-caption p {
                font-size: 3vw;
            }
        }

        .section-img-container {
            padding: 0 2%;
            width: 100%;
        }

        .section-img {
            max-width: 100%;
            width: auto;
            height: auto;
            display: block;
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

.section-img-container {
        padding: 0 2%;
        width: 100%;
    }

    .section-img-container .col-md-4 {
        display: flex;
        flex-direction: column;
    }

    .section-img-container a {
        display: block;
        perspective: 1000px;
        position: relative;
        overflow: hidden;
        padding-top: 100%;
        position: relative;
    }

    .section-img {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform 3s;
    }

    .section-img-back{
        position: absolute;
        top:0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: black;
        display: flex;
        justify-content: center;
        align-items: center;
        color: white;
        font-size: 1.5em;
        transform: rotateY(180deg);
        transition: transform 0.5s;
        backface-visibility: hidden;
    }

    .section-img-container a:hover .section-img-back {
        transform: rotateY(0deg);
    }
    .section-img-container a:hover img {
        transform: rotateY(180deg);
    }

     /* Styles for the default publicity modal */
     #defaultPublicityModal {
        position: fixed;
        z-index: 1050; /* Higher than the navbar */
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0,0,0,0.7); /* Semi-transparent black */
        display: flex; /* Use flexbox for centering */
        align-items: center;
        justify-content: center;
    }

     #defaultPublicityModal .modal-content {
         margin: auto; /* Center the modal content */
         width: 80%;  /* Adjust as needed */
         max-width: 600px; /* Or whatever your maximum width should be */
         position: relative; /* For the close button */

     }
    #defaultPublicityModal img {
        width: 100%; /* Make the image responsive */
        height: auto;
        display: block; /* Remove extra space below image */
        border-radius: 5px; /* Optional: Add rounded corners */
    }

     /*Close button styles*/
    #defaultPublicityModal .close {
        position: absolute;
        top: 10px;
        right: 15px;
        font-size: 30px;
        font-weight: bold;
        color: white;
        cursor: pointer;
        z-index: 1051; /* Ensure it's above the image */
    }


    </style>
    <!-- final de CSS -->
</head>
<body>
    <!-- inicio de navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">CANCAN</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="Reservas.jsp">Reserva de mesas</a></li>
                    <li class="nav-item"><a class="nav-link" href="#menu">Menu</a></li>
                    <li class="nav-item"><a class="nav-link" href="#promociones">Promociones</a></li>
                    <li class="nav-item"><a class="nav-link" href="Registro.jsp">Registro</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="miCuentaDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Mi Cuenta
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="miCuentaDropdown">
                            <li><a class="dropdown-item" href="Login.jsp">Iniciar Sesión</a></li>
                            <li><a class="dropdown-item" href="Registro.jsp">Regístrate</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- final de navbar -->

    <!-- inicio de header -->
    <header class="header text-center py-5">
        <h4>Comida española para todo el Perú desde 1986</h4>
    </header>
    <!-- final de header -->

    <!-- inicio de carousel -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="https://cordobamegusta.es/wp-content/uploads/2017/05/salmorejo-cordobes-cordobamegusta.es_.jpg" class="d-block w-100" alt="comida 2">
            <div class="carousel-caption d-none d-md-block">
                <div class="carousel-caption-link-container">
                    <a href="#" class="carousel-caption-link" data-modal-target="#modal-login">Reserva de mesas</a>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <img src="https://i.blogs.es/28bac8/1351621649911/840_560.jpeg" class="d-block w-100" alt="Comida 1">
            <div class="carousel-caption d-none d-md-block">
                <div class="carousel-caption-link-container">
                    <a href="#" class="carousel-caption-link" data-modal-target="#modal-login">Reserva de mesas</a>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <img src="https://imagenes.20minutos.es/files/image_1920_1080/uploads/imagenes/2023/03/13/migas-manchegas.jpeg" class="d-block w-100" alt="comida 3">
            <div class="carousel-caption d-none d-md-block">
                 <div class="carousel-caption-link-container">
                    <a href="#" class="carousel-caption-link" data-modal-target="#modal-login">Reserva de mesas</a>
                </div>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
    <!-- final de carousel -->

    <!-- inicio de section images -->
    <section class="container section-img-container my-5">
        <div class="row text-center d-flex align-items-stretch">
             <div class="col-12 col-md-4 mb-4">
                    <a href="#menu">
                        <img src="https://elikaeskola.com/wp-content/uploads/me-siento-culpable-por-comer.png" class="img-fluid section-img" alt="comida 2">
                        <div class="section-img-back">Plato 1</div>
                    </a>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <a href="#menu">
                        <img src="https://www.aceitesdeolivadeespana.com/wp-content/uploads/2019/05/pulpo-a-la-gallega.jpg" class="img-fluid section-img" alt="Comida 1">
                        <div class="section-img-back">Plato 2</div>
                    </a>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <a href="#menu">
                        <img src="https://www.paulinacocina.net/wp-content/uploads/2022/06/receta-de-langostinos-al-ajillo-1200x900.jpg" class="img-fluid section-img" alt="comida 3">
                        <div class="section-img-back">Plato 3</div>
                    </a>
                </div>
            <div class="col-12 col-md-4 mb-4">
                <a href="#menu"> <img src="https://i.blogs.es/3f1c6b/gallina-en-pepitoria/1366_2000.jpg" class="img-fluid section-img" alt="Delicious Dish 1">
                    <div class="section-img-back">Gallina en Pepitoria</div></a>
            </div>
            <div class="col-12 col-md-4 mb-4">
               <a href="#menu"> <img src="https://i.blogs.es/34fb2d/marmitako/1366_2000.jpg" class="img-fluid section-img" alt="Delicious Dish 2">
               <div class="section-img-back">Marmitako</div></a>
            </div>
            <div class="col-12 col-md-4 mb-4">
               <a href="#menu"> <img src="https://okdiario.com/img/2021/07/26/receta-de-pescado-frito-a-la-andaluza-o-pescaito-frito-1-620x349.jpg" class="img-fluid section-img" alt="Restaurant Interior">
                <div class="section-img-back">Pescado Frito</div></a>
            </div>
        </div>
    </section>
    <!-- final de section images -->

    <!-- inicio de footer -->
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
                                <a href="Registro.jsp" class="d-flex align-items-center text-white">
                                    <span class="box bg-goldenrod rounded-2 d-flex align-items-center justify-content-center me-2">
                                       <i aria-hidden="true" class="fa fa-user text-dark"></i>
                                    </span>
                                    <span>Registro</span>
                                </a>
                            </li>
                            <li>
                                <a href="Terminos.jsp" class="d-flex align-items-center text-white">
                                     <span class="box bg-goldenrod rounded-2 d-flex align-items-center justify-content-center me-2">
                                        <i aria-hidden="true" class="fa fa-copyright text-dark"></i>
                                     </span>
                                    <span>Términos y condiciones</span>
                                </a>
                            </li>
                            <li>
                                <a href="Libro.jsp" class="d-flex align-items-center text-white">
                                   <span class="box bg-goldenrod rounded-2 d-flex align-items-center justify-content-center me-2">
                                        <i aria-hidden="true" class="fa fa-envelope text-dark"></i>
                                    </span>
                                    <span>Libro de reclamaciones</span>
                                </a>
                            </li>
                            <li>
                                <a href="Contacto.jsp" class="d-flex align-items-center text-white">
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
    <!-- final de footer -->

    <!-- inicio de modal -->
    <!-- The Modal -->
    <div id="modal-login" class="modal">
    <div class="modal-content">
        <span class="close">×</span>
        <a href="#iniciar-sesion">Iniciar Sesión</a>
        <a href="#registrate">Regístrate</a>
    </div>
    </div>
    <!-- final de modal -->


    <!-- Default Publicity Modal -->
       <div id="defaultPublicityModal" class="modal" style="display: none;">
           <div class="modal-content">
               <span class="close">×</span>
               <a href="https://www.google.com/url?sa=i&url=https%3A%2F%2Fedit.org%2Fes%2Fblog%2Fplantillas-restaurante-espanol&psig=AOvVaw2lIaoV5RTJ3MppL-N_EnwC&ust=1739577782432000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMCon7PuwYsDFQAAAAAdAAAAABAE" target="_blank">
                   <img src="https://edit.org/img/blog/n/jzv-1024-plantilla-banner-oferta-cerveza-tapa-restaurante-espanol.webp" alt="Publicidad">
               </a>
           </div>
       </div>
    <!-- Final de Default Publicity Modal-->


    <!-- inicio de scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const modalLinks = document.querySelectorAll('[data-modal-target]');
            const modals = document.querySelectorAll('.modal');
            const closeButtons = document.querySelectorAll('.close');

            modalLinks.forEach(link => {
                link.addEventListener('click', function(event) {
                    event.preventDefault();
                    const modalId = this.getAttribute('data-modal-target');
                    const modal = document.querySelector(modalId);
                    modal.style.display = "block";
                });
            });

            closeButtons.forEach(closeBtn => {
              closeBtn.addEventListener('click', function() {
                const modal = this.closest('.modal');
                modal.style.display = 'none';
              });
            });

            window.addEventListener('click', function(event) {
              modals.forEach(modal => {
                  if (event.target === modal) {
                      modal.style.display = "none";
                  }
              });
            });

             // Show the default publicity modal on page load
            const defaultPublicityModal = document.getElementById('defaultPublicityModal');
            const closeDefaultModalBtn = defaultPublicityModal.querySelector('.close');

             // Function to show modal
            function showDefaultModal(){
               defaultPublicityModal.style.display = "flex"; // Use flex to correctly center with flexbox styles
            }


            //Close button for the default modal.
            closeDefaultModalBtn.addEventListener('click', function() {
                defaultPublicityModal.style.display = 'none';
            });

            // Close modal if click outside the content
            window.addEventListener('click', function(event) {
                if (event.target == defaultPublicityModal) {
                  defaultPublicityModal.style.display = 'none';
                }
            });

             // Delay showing the modal to ensure everything is loaded (optional but good practice)
            window.onload = function() {
              setTimeout(showDefaultModal, 500); // Show after 500ms, adjust as needed
           };
        });

    </script>
    <!-- final de scripts -->
</body>
</html>