<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CanCan</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            color: goldenrod;
            padding-top: 56px;
        }

        .navbar, .footer {
            background-color: red !important;
        }

        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }

        .header {
            background-color: goldenrod;
            color: black;
        }

        .footer {
            background-color: black;
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
            max-height: 600px; /* Adjust this value as per your preference */
        }
        
        .section-img-container {
    		padding: 0 2%;
    		width: 100%;
		}
		
		.section-img {
		    max-height: 1000px;
		    max-width: 100%;
		    width: auto;
		    height: auto;
		    display: block;
		}
		        
    </style>
</head>
<body>
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

    <header class="header text-center py-5">
        <h1>CanCan</h1>
        <p>Comida española para todo el Perú desde 1986.</p>
    </header>

    <!-- Carousel -->
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://cordobamegusta.es/wp-content/uploads/2017/05/salmorejo-cordobes-cordobamegusta.es_.jpg" class="d-block w-100" alt="comida 2">
            </div>
            <div class="carousel-item">
                <img src="https://i.blogs.es/28bac8/1351621649911/840_560.jpeg" class="d-block w-100" alt="Comida 1">
            </div>
            <div class="carousel-item">
                <img src="https://imagenes.20minutos.es/files/image_1920_1080/uploads/imagenes/2023/03/13/migas-manchegas.jpeg" class="d-block w-100" alt="comida 3">
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
    <!-- End of Carousel -->

	<section class="container section-img-container my-5">
	    <div class="row text-center d-flex align-items-stretch">
	        <div class="col-12 col-md-4 mb-4 d-flex justify-content-center">
	            <img src="https://elikaeskola.com/wp-content/uploads/me-siento-culpable-por-comer.png" class="img-fluid section-img" alt="comida 2">
	        </div>
	        <div class="col-12 col-md-4 mb-4 d-flex justify-content-center">
	            <img src="https://www.aceitesdeolivadeespana.com/wp-content/uploads/2019/05/pulpo-a-la-gallega.jpg" class="img-fluid section-img" alt="Comida 1">
	        </div>
	        <div class="col-12 col-md-4 mb-4 d-flex justify-content-center">
	            <img src="https://www.paulinacocina.net/wp-content/uploads/2022/06/receta-de-langostinos-al-ajillo-1200x900.jpg" class="img-fluid section-img" alt="comida 3">
	        </div>
	        <div class="col-12 col-md-4 mb-4 d-flex justify-content-center">
	            <img src="https://i.blogs.es/3f1c6b/gallina-en-pepitoria/1366_2000.jpg" class="img-fluid section-img" alt="Delicious Dish 1">
	        </div>
	        <div class="col-12 col-md-4 mb-4 d-flex justify-content-center">
	            <img src="https://i.blogs.es/34fb2d/marmitako/1366_2000.jpg" class="img-fluid section-img" alt="Delicious Dish 2">
	        </div>
	        <div class="col-12 col-md-4 mb-4 d-flex justify-content-center">
	            <img src="https://okdiario.com/img/2021/07/26/receta-de-pescado-frito-a-la-andaluza-o-pescaito-frito-1-620x349.jpg" class="img-fluid section-img" alt="Restaurant Interior">
	        </div>
	    </div>
	</section>


    <footer class="footer text-white text-center py-3">
        <div class="container d-flex justify-content-between">
            <a href="#contactanos" class="text-white">Contactanos</a>
            <a href="#politicas-y-terminos" class="text-white">Politicas y Terminos</a>
            <a href="#libro-de-reclamaciones" class="text-white">Libro de Reclamaciones</a>
        </div>
        <br>
        <p>CanCan</p>
        <p>&copy; 2025 CanCan. todos los derechos reservados.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>