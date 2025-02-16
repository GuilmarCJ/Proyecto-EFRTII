<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-size: cover;
            background-position: center;
            animation: backgroundAnimation 12s infinite;
            background-color: #343a40;
        }
        @keyframes backgroundAnimation {
            0% { background-image: url('images/image1.jpg'); }
            33% { background-image: url('images/image2.jpg'); }
            66% { background-image: url('images/image3.jpg'); }
            100% { background-image: url('images/image1.jpg'); }
        }
        .navbar {
            background-color: #212529;
        }
        .login-container {
            max-width: 400px;
            margin: 100px auto;
            padding: 30px;
            background: #212529;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(255, 255, 255, 0.2);
            color: white;
        }
        .form-control {
            background-color: #495057;
            color: white;
        }
        .form-control:focus {
            background-color: #495057;
            color: white;
        }
        .btn-primary {
            transition: background-color 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }
        .btn-primary:hover {
            background-color: #1a73e8;
            box-shadow: 0px 0px 10px rgba(26, 115, 232, 0.5);
        }
        .text-light:hover {
            color: #ffc107 !important;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-dark">
        <div class="container d-flex justify-content-between">
            <a class="navbar-brand" href="#">
                <img src="images/cancan.png" alt="Logo" height="50">
            </a>
            <a class="text-light" href="index.html" style="font-size: 1.5rem; position: absolute; right: 15px; top: 10px; display: flex; align-items: center;">
                &larr; <span style="margin-left: 10px; font-size: 1.2rem;">Regresar</span>
            </a>
        </div>
    </nav>
    
    <div class="container">
        <div class="login-container">
            <h2 class="text-center mb-4">Iniciar Sesión</h2>

<!-- Mostrar mensaje de error si existe -->
<% if (request.getAttribute("mensaje") != null) { %>
    <div class="alert alert-danger text-center" role="alert">
        <%= request.getAttribute("mensaje") %>
    </div>
<% } %>

<!-- Formulario de inicio de sesión -->
<form action="login" method="post" class="needs-validation" novalidate>
    <div class="mb-3">
        <label for="usuario" class="form-label">Usuario</label>
        <input type="text" class="form-control" id="usuario" name="usuario" required>
        <div class="invalid-feedback">Por favor, ingresa tu usuario.</div>
    </div>
    <div class="mb-3">
        <label for="contrasena" class="form-label">Contraseña</label>
        <input type="password" class="form-control" id="contrasena" name="contrasena" required>
        <div class="invalid-feedback">Por favor, ingresa tu contraseña.</div>
    </div>
    <div class="d-grid">
        <button type="submit" class="btn btn-primary">Ingresar</button>
    </div>
</form>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>