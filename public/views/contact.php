<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contáctanos</title>
    <link rel="icon" href="../img/softige-icon.ico" type="image/x-icon">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>
<div class="container">
      <nav class="navbar navbar-expand-lg custom-nav mt-2">
        <div class="container-fluid">
          <a class="navbar-brand" href="/">SOFTIGE</a>
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
                <a class="nav-link active" aria-current="page" href="#">Contacto</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="services.php">Servicios</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Nosotros</a>
              </li>
              <li class="nav-items">
                <a class="nav-link btn btn-sign-in" href="../admin/auth/login">INGRESAR</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
    
    <div class="container contactt">
          <div class="contact-section text-center">
            <h1>Contáctanos</h1>
            <p>
              Estimado usuario, podrá contactarnos a través del siguiente formulario para cualquier asunto; ya sea de nogocios, dudas, sugerencias, críticas, quejas o inconvenientes.
            </p>

            <div class="contactiner">
              <form method="post">
                <h2 class="text-center">Contact us</h2>
                <div class="form-group"><input class="form-control mb-3 rounded-3" type="text" name="name" placeholder="Nombre" required></div>
                <div class="form-group"><input class="form-control mb-3 rounded-3" type="email" name="email" placeholder="Correo" required></div>
                <div class="form-group"><textarea class="form-control rounded-3" rows="14" name="message" placeholder="Asunto" required></textarea></div>
                <div class="form-group"><button class="btn btn-primary" type="submit" name="enviar">Enviar</button></div>
              </form>
              <?php
              include("correo.php")
              ?>
            </div>

            <p class="pt-md-4">También puede contactarnos a través de nuestras redes sociales:</p>
            <div class="social">
                <a class="btn-custom2" href=""><i class="fa-brands fa-facebook fa-2xl"></i></a>
                <a class="btn-custom2" href=""><i class="fa-brands fa-instagram fa-2xl"></i></a>
                <a class="btn-custom2" href=""><i class="fa-brands fa-linkedin fa-2xl"></i></a>
                <a class="btn-custom2" href=""><i class="fa-solid fa-envelope fa-2xl"></i></a>
                <a class="btn-custom2" href=""><i class="fa-brands fa-whatsapp fa-2xl"></i></a>
            </div>
            
          </div>
    </div>

    <footer class="footer">
      <ul class="social-icon">
        <li class="icon-elem">
          <a href="" class="icon">
            <ion-icon name="logo-facebook"></ion-icon>
          </a>
        </li>
        <li class="icon-elem">
          <a href="" class="icon">
            <ion-icon name="logo-instagram"></ion-icon>
          </a>
        </li>
        <li class="icon-elem">
          <a href="" class="icon">
            <ion-icon name="logo-linkedin"></ion-icon>
          </a>
        </li>
        <li class="icon-elem">
          <a href="" class="icon">
            <ion-icon name="mail-outline"></ion-icon>
          </a>
        </li>
        <li class="icon-elem">
          <a href="" class="icon">
            <ion-icon name="logo-whatsapp"></ion-icon>
          </a>
        </li>
      </ul>
      <ul class="menu">
        <li class="menu-elem">
          <a href="" class="menu-icon">Inicio</a>
        </li>
        <li class="menu-elem">
          <a href="" class="menu-icon">Contacto</a>
        </li>
        <li class="menu-elem">
          <a href="" class="menu-icon">Servicios</a>
        </li>
        <li class="menu-elem">
          <a href="" class="menu-icon">Sobre Nosotros</a>
        </li>
      </ul>
      <p class="text">@2024 | Todos los derechos reservados</p>
    </footer>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
