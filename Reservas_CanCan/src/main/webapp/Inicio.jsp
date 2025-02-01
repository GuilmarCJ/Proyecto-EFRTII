<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		    width: auto;
		    height: auto;
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
                    <li class="nav-item"><a class="nav-link" href="#promociones">promociones</a></li>
                    <li class="nav-item"><a class="nav-link" href="#registro">registro</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <header class="header text-center py-5">
        <h1>CanCan</h1>
        <p>Comida española para todo el Peru desde 1986.</p>
    </header>

 
<section class="container my-5">
    <div class="row text-center d-flex align-items-stretch">
        <div class="col-12 col-md-4 mb-4 d-flex justify-content-center">
            <img src="https://www.brillante.es/wp-content/uploads/2024/10/Historia-y-tradicion-de-la-comida-espanola.jpg" class="img-fluid responsive-img" alt="comida 2">
        </div>
        <div class="col-12 col-md-4 mb-4 d-flex justify-content-center">
            <img src="https://comedera.com/wp-content/uploads/sites/9/2014/08/IMG_4792111111.jpg?resize=480,328&quality=80" class="img-fluid responsive-img" alt="Comida 1">
        </div>
        <div class="col-12 col-md-4 mb-4 d-flex justify-content-center">
            <img src="https://img-global.cpcdn.com/recipes/recipes_123301_v1420981937_receta_foto_00123301-vowmoa2f6rq1lkyessrw/1200x630cq70/photo.jpg" class="img-fluid responsive-img" alt="comida 3">
        </div>
        <div class="col-12 col-md-4 mb-4 d-flex justify-content-center">
            <img src="https://i.blogs.es/3f1c6b/gallina-en-pepitoria/1366_2000.jpg" class="img-fluid responsive-img" alt="Delicious Dish 1">
        </div>
        <div class="col-12 col-md-4 mb-4 d-flex justify-content-center">
            <img src="https://i.blogs.es/34fb2d/marmitako/1366_2000.jpg" class="img-fluid responsive-img" alt="Delicious Dish 2">
        </div>
        <div class="col-12 col-md-4 mb-4 d-flex justify-content-center">
            <img src="https://okdiario.com/img/2021/07/26/receta-de-pescado-frito-a-la-andaluza-o-pescaito-frito-1-620x349.jpg" class="img-fluid responsive-img" alt="Restaurant Interior">
        </div>
    </div>
</section>
  
<footer class="footer text-white text-center py-3">
    <div class="container d-flex justify-content-between">
        <a href="#contactanos" class="text-white">Contactanos</a>
        <a href="#politicas-y-terminos" class="text-white">Politicas y Terminos</a>
        <a href="#libro-de-reclamaciones" class="text-white">Libro de Reclamaciones</a>
    </div>
    <p>&copy; 2025 CanCan. todos los derechos reservados.</p>
</footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>