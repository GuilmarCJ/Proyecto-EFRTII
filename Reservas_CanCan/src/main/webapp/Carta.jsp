<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carta - CanCan</title>
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
		    display: flex;
		    align-items: center;
		}
		.dish-img {
		    max-width: 100%;
		    max-height: 200px;
		    height: auto;
		    display: block;
		    border-radius: 5px;
		    object-fit: cover;
		    width: 100%;      
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

        .filter-container {
            margin-bottom: 20px;
            text-align: center;
        }

        .filter-button {
            background-color: var(--primary-color);
            color: var(--secondary-color);
            border: none;
            padding: 10px 15px;
            margin: 5px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .filter-button:hover {
            background-color: var(--link-hover-color);
        }

        .filter-button.active {
            background-color: var(--secondary-color);
            color: var(--text-color);
        }

        .hidden {
            display: none;
        }

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
        .box {
            width: 25px;
            height: 25px;
        }

    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="Inicio.jsp">CANCAN</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="Reservas.jsp">Reserva de mesas</a></li>
                    <li class="nav-item"><a class="nav-link" href="Carta.jsp">Carta</a></li>
                    <li class="nav-item"><a class="nav-link" href="Registro.jsp">Registro</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="miCuentaDropdown" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
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

    <!-- Page Content -->
    <main class="container my-5">
        <h1 class="text-center mb-4">Nuestra Carta</h1>

        <!-- Filter Buttons -->
        <div class="filter-container">
            <button class="filter-button" data-filter="all">Todos</button>
            <button class="filter-button" data-filter="tapas">Tapas</button>
            <button class="filter-button" data-filter="principales">Platos Principales</button>
            <button class="filter-button" data-filter="postres">Postres</button>
            <button class="filter-button" data-filter="bebidas">Bebidas</button>
        </div>

        <!-- Dish List -->
       <ul class="dish-list">
            <!-- Tapas -->
            <li class="dish-item" data-category="tapas">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                        <img src="https://elikaeskola.com/wp-content/uploads/me-siento-culpable-por-comer.png" class="dish-img" alt="Tortilla de Papa">
                    </div>
                    <div class="dish-info">
                        <h3 class="dish-name">Tortilla de Patata</h3>
                        <p class="dish-description">Un clásico español, la tortilla de patata es un plato sencillo pero delicioso.  Hecha con patatas y cebollas (opcional) finamente cortadas, pochadas lentamente en aceite de oliva y luego mezcladas con huevo batido. La mezcla se cocina a fuego lento hasta que esté cuajada por dentro y dorada por fuera. Se puede servir caliente, a temperatura ambiente o incluso fría.  Es perfecta para un almuerzo ligero, una cena informal o como parte de un tapeo.</p>
                    </div>
                </a>
            </li>
            <li class="dish-item" data-category="tapas">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                        <img src="https://www.aceitesdeolivadeespana.com/wp-content/uploads/2019/05/pulpo-a-la-gallega.jpg" class="dish-img" alt="Pulpo a la Gallega">
                    </div>
                    <div class="dish-info">
                        <h3 class="dish-name">Pulpo a la Gallega</h3>
                        <p class="dish-description">Un plato emblemático de Galicia, el pulpo a la gallega, también conocido como "Pulpo á Feira", es una exquisitez para los amantes del marisco.  El pulpo se cuece hasta que esté tierno, tradicionalmente en una olla de cobre. Luego se corta en rodajas, se rocía con aceite de oliva virgen extra, pimentón (dulce o picante) y sal gruesa.  Se sirve típicamente sobre una tabla de madera y se acompaña de patatas cocidas ("cachelos"). El contraste entre el pulpo tierno, el aceite de oliva, el pimentón y la sal es simplemente irresistible.</p>
                    </div>
                </a>
            </li>
            <li class="dish-item" data-category="tapas">
                 <a href="#" class="dish-link">
                    <div class="dish-image-container">
                        <img src="https://www.paulinacocina.net/wp-content/uploads/2022/06/receta-de-langostinos-al-ajillo-1200x900.jpg" class="dish-img" alt="Langostinos al Ajillo">
                    </div>
                    <div class="dish-info">
                        <h3 class="dish-name">Langostinos al Ajillo</h3>
                        <p class="dish-description">Una tapa española clásica y muy popular, los langostinos al ajillo son un placer para los amantes del ajo.  Los langostinos se cocinan rápidamente en aceite de oliva caliente con abundantes láminas de ajo y, a menudo, un toque de guindilla para darle un punto picante.  El aceite se impregna con el sabor del ajo y el marisco, creando una salsa deliciosa para mojar con pan crujiente.  Es un plato sencillo, pero lleno de sabor y perfecto para compartir.</p>
                    </div>
                </a>
            </li>
           <li class="dish-item" data-category="tapas">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                        <img src="https://www.allrecipes.com/thmb/n_OOwj92X4rpCZyQ8sULHBUR95k=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/230569-chef-johns-patatas-brazas-ddmfs-2X3-0917-2e7985bf896d4ea0b1baa2a0c826ea0d.jpg" class="dish-img" alt="Patatas Bravas">
                    </div>
                    <div class="dish-info">
                        <h3 class="dish-name">Patatas Bravas</h3>
                        <p class="dish-description">Las patatas bravas son un clásico imprescindible en cualquier bar de tapas español.  Se trata de patatas cortadas en dados, fritas hasta quedar crujientes por fuera y tiernas por dentro. Lo que las hace "bravas" es la salsa que las acompaña: una salsa roja, picante y ligeramente ahumada, a base de tomate, pimentón y guindilla. A menudo, también se sirven con alioli, una salsa cremosa de ajo y aceite de oliva. La combinación de las patatas crujientes, la salsa brava y el alioli es una explosión de sabor en cada bocado.</p>
                    </div>
                </a>
            </li>
            <li class="dish-item" data-category="tapas">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                        <img src="https://www.hola.com/horizon/landscape/f88ad2ad40be-croquetas-de-jamon-t.jpg" class="dish-img" alt="Croquetas de Jamón">
                    </div>
                    <div class="dish-info">
                        <h3 class="dish-name">Croquetas de Jamón</h3>
                        <p class="dish-description">Las croquetas son una tapa muy versátil y popular en toda España, y las de jamón son unas de las más apreciadas.  Se elaboran con una bechamel espesa a la que se le añade jamón serrano picado finamente.  La bechamel se deja enfriar, se forman las croquetas, se rebozan en pan rallado y se fríen hasta que estén doradas y crujientes. El interior cremoso y el sabor intenso del jamón hacen de estas croquetas un bocado irresistible.</p>
                    </div>
                </a>
            </li>

            <!-- Platos Principales -->
            <li class="dish-item" data-category="principales">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                        <img src="https://i.blogs.es/3f1c6b/gallina-en-pepitoria/1366_2000.jpg" class="dish-img" alt="Gallina en Pepitoria">
                    </div>
                    <div class="dish-info">
                        <h3 class="dish-name">Gallina en Pepitoria</h3>
                        <p class="dish-description">Un guiso tradicional y reconfortante de la cocina española, la gallina en pepitoria es un plato con historia.  La gallina (o pollo) se dora y luego se cuece lentamente en una salsa rica y aromática a base de almendras molidas, azafrán, yemas de huevo duro y caldo.  Las almendras aportan una textura cremosa y un sabor ligeramente dulce, mientras que el azafrán le da un color dorado y un aroma característico.  Es un plato perfecto para los días fríos, ideal para disfrutar con pan para mojar en la deliciosa salsa.</p>
                    </div>
                </a>
            </li>
            <li class="dish-item" data-category="principales">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                         <img src="https://i.blogs.es/34fb2d/marmitako/1366_2000.jpg" class="dish-img" alt="Marmitako">
                    </div>
                    <div class="dish-info">
                         <h3 class="dish-name">Marmitako</h3>
                         <p class="dish-description">Un guiso de atún robusto y sabroso originario del País Vasco, el marmitako es un plato marinero.  El atún fresco se corta en dados y se cocina con patatas, cebolla, pimiento verde, tomate y pimiento choricero.  El pimiento choricero, un tipo de pimiento seco, es el ingrediente clave que le da al marmitako su sabor característico y un color rojizo intenso.  Es un plato contundente y lleno de sabor, perfecto para disfrutar en un día fresco, especialmente cerca de la costa.</p>
                    </div>
                </a>
            </li>
            <li class="dish-item" data-category="principales">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                        <img src="https://okdiario.com/img/2021/07/26/receta-de-pescado-frito-a-la-andaluza-o-pescaito-frito-1-620x349.jpg" class="dish-img" alt="Pescado Frito">
                    </div>
                    <div class="dish-info">
                         <h3 class="dish-name">Pescado Frito</h3>
                         <p class="dish-description">Un clásico de la cocina andaluza, el "pescaito frito" es una celebración de la frescura del mar.  Se utilizan diferentes tipos de pescado pequeño, como boquerones, calamares, salmonetes o chanquetes, que se enharinan ligeramente y se fríen en aceite de oliva muy caliente.  El resultado es un pescado crujiente por fuera y jugoso por dentro, con un sabor a mar inconfundible.  Se sirve normalmente con un chorrito de limón y es perfecto para compartir como aperitivo o plato principal.</p>
                    </div>
                </a>
            </li>
              <li class="dish-item" data-category="principales">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                         <img src="https://www.recetasnestle.com.uy/sites/default/files/srh_recipes/876038bcd1cf5abcaa28e86d9705eaf6.jpg" class="dish-img" alt="Paella">
                    </div>
                    <div class="dish-info">
                         <h3 class="dish-name">Paella</h3>
                         <p class="dish-description">Uno de los platos más famosos de la Comunidad Valenciana, y de España en general, la paella es un arroz seco cocinado en una paellera (un recipiente plano y ancho).  La paella tradicional valenciana incluye pollo, conejo, judías verdes, garrofó (una variedad de judía blanca) y, a veces, caracoles.  El arroz se cocina con un sofrito de tomate, pimentón y azafrán, que le da su color amarillo característico.  La paella es un plato festivo, ideal para compartir en familia o con amigos.</p>
                    </div>
                </a>
            </li>
             <li class="dish-item" data-category="principales">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                        <img src="https://content-cocina.lecturas.com/medio/2022/10/20/paso_a_paso_para_realizar_fabada_asturiana_al_estilo_tradicional_resultado_final_eb690a17_1200x1200.jpg" class="dish-img" alt="Fabada Asturiana">
                    </div>
                    <div class="dish-info">
                        <h3 class="dish-name">Fabada Asturiana</h3>
                        <p class="dish-description">Un plato emblemático de Asturias, la fabada es un guiso contundente y reconfortante, perfecto para los días fríos. Se elabora con fabes de la Granja (una variedad de alubia blanca grande), morcilla asturiana, chorizo, lacón y tocino.  Las fabes se cuecen lentamente con los embutidos hasta que estén tiernas y la salsa haya espesado.  Es un plato rico en sabor y tradición, ideal para disfrutar con una buena sidra asturiana.</p>
                    </div>
                </a>
            </li>
             <li class="dish-item" data-category="principales">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                        <img src="https://cocinaconnoelia.com/wp-content/uploads/2023/10/Cocido-scaled.jpg" class="dish-img" alt="Cocido Madrileño">
                    </div>
                    <div class="dish-info">
                        <h3 class="dish-name">Cocido Madrileño</h3>
                        <p class="dish-description">Un clásico de la cocina madrileña, el cocido es un guiso completo y nutritivo que se sirve en tres "vuelcos".  El primer vuelco es la sopa, un caldo sabroso y reconfortante resultado de la cocción de los garbanzos, las verduras (zanahoria, patata, repollo) y las carnes (morcillo, gallina, chorizo, morcilla, tocino). El segundo vuelco son los garbanzos y las verduras. Y el tercer vuelco son las carnes.  Es un plato tradicionalmente familiar, ideal para disfrutar en los meses de invierno.</p>
                    </div>
                </a>
            </li>

            <!-- Postres -->
            <li class="dish-item" data-category="postres">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                        <img src="https://assets.elgourmet.com/wp-content/uploads/2023/03/cover_sevfzk9cgh_shutterstock-151539476-1024x683.jpg.webp" class="dish-img" alt="Crema Catalana">
                    </div>
                    <div class="dish-info">
                        <h3 class="dish-name">Crema Catalana</h3>
                        <p class="dish-description">Similar a la crème brûlée francesa, este postre catalán es una crema pastelera rica y cremosa a base de yemas de huevo, leche, azúcar, canela y piel de limón.  La crema se cocina a fuego lento hasta que espese y luego se vierte en recipientes individuales.  Antes de servir, se espolvorea con azúcar y se carameliza con un soplete o un quemador especial, creando una capa crujiente y contrastante con la crema suave del interior.  Es un postre elegante y delicioso, perfecto para terminar una comida especial.</p>
                    </div>
                </a>
            </li>
             <li class="dish-item" data-category="postres">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                       <img src="https://lacocinadefrabisa.lavozdegalicia.es/wp-content/uploads/2022/07/TARTA-DE-SANTIAGO.jpg" class="dish-img" alt="Tarta de Santiago">
                    </div>
                    <div class="dish-info">
                        <h3 class="dish-name">Tarta de Santiago</h3>
                        <p class="dish-description">Una tarta de almendras tradicional de Galicia, decorada con la cruz de Santiago.  Se elabora con almendras molidas, huevos, azúcar y, a menudo, un toque de ralladura de limón.  La mezcla se hornea hasta que esté dorada y firme.  Una vez fría, se espolvorea con azúcar glas y se utiliza una plantilla de la cruz de Santiago para crear el diseño característico.  Es un postre sencillo pero delicioso, con un sabor intenso a almendras y una textura ligeramente húmeda.</p>
                    </div>
                </a>
            </li>
            <li class="dish-item" data-category="postres">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                        <img src="https://s1.elespanol.com/2015/02/07/cocinillas/cocinillas_9259185_116007330_1706x1280.jpg" class="dish-img" alt="Arroz con Leche">
                    </div>
                    <div class="dish-info">
                        <h3 class="dish-name">Arroz con Leche</h3>
                        <p class="dish-description">Un postre clásico y reconfortante que se encuentra en muchas culturas, el arroz con leche español es cremoso y aromático.  El arroz se cuece lentamente en leche con azúcar, canela en rama y piel de limón.  La clave está en cocinarlo a fuego muy bajo, removiendo con frecuencia, hasta que el arroz esté tierno y la leche haya espesado hasta adquirir una consistencia cremosa.  Se puede servir caliente o frío, espolvoreado con canela molida.  Es un postre sencillo, pero perfecto para cualquier ocasión.</p>
                    </div>
                </a>
            </li>
              <li class="dish-item" data-category="postres">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                        <img src="https://kirbiecravings.com/wp-content/uploads/2015/08/spanish-churros-chocolate-23a.jpg" class="dish-img" alt="Churros con Chocolate">
                    </div>
                    <div class="dish-info">
                        <h3 class="dish-name">Churros con Chocolate</h3>
                        <p class="dish-description">Un clásico desayuno o merienda española, los churros son una masa frita, crujiente por fuera y tierna por dentro. La masa se prepara con harina, agua y sal, y se introduce en una churrera (una especie de manga pastelera) para darles su forma característica. Se fríen en aceite caliente hasta que estén dorados. Se sirven calientes, espolvoreados con azúcar, y acompañados de una taza de chocolate caliente espeso, perfecto para mojar los churros.</p>
                    </div>
                </a>
            </li>

            <!-- Bebidas -->
              <li class="dish-item" data-category="bebidas">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                       <img src="https://www.themediterraneandish.com/wp-content/uploads/2023/07/tinto-de-verano-recipe-7.jpg" class="dish-img" alt="Vino Tinto">
                    </div>
                    <div class="dish-info">
                         <h3 class="dish-name">Vino Tinto</h3>
                         <p class="dish-description">Disfrute de nuestra selección de vinos tintos de diferentes regiones españolas. Desde los robustos Rioja y Ribera del Duero hasta los afrutados vinos del Priorat y los elegantes vinos de la Mancha, tenemos una opción para cada paladar.  Pregunte a nuestro personal por recomendaciones para maridar su vino con su elección de platos.</p>
                    </div>
                </a>
            </li>
           <li class="dish-item" data-category="bebidas">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                       <img src="https://www.sweetandsabroso.com/wordpress/wp-content/uploads/2018/09/16-2860-post/Spanish-Sangria-with-Pitcher-01.jpg" class="dish-img" alt="Sangría">
                    </div>
                    <div class="dish-info">
                         <h3 class="dish-name">Sangría</h3>
                         <p class="dish-description">Una bebida refrescante y festiva, perfecta para los días calurosos.  La sangría se prepara con vino tinto, frutas troceadas (naranja, limón, manzana, melocotón), un poco de azúcar o licor, y a veces un toque de brandy o gaseosa.  Las frutas se maceran en el vino, aportando su sabor y dulzura.  Se sirve fría, con hielo, y es ideal para compartir en una jarra.</p>
                    </div>
                </a>
            </li>
              <li class="dish-item" data-category="bebidas">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                       <img src="https://baroniadeturis.es/wp-content/uploads/2023/05/vermut.jpeg" class="dish-img" alt="Vermut">
                    </div>
                    <div class="dish-info">
                         <h3 class="dish-name">Vermut</h3>
                         <p class="dish-description">El vermut, o vermú, es un vino aromatizado con hierbas, especias y botánicos.  En España, el vermut es una bebida muy popular, especialmente a la hora del aperitivo ("la hora del vermut").  Se sirve frío, con hielo, una rodaja de naranja o limón y, a veces, un chorrito de sifón.  Hay diferentes tipos de vermut, desde el rojo (más dulce y especiado) hasta el blanco (más seco y herbal).  Es una bebida refrescante y con un toque amargo, perfecta para abrir el apetito.</p>
                    </div>
                </a>
            </li>
            <li class="dish-item" data-category="bebidas">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                        <img src="https://cdn.aarp.net/content/dam/aarp/home-and-family/family-and-friends/2020/07/1140-hard-cider-esp.jpg" class="dish-img" alt="Sidra">
                    </div>
                    <div class="dish-info">
                        <h3 class="dish-name">Sidra</h3>
                        <p class="dish-description">La sidra es una bebida tradicional del norte de España, especialmente de Asturias y el País Vasco.  Se elabora con manzanas fermentadas y tiene un sabor ácido y refrescante.  La sidra asturiana, o "sidra natural", se sirve de una forma muy particular: se escancia, es decir, se vierte desde una altura considerable para que la sidra se oxigene y desarrolle su sabor.  Es una bebida ligera y refrescante, perfecta para acompañar platos de la cocina asturiana, como la fabada.</p>
                    </div>
                </a>
            </li>
             <li class="dish-item" data-category="bebidas">
                <a href="#" class="dish-link">
                    <div class="dish-image-container">
                        <img src="https://www.davidlebovitz.com/wp-content/uploads/2011/06/5880376374_ae0c939472.jpg" class="dish-img" alt="Horchata">
                    </div>
                    <div class="dish-info">
                        <h3 class="dish-name">Horchata</h3>
                        <p class="dish-description">La horchata de chufa es una bebida refrescante y cremosa, típica de la Comunidad Valenciana.  Se elabora con chufas (un tubérculo), agua y azúcar.  Las chufas se remojan, se trituran y se exprimen para extraer su leche.  La horchata tiene un sabor dulce y ligeramente almendrado, y se sirve muy fría, a menudo con "fartons" (unos bizcochos alargados típicos de Valencia).  Es una bebida perfecta para los días calurosos, y es apta para veganos e intolerantes a la lactosa.</p>
                    </div>
                </a>
            </li>
        </ul>
    </main>

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
                                    <span
                                        class="box bg-goldenrod rounded-2 d-flex align-items-center justify-content-center me-2">
                                        <i aria-hidden="true" class="fa fa-user text-dark"></i>
                                    </span>
                                    <span>Registro</span>
                                </a>
                            </li>
                            <li>
                                <a href="Terminos.jsp" class="d-flex align-items-center text-white">
                                    <span
                                        class="box bg-goldenrod rounded-2 d-flex align-items-center justify-content-center me-2">
                                        <i aria-hidden="true" class="fa fa-copyright text-dark"></i>
                                    </span>
                                    <span>Términos y condiciones</span>
                                </a>
                            </li>
                            <li>
                                <a href="Libro.jsp" class="d-flex align-items-center text-white">
                                    <span
                                        class="box bg-goldenrod rounded-2 d-flex align-items-center justify-content-center me-2">
                                        <i aria-hidden="true" class="fa fa-envelope text-dark"></i>
                                    </span>
                                    <span>Libro de reclamaciones</span>
                                </a>
                            </li>
                            <li>
                                <a href="Contacto.jsp" class="d-flex align-items-center text-white">
                                    <span
                                        class="box bg-goldenrod rounded-2 d-flex align-items-center justify-content-center me-2">
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
                    <a href="#"><img src="https://cdn.worldvectorlogo.com/logos/cancan.svg" alt="CanCan"
                            class="cpnazo__img"></a>
                    <div class="line"></div>
                    <p>
                        © 2025 CanCan. todos los derechos reservados.
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <!-- final de footer -->

    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
    document.addEventListener('DOMContentLoaded', function() {
    const filterButtons = document.querySelectorAll('.filter-button');
    const dishItems = document.querySelectorAll('.dish-item');

    filterButtons.forEach(button => {
        button.addEventListener('click', function() {
            // Remove active class from all buttons
            filterButtons.forEach(btn => btn.classList.remove('active'));
            // Add active class to the clicked button
            this.classList.add('active');

            const filter = this.dataset.filter;

            dishItems.forEach(item => {
                if (filter === 'all' || item.dataset.category === filter) {
                    item.classList.remove('hidden');
                } else {
                    item.classList.add('hidden');
                }
            });
        });
    });

    //Initially, show all.  Could set a default active button if needed.
     filterButtons[0].click();
});
    </script>
</body>
</html>