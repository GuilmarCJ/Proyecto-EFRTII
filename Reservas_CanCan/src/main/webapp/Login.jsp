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
            transition: box-shadow 0.3s ease-in-out;
        }
        .login-container:hover {
            box-shadow: 0px 0px 25px rgba(255, 255, 255, 0.4);
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
            <h2 class="text-center">Iniciar Sesi�n</h2>
            <form id="loginForm" class="needs-validation" novalidate>
                <div class="mb-3">
                    <label for="username" class="form-label">Usuario</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                    <div class="invalid-feedback">El usuario es obligatorio.</div>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Contrase�a</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                    <div class="invalid-feedback">La contrase�a es obligatoria.</div>
                </div>
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">Ingresar</button>
                </div>
            </form>
            <p class="text-center mt-3">�No tienes cuenta? <a href="register.jsp" class="text-white">Reg�strate</a></p>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        (function () {
            'use strict';
            var form = document.getElementById('loginForm');
            form.addEventListener('submit', function (event) {
                if (!form.checkValidity()) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        })();
    </script>
</body>
</html>
