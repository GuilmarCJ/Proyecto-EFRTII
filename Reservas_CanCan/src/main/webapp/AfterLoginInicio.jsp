<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <!-- (Your existing head content remains the same) -->
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

        * {
            text-decoration: none;
        }

        body {
            color: var(--primary-color);
            padding-top: 56px;
        }

        .navbar,
        .footer {
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

        @media (max-width: 768px) {
            .carousel-caption-link {
                font-size: 5vw;
            }

            .carousel-caption p {
                font-size: 3vw;
            }
        }

        /* Styles for Dish List */
        .dish-list {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .dish-item {
            display: flex;
            margin-bottom: 20px;
            border-bottom: 1px solid #ccc;
            padding-bottom: 20px;
        }

        .dish-link {
            display: flex;
            text-decoration: none;
            color: inherit;
            width: 100%;
        }

        .dish-image-container {
            width: 30%;
            padding-right: 3%;
        }

        .dish-img {
            max-width: 100%;
            height: auto;
            display: block;
            border-radius: 5px;
        }

        .dish-info {
            flex: 1;
            padding-left: 20px;
        }

        .dish-name {
            font-size: 1.2em;
            margin-bottom: 5px;
            color: var(--primary-color);
        }

        .dish-description {
            font-size: 1em;
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

        /* Modal Styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1050;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.7);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .modal-content {
            background-color: #fefefe;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 600px;
            position: relative;
            text-align: center;
        }

        .modal-content a {
            display: block;
            padding: 10px;
            margin: 5px 0;
            text-decoration: none;
            color: var(--secondary-color);
            background-color: var(--primary-color);
            border-radius: 5px;
        }

        .modal-content a:hover {
            background-color: #e6c600;
        }

        .close {
            color: #aaa;
            position: absolute;
            top: 10px;
            right: 15px;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        .box {
            width: 25px;
            height: 25px;
        }


        /* Styles for publicity Modal */
        #defaultPublicityModal {
            display: none;
            align-items: center;
            justify-content: center;
        }

        #defaultPublicityModal .modal-content {
            margin: auto;
            width: 80%;
            max-width: 600px;
            position: relative;
        }

        #defaultPublicityModal img {
            width: 100%;
            height: auto;
            display: block;
            border-radius: 5px;
        }

        #defaultPublicityModal .close {
            color: white;
        }
          .profile-image {
        width: 30px;
        height: 30px;
        border-radius: 50%;
        object-fit: cover;
        cursor: pointer;
        margin-left: 10px;
    }
    </style>
    <!-- final de CSS -->
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
                    <li class="nav-item"><a class="nav-link" href="Reservas.jsp">Reserva de mesas</a></li>
                    <li class="nav-item"><a class="nav-link" href="AfterLoginCarta.jsp">Carta</a></li>
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

    <!-- inicio de header -->
    <header class="header text-center py-5">
        <h4>Comida española para todo el Perú desde 1986</h4>
    </header>
    <!-- final de header -->

   <!-- inicio de carousel -->
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
        </div>
<div class="carousel-inner">
    <div class="carousel-item active">
        <img src="https://www.livingtours.com/public/user_files/user_2/Matilde/Imagens_para_o_Living_Magazine/tapas-esp.jpg"
            class="d-block w-100" alt="comida 2">
        <div class="carousel-caption d-none d-md-block">
            <div class="carousel-caption-link-container">
                <a href="Reservas.jsp" class="carousel-caption-link">Reserva de mesas</a>
            </div>
        </div>
    </div>
    <div class="carousel-item">
        <img src="https://media.istockphoto.com/id/1350197620/photo/spanish-food.jpg?s=612x612&w=0&k=20&c=O55PrCULXQz9-_vGi_EumWQiNWaXK8NsyACLAzDkSto=" class="d-block w-100" alt="Comida 1">
        <div class="carousel-caption d-none d-md-block">
            <div class="carousel-caption-link-container">
                <a href="Reservas.jsp" class="carousel-caption-link">Reserva de mesas</a>
            </div>
        </div>
    </div>
    <div class="carousel-item">
        <img src="https://png.pngtree.com/background/20230517/original/pngtree-large-table-with-much-food-picture-image_2640615.jpg"
            class="d-block w-100" alt="comida 3">
        <div class="carousel-caption d-none d-md-block">
            <div class="carousel-caption-link-container">
                <a href="Reservas.jsp" class="carousel-caption-link">Reserva de mesas</a>
            </div>
        </div>
    </div>
