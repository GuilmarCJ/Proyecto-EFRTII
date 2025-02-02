<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bienvenido a Cancan</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/fondo.jpg'); /* Ruta de la imagen de fondo */
            background-size: cover; /* Ajusta la imagen para cubrir toda la página */
            background-position: center; /* Centra la imagen */
            background-repeat: no-repeat; /* Evita que la imagen se repita */
            color: goldenrod; /* Texto dorado */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .navbar {
            text-align: center;
            background-color: black !important; /* Barra de navegación roja */
            padding: 10px;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 100;
        }

        .footer {
            background-color: black; /* Pie de página negro */
            color: goldenrod; /* Texto dorado */
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
            text-align: center;
        }

        .container {
            display: flex;
            background-color: rgba(255, 255, 255, 0.9); /* Fondo blanco semi-transparente */
            border-radius: 100px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 1000px; /* Ancho aumentado */
            margin-top: 60px; /* Espacio para la barra de navegación */
            margin-bottom: 60px; /* Espacio para el pie de página */
        }

        .welcome-section {
            flex: 1;
            padding: 30px; /* Más espacio interno */
            width: 50px
            background-color: rgba(248, 249, 250, 0.9); /* Fondo gris claro semi-transparente */
            border-radius: 8px 0 0 8px;
        }

        .form-section {
            flex: 1;
            padding: 90px; /* Más espacio interno */
        }

        h1 {
            text-align: center;
            color: black; /* Texto negro */
        }

        .form-group {
            margin-bottom: 20px; /* Más espacio entre los campos */
        }

        .form-group label {
            display: block;
            margin-bottom: 30px;
            color: black; 
        }

        .form-group input {
            width: 100%;
            padding: 10px; 
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .form-group input[type="checkbox"] {
            width: auto;
        }

        .btn {
            width: 100%;
            padding: 12px; 
            background-color: red; 
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: darkred; 
        }

        .login-link {
            text-align: center;
            margin-top: 20px; 
        }

        .login-link a {
            color: red; 
            text-decoration: none;
        }

        .login-link a:hover {
            text-decoration: underline;
        }

        .responsive-img {
            max-height: 300px;
            width: auto;
            height: auto;
        }

        .custom-navbar {
            background-color: rgba(0, 0, 0, 0.5);
            padding: 10px;
        }
        strong {
            color: #d9534f;
        }

        /* Estilo campos inválidos */
        .form-control:invalid {
            border-color: #dc3545; 
        }

        .invalid-feedback {
            color: #dc3545; 
        }
        .logo {
            height: 50px;
            width: auto;
        }
    
        /* Estilos para el footer */
.footer {
    background-color: black;
    color: goldenrod; 
    padding: 10px;
    position: fixed;
    bottom: 0;
    width: 100%;
}

.footer-content {
    display: flex;
    justify-content: space-between;
    align-items: center; 
    max-width: 90%;
    margin: 0 auto; 
    padding: 10 20px; 
}

.footer-left {
    display: flex;
    align-items: center;
    gap: 10px; 
}

.social-links {
    display: flex;
    gap: 10px; 
}

.social-links img {
    width: 30px; 
    height: 30px;
    transition: opacity 0.3s ease;
}

.social-links img:hover {
    opacity: 0.7; 
}

.logo1 {
    height: 80px;
    width: auto;
}
    </style>
</head>
<body>
   <!-- Barra de navegación con logo y menú -->
<nav class="navbar navbar-expand-lg custom-navbar">
    <div class="container-fluid">
        <!-- Logo -->
        <a class="navbar-brand d-flex align-items-center" href="#">
            <img src="images/cancan.png" alt="Logo Cancan" class="logo">
        </a>

        <!-- Botón para móviles -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Menú de navegación -->
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link text-white" href="#">Reserva de mesas</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="#">Menú</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="#">Promociones</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="#">Registro</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown">
                        Mi Cuenta
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Perfil</a></li>
                        <li><a class="dropdown-item" href="#">Cerrar sesión</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

    <!-- Contenedor principal -->
    <div class="container">
        <!-- Sección de bienvenidaa -->
        <div class="welcome-section">
        <br/>
        <br/>
        <br/>
            <h1>Porque registrarte?</h1>
            <p>1.Regístrate en segundos y comienza a disfrutar de todos los beneficios.</p>
            <p>2.Asegura tu mesa en pocos clics, sin llamadas ni esperas.</p>
            <p>3.Recibe descuentos y promociones especiales solo para usuarios registrados.</p>
            <p>4.Guarda tus preferencias y disfruta de un servicio adaptado a ti.</p>
            <p>5.Evita colas y asegura tu lugar en tu restaurante favorito al instante.</p>
            <p>6.Modifica o cancela tus reservas fácilmente desde tu cuenta.</p>
            <p>8.Mantente al tanto de eventos especiales y nuevas promociones.</p>
            <p>9.Sé el primero en reservar para eventos exclusivos y noches temáticas.</p>
            <p>10.Disfruta de momentos inolvidables con tus seres queridos.</p>
        </div>

        <!-- Sección del formulario -->
        <div class="form-section">
            <h2>Regístrate Ya!!!!!</h2>
            <p>¿Ya tienes una cuenta? <a href="Login.jsp">Iniciar Sesión</a></p>

            <form action="registro.jsp" method="post" class="needs-validation" novalidate>
                <div class="form-group">
                    <label for="dni">DNI / Número de documento</label>
                    <input type="text" id="dni" name="dni" class="form-control" required>
                    <div class="invalid-feedback">
                        Campo obligatorio.
                    </div>
                </div>
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" id="nombre" name="nombre" class="form-control" required>
                    <div class="invalid-feedback">
                        Campo obligatorio.
                    </div>
                </div>
                <div class="form-group">
                    <label for="apellidos">Apellidos</label>
                    <input type="text" id="apellidos" name="apellidos" class="form-control" required>
                    <div class="invalid-feedback">
                        Campo obligatorio.
                    </div>
                </div>
                <div class="form-group">
                    <label for="telefono">Teléfono</label>
                    <input type="tel" id="telefono" name="telefono" class="form-control" required>
                    <div class="invalid-feedback">
                        Campo obligatorio.
                    </div>
                </div>
                <div class="form-group">
                    <label for="email">Correo electrónico</label>
                    <input type="email" id="email" name="email" class="form-control" required>
                    <div class="invalid-feedback">
                        Campo obligatorio.
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">CONTINUAR</button>
            </form>
            <p><strong>¡No esperes más!</strong> Regístrate ahora y comienza a disfrutar de una experiencia única con nosotros. 😊</p>
        </div>
    </div>

    <!-- Pie de página -->
   <div class="footer">
    <div class="footer-content">
        <div class="footer-left">
            <img src="images/cancan.png" alt="Logo Cancan" class="logo1">
            <p>&copy; 2025 Cancan Restaurante. Todos los derechos reservados.</p>
        </div>
        <div class="social-links">
            <a href="https://facebook.com" target="_blank">
                <img src="images/facebook.jpg" alt="Facebook">
            </a>
            <a href="https://instagram.com" target="_blank">
                <img src="images/instagram.jpg" alt="Instagram">
            </a>
            <a href="https://twitter.com" target="_blank">
                <img src="images/twitter.jpg" alt="Twitter">
            </a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Deshabilitar el envío de formularios si hay campos no válidos
        (function () {
            'use strict'
            
            var forms = document.querySelectorAll('.needs-validation')

            // Bucle sobre ellos y evitar el envío
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