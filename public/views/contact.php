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
                <a class="nav-link" href="about-us.php">Nosotros</a>
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
            <ul class="wrapper">
  <!-- GitHub Icon -->
  <li class="icon github">
    <span class="tooltip">GitHub</span>
    <svg viewBox="0 0 16 16" height="1.2em" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
      <path d="M8 0C3.58 0 0 3.58 0 8a8 8 0 005.47 7.59c.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.23 1.87.88 2.33.67.07-.52.28-.88.51-1.08-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.28.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8 8 0 0016 8c0-4.42-3.58-8-8-8z"/>
    </svg>
  </li>

  <!-- Facebook Icon -->
  <li class="icon facebook">
    <span class="tooltip">Facebook</span>
    <svg viewBox="0 0 320 512" height="1.2em" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
      <path d="M279.14 288l14.22-92.66h-88.91v-60.13c0-25.35 12.42-50.06 52.24-50.06h40.42V6.26S260.43 0 225.36 0c-73.22 0-121.08 44.38-121.08 124.72v70.62H22.89V288h81.39v224h100.17V288z"></path>
    </svg>
  </li>

  <!-- WhatsApp Icon -->
  <li class="icon whatsapp">
    <span class="tooltip">WhatsApp</span>
    <svg viewBox="0 0 448 512" height="1.2em" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
      <path d="M380.9 97.1C339 55.1 285.6 32 228.5 32 103.5 32 0 135.5 0 260.5c0 45.7 11.8 90.3 34.4 129.7L0 480l93.8-33.4c38.4 20.9 81.2 31.9 125.6 31.9 125 0 228.5-103.5 228.5-228.5 0-57.1-23.1-110.5-65.1-152.5zm-152.4 338c-40.2 0-78.9-11-112.7-31.8l-7.9-4.7-55.6 19.8 18.6-53.5-5.1-8.3c-21.4-34.7-32.7-74.7-32.7-115.8 0-115.7 94-209.7 209.7-209.7 56 0 108.6 21.8 148.2 61.4 39.7 39.7 61.5 92.3 61.5 148.2.1 115.6-93.9 209.6-209.6 209.6zm104.5-159.4l-40-18.4c-5.5-2.5-12-1.1-16.2 3.1l-11.4 11.5c-2.3 2.3-5.9 3-8.8 1.7-9.6-4.3-51.4-26.2-73.4-71.1-.8-2.8-.3-6 1.9-8.2l10.6-10.6c4.2-4.2 5.6-10.7 3-16.2l-18.4-40c-4.6-10-16.6-14.5-26.7-10.2l-13.2 5.5c-5.8 2.4-9.6 8.1-9.6 14.3 0 3.2-.9 79.1 59.2 138.2C266.5 312.1 317.4 320 330 320c6.2 0 11.9-3.8 14.3-9.6l5.5-13.2c4.4-10.1-.1-22.1-10.2-26.7z"></path>
    </svg>
  </li>

  <!-- Email Icon -->
  <li class="icon email">
    <span class="tooltip">Email</span>
    <svg viewBox="0 0 512 512" height="1.2em" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <path d="M425.9 129.4c-13.8 11.9-38.1 11.9-51.9 0L87.1 129.4c-13.8 11.9-13.8 32 0 43.9l293.8 249.7c13.8 11.9 38.1 11.9 51.9 0l293.8-249.7c13.8-11.9 13.8-32 0-43.9zM256 362.7l-100.5-86.6 100.5-86.6c11.8 10.2 27.6 10.2 39.4 0l100.5 86.6 100.5-86.6c11.8 10.2 27.6 10.2 39.4 0l100.5 86.6-201 173.3c-11.8 10.2-33.7 10.2-45.5 0l-201-173.3zM256 107.2c-28.7 0-51.9 23.2-51.9 51.9v158.2c0 28.7 23.2 51.9 51.9 51.9h103.8c28.7 0 51.9-23.2 51.9-51.9V158.2c0-28.7-23.2-51.9-51.9-51.9h-103.8z" fill="#fff"/>
        <path d="M425.9 129.4c-13.8 11.9-38.1 11.9-51.9 0L87.1 129.4c-13.8 11.9-13.8 32 0 43.9l293.8 249.7c13.8 11.9 38.1 11.9 51.9 0l293.8-249.7c13.8-11.9 13.8-32 0-43.9zM256 362.7l-100.5-86.6 100.5-86.6c11.8 10.2 27.6 10.2 39.4 0l100.5 86.6 100.5-86.6c11.8 10.2 27.6 10.2 39.4 0l100.5 86.6-201 173.3c-11.8 10.2-33.7 10.2-45.5 0l-201-173.3zM256 107.2c-28.7 0-51.9 23.2-51.9 51.9v158.2c0 28.7 23.2 51.9 51.9 51.9h103.8c28.7 0 51.9-23.2 51.9-51.9V158.2c0-28.7"/>
    </svg>
  </li>
</ul>

            
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
          <a href="/" class="menu-icon">Inicio</a>
        </li>
        <li class="menu-elem">
          <a href="contact.php" class="menu-icon">Contacto</a>
        </li>
        <li class="menu-elem">
          <a href="services.php" class="menu-icon">Servicios</a>
        </li>
        <li class="menu-elem">
          <a href="about-us.php" class="menu-icon">Sobre Nosotros</a>
        </li>
      </ul>
      <p class="text">@2024 | Todos los derechos reservados</p>
    </footer>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
