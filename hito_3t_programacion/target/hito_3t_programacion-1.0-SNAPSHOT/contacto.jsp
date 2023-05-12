<%-- 
    Document   : contacto
    Created on : 7 may 2023, 1:20:32
    Author     : carlanebre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="json, xml, tecnologia, html">
    <meta name="autor" content="David Millán, Carla Nebreda, David Garzón, Sergio Maeso">
    <title>Solocrossfit</title>
    <link rel="shortcut icon" href="img/icon.jpg">

    <!-- Custom styles for this template -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="estilos/custom.css">
  </head>

  <body id="custom">
    <div class="header-custom">
      <div class="container container-custom">
        <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3">
          <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
            <li><a href="home.jsp"><img src="img/icon.jpg" class="logo"/></a></li>
            <li><a href="home.jsp" class="nav-link title-nav px-2 link-dark">Solocrossfit</a></li>
            <li><a href="planes.jsp" class="nav-link px-2 link-dark">Planes</a></li>
            <li><a href="tarifas.jsp" class="nav-link px-2 link-dark">Tarifas</a></li>
            <li><a href="usuarios.jsp" class="nav-link px-2 link-dark">Usuarios</a></li>
            <li><a href="contacto.jsp" class="nav-link px-2 link-dark">Contacto</a></li>
          </ul>
        </header>
      </div>
    </div><!--end of header-custom-->

    <div class="max700 py-5">
        <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
            <h1 class="display-4 fw-normal">Contáctanos</h1>
            <p class="lead">Completa el formulario y uno de nuestros expertos se pondrá en contacto contigo. Estamos encantados de responder a tus preguntas y guiarte en tu camino hacia el éxito.</p>
          </div>

          <form>
            <div class="mb-3 input-group-lg">
              <label for="exampleInputEmail1" class="form-label">Introduce tu email</label>
              <input type="email" class="form-control">
            </div>

            <div class="mb-3 input-group-lg">
              <label for="exampleInputEmail1" class="form-label">Introduce tu nombre</label>
              <input type="email" class="form-control">
            </div>

            <div class="mb-4">
              <label for="post" class="form-label">Escribe tus preguntas</label>
              <textarea id="post" class="form-control"rows="3" placeholder="Escribe tus dudas o sugerencias."></textarea>
            </div>

            <button type="submit" class="btn btn-lg btn-primary w-100">Enviar</button>
          </form>
          
    </div>
      
        <footer class="py-3 my-4">
          <div class="nav justify-content-center border-bottom pb-3 mb-3"></div>
          <p class="text-center text-muted">&copy; 2023 Solocrossfit</p>
        </footer>
    </div><!--end of container-->

      
  
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
      
  </body>
</html>
