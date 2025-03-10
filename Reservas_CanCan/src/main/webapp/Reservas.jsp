<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reservas</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
            background-image: url('imagenes/TardeCriolla.png.webp'); /* Ruta a la imagen */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            background-repeat: no-repeat;
            height: 100vh;
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
            max-height: 600px;
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
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="images/cancan.png" alt="Logo" height="40"> Restaurante
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"><a class="nav-link" href="#">Inicio</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Reservaciones</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Contacto</a></li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="#">Regresar <-</a></li>
                </ul>
            </div>
        </div>
    </nav>
<div class="container mt-5">
		<br> <br>
        <h2 class="text-center">Realice su Reservación</h2>
        <form class="row g-3" action="ServletReserva?accion=guardar" method="post">
            <div class="mb-3">
                <label for="fecha" class="form-label">Fecha de reservación</label>
                <input type="date" class="form-control" name="txtFecha" required>
                <div class="invalid-feedback">Por favor, seleccione una fecha.</div>
            </div>
            <div class="mb-3">
                <label for="hora" class="form-label">Hora de reservación</label>
              <input type="time" class="form-control" name="txtHora" required>
                <div class="invalid-feedback">Por favor, seleccione una hora.</div>
            </div>
            <div class="mb-3">
                <label for="personas" class="form-label">Número de personas</label>
                <input type="number" class="form-control" name="txtNumPersonas" min="1" required>
                <div class="invalid-feedback">Ingrese un número válido de personas.</div>
            </div>
            <div class="mb-3">
                <label for="comentarios" class="form-label">Comentarios adicionales</label>
                <textarea class="form-control" id="comentarios" name="txtComentarios" rows="3"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Reservar</button>
        </form>
        
        <div id="confirmationMessage" class="alert alert-success mt-3 d-none" role="alert">
        </div>
        <a href="ServletReserva?accion=listar">Ver Reservas</a>
    </div>
    
</body>
</html>