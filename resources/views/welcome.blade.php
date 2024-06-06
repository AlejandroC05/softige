<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SOFTIGE</title>
    <link rel="icon" href="{{ asset('img/softige-icon.ico') }}" type="image/x-icon">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/main.css" />
</head>
<body>
    <div class="container">
      <nav class="navbar navbar-expand-lg custom-nav mt-2">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">SOFTIGE</a>
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNav"
            aria-controls="navbarNav"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="{{ asset('views/contact.php') }}">Contacto</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ asset('views/services.php') }}">Servicios</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ asset('views/about-us.php') }}">Nosotros</a>
              </li>
              <li class="nav-items">
                <a class="nav-link btn btn-sign-in" href="admin">INGRESAR</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </div>


    <div class="container text-center">
        <div class="row">
            <div class="col-md-6 text-center textfather">
                <div class="text1 text-center">                
                    <h2 class="pb-3">Optimice tiempo y haga más con nuestro sistema de gestión de inventario</h2>
                    <span class="text-warning-emphasis">Disponible solo en su versión web</span>
                    <div class="pt-3">
                        <a type="button" class="btn-aquamarine text-center" href="{{ asset('views/contact.php') }}">Adquirir</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 text-start textfather">
                <img src="{{ asset('img/man.png') }}" class="man" alt="Hombre">
            </div>
        </div>
    </div>

    <div class="container2">
    <div class="text-center mt-4">
        <div class="row">
            <div class="col-md-6 text-md-end">
                <img src="{{ asset('img/fast.png') }}" class="fast" alt="Rapidez">
            </div>
            <div class="col-md-6 text-center">
                <div class="text2 text-md-start">                
                    <h3>Rapidez</h3>
                    <p>Gracias a la rápida respuesta de nuestros servidores podrá trabajar a gusto, disfrutando de una buena experiencia de usuario</p>
                    <p>¡Olvídese de la lentitud y déjese llevar por la velocidad!</p>
                </div>
            </div>
        </div>
    </div>

    <div class="text-center">
        <div class="row">
            <div class="col-md-6 text-md-end">
                <img src="{{ asset('img/sencillez.png') }}" class="simplicity text-center" alt="Rapidez">
            </div>
            <div class="col-md-6 text-center">
                <div class="text2 text-md-start">                
                    <h3>Sencillez</h3>
                    <p>Gracias a la interfaz minimalista, disfrutará de un aplicativo amigable y fácil de usar, pudiendo usar el mismo sin temor a equivocarse.</p>
                    <p>¡Olvídese con poco atractivo visual!</p>
                </div>
            </div>
        </div>
    </div>

    <div class="text-center" style="padding-bottom: 35px;">
        <div class="row">
            <div class="col-md-6 text-md-end">
                <img src="{{ asset('img/escalabilidad.png') }}" class="simplicity text-center" alt="Rapidez">
            </div>
            <div class="col-md-6 text-center">
                <div class="text2 text-md-start">                
                    <h3>Escalabilidad</h3>
                    <p>Nuestro aplicativo web puede manejar un aumento de usuarios o la carga de trabajo sin afectar el rendimiento.</p>
                    <p>¡Despreocúpese por el rendimiento!</p>
                </div>
            </div>
        </div>
    </div>
    </div>

    <footer class="footer">
      <ul class="social-icon">
        <li class="icon-elem">
          <a href="https://github.com/AlejandroC05" target="_blank" class="icon">
            <ion-icon name="logo-github"></ion-icon>
          </a>
        </li>
        <li class="icon-elem">
          <a href="http://wa.link/u6jpow" target="_blank" class="icon">
            <ion-icon name="logo-whatsapp"></ion-icon>
          </a>
        </li>
        <li class="icon-elem">
          <a href="https://www.facebook.com/josedavid.cabrerapenagos" target="_blank" class="icon">
            <ion-icon name="logo-facebook"></ion-icon>
          </a>
        </li>
        <li class="icon-elem">
          <a href="mailto:josedavidcabrera358@gmail.com>" class="icon">
            <ion-icon name="mail-outline"></ion-icon>
          </a>
        </li>
      </ul>
      <ul class="menu">
        <li class="menu-elem">
          <a href="#" class="menu-icon"> Inicio </a>
        </li>
        <li class="menu-elem">
          <a href="{{ asset('views/contact.php') }}" class="menu-icon"> Contacto </a>
        </li>
        <li class="menu-elem">
          <a href="{{ asset('views/services.php') }}" class="menu-icon"> Servicios </a>
        </li>
        <li class="menu-elem">
          <a href="{{ asset('views/about-us.php.php') }}" class="menu-icon"> Sobre Nosotros </a>
        </li>
      </ul>
      <p class="text">@2024 | Todos los derechos reservados</p>
    </footer>



    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