</div>
        
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Prev</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">next</span>
        </button>
    </div>
    <!-- final de carousel -->
    <!-- inicio de section images -->
<section class="container my-5">
    <h2 class="text-center mb-4">Nuestros Platos</h2>
    <ul class="dish-list">
        <li class="dish-item">
            <a href="#menu" class="dish-link">
                <div class="dish-image-container">
                    <img src="https://elikaeskola.com/wp-content/uploads/me-siento-culpable-por-comer.png"
                         class="dish-img" alt="Tortilla de Papa">
                </div>
                <div class="dish-info">
                    <h3 class="dish-name">Tortilla de Patata</h3>
                    <p class="dish-description">Un clásico español, la tortilla de patata es un plato sencillo pero delicioso.  Se elabora con patatas cortadas en rodajas finas y cebolla (opcional, según la región y la preferencia personal), pochadas lentamente en aceite de oliva hasta que estén tiernas.  Luego se mezclan con huevos batidos y se cuajan en una sartén hasta obtener una tortilla jugosa por dentro y dorada por fuera.  Perfecta para cualquier comida, desde el desayuno hasta la cena, y a menudo se sirve como tapa.</p>
                </div>
            </a>
        </li>
        <li class="dish-item">
            <a href="#menu" class="dish-link">
                <div class="dish-image-container">
                    <img src="https://www.aceitesdeolivadeespana.com/wp-content/uploads/2019/05/pulpo-a-la-gallega.jpg"
                         class="dish-img" alt="Pulpo a la Gallega">
                </div>
                <div class="dish-info">
                    <h3 class="dish-name">Pulpo a la Gallega</h3>
                    <p class="dish-description">Un plato emblemático de Galicia, el pulpo a la gallega, también conocido como "Pulpo á Feira", es una experiencia culinaria única.  El pulpo se cuece tradicionalmente en ollas de cobre hasta que esté tierno, luego se corta en rodajas y se sirve sobre un plato de madera.  Se aliña generosamente con aceite de oliva virgen extra, pimentón (dulce o picante, o una mezcla de ambos) y sal gruesa.  La combinación de la textura tierna del pulpo y el sabor ahumado del pimentón es irresistible.</p>
                </div>
            </a>
        </li>
        <li class="dish-item">
            <a href="#menu" class="dish-link">
                <div class="dish-image-container">
                    <img src="https://www.paulinacocina.net/wp-content/uploads/2022/06/receta-de-langostinos-al-ajillo-1200x900.jpg"
                         class="dish-img" alt="Langostinos al Ajillo">
                </div>
                <div class="dish-info">
                    <h3 class="dish-name">Langostinos al Ajillo</h3>
                    <p class="dish-description">Una tapa española clásica y muy popular, los langostinos al ajillo son un placer para los amantes del ajo y el marisco.  Los langostinos frescos se cocinan rápidamente en aceite de oliva hirviendo, abundante ajo laminado y un toque de guindilla (opcional) para darle un punto picante.  El aceite, impregnado del sabor del ajo y el marisco, se convierte en una salsa deliciosa, perfecta para mojar con pan crujiente.</p>
                </div>
            </a>
        </li>
        <li class="dish-item">
            <a href="#menu" class="dish-link">
                <div class="dish-image-container">
                    <img src="https://i.blogs.es/3f1c6b/gallina-en-pepitoria/1366_2000.jpg" class="dish-img"
                         alt="Gallina en Pepitoria">
                </div>
                <div class="dish-info">
                    <h3 class="dish-name">Gallina en Pepitoria</h3>
                    <p class="dish-description">Un guiso tradicional y reconfortante de la cocina española, la gallina en pepitoria es un plato con historia. Originalmente elaborado con gallina (de ahí su nombre), hoy en día se prepara a menudo con pollo. La carne se dora y luego se cuece a fuego lento en una rica salsa a base de almendras molidas, yemas de huevo duro, azafrán y, a veces, un poco de vino blanco. El resultado es una salsa cremosa y aromática que envuelve la carne, creando un plato lleno de sabor y tradición.</p>
                </div>
            </a>
        </li>
        <li class="dish-item">
            <a href="#menu" class="dish-link">
                <div class="dish-image-container">
                    <img src="https://i.blogs.es/34fb2d/marmitako/1366_2000.jpg" class="dish-img" alt="Marmitako">
                </div>
                <div class="dish-info">
                    <h3 class="dish-name">Marmitako</h3>
                    <p class="dish-description">Un guiso de atún robusto y sabroso originario del País Vasco, el marmitako es un plato marinero por excelencia. El bonito fresco (atún blanco) se combina con patatas, cebollas, pimientos (tanto verdes como choriceros, que le dan un sabor característico) y tomates, cocidos lentamente en un caldo hasta que todos los sabores se fusionan.  El nombre "marmitako" proviene de la palabra vasca "marmita", la olla de metal en la que tradicionalmente se cocinaba este plato a bordo de los barcos pesqueros.</p>
                </div>
            </a>
        </li>
        <li class="dish-item">
            <a href="#menu" class="dish-link">
                <div class="dish-image-container">
                    <img src="https://okdiario.com/img/2021/07/26/receta-de-pescado-frito-a-la-andaluza-o-pescaito-frito-1-620x349.jpg"
                         class="dish-img" alt="Pescado Frito">
                </div>
                <div class="dish-info">
                    <h3 class="dish-name">Pescado Frito</h3>
                    <p class="dish-description">Un clásico de la cocina andaluza, el "pescaito frito" es una celebración de la frescura del mar. Se utilizan diferentes tipos de pescado pequeño, como boquerones, salmonetes, calamares o choco, que se enharinan ligeramente (a menudo con harina de garbanzo para un toque extra crujiente) y se fríen en abundante aceite de oliva hasta que estén dorados y crujientes.  Se sirve inmediatamente, a menudo con un simple chorrito de limón, y es perfecto para compartir como tapa o como plato principal ligero.</p>
                </div>
            </a>
        </li>
    </ul>
</section>
    <!-- final de section images (revised) -->

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
    <!-- final de footer -->

    <!-- inicio de scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            // Function to open a modal
            function openModal(modalId) {
                const modal = document.getElementById(modalId);
                if (modal) {
                    modal.style.display = "flex"; // Change to flex
                }
            }

            // Function to close a modal
            function closeModal(modal) {
                if (modal) {
                    modal.style.display = "none";
                }
            }

            // Attach click event listeners to open modals
            document.querySelectorAll('[data-modal-target]').forEach(button => {
                button.addEventListener('click', (event) => {
                    event.preventDefault(); // Prevent default link behavior
                    openModal(button.dataset.modalTarget);
                });
            });

            // Attach click event listeners to close modals
            document.querySelectorAll('.modal .close').forEach(closeButton => {
                closeButton.addEventListener('click', () => {
                    closeModal(closeButton.closest('.modal'));
                });
            });

            // Close modals when clicking outside the modal content
            window.addEventListener('click', (event) => {
                if (event.target.classList.contains('modal')) {
                    closeModal(event.target);
                }
            });

            // Show the default publicity modal on page load
            openModal('defaultPublicityModal');
        });
    </script>

</body>

</html>