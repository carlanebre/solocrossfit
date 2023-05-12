<%-- 
    Document   : index
    Created on : 6 may 2023, 13:05:05
    Author     : carlanebre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
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

    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <svg class="bd-placeholder-img hero-img" style="background-image: url('./img/img1b.jpg');" width="100%" height="100%" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"></svg>
            <div class="container">
              <div class="carousel-caption text-start">
                <h1>Conoce el método<br> Solocrossfit</h1>
                <p>Te ayudamos a lograr tus objetivos.</p>
                <p><a class="btn btn-lg btn-outline-light" href="usuarios.jsp">Conócenos</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <svg class="bd-placeholder-img hero-img" style="background-image: url('./img/img2b.jpg');" width="100%" height="100%" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"></svg>
            <div class="container">
              <div class="carousel-caption text-start">
                <h1>Supera tus retos</h1>
                <p>En nuestro gimnasio, te impulsamos hacia la grandeza.</p>
                <p><a class="btn btn-lg btn-outline-light" href="tarifas.jsp">Cálcula tu tarifa</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <svg class="bd-placeholder-img hero-img" style="background-image: url('./img/img3b.jpg');" width="100%" height="100%" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"></svg>
            <div class="container">
              <div class="carousel-caption text-end">
                <h1>Conquista el éxito</h1>
                <p>Eleva tu potencial, rompe límites.</p>
                <p><a class="btn btn-lg btn-outline-light" href="planes.jsp">Ver planes</a></p>
              </div>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div><!--end of carrusel-->

      <div class="container container-narrow">     
        <h1 class="visually-hidden">Heroes examples</h1>

        <div class="px-4 py-5 my-5 text-center">
            <img class="d-block mx-auto mb-4" src="img/icon.jpg" alt="" width="72" height="72">
            <h1 class="display-5 fw-bold">Calcula tu tarifa</h1>
            <div class="col-lg-6 mx-auto">
            <p class="lead mb-4">Solocrossfit te da la oportunidad de estar en forma como quieras, ofreciéndote diferentes suscripciones. Escoge la que más te convenga.</p>
            <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                <a href="tarifas.jsp" class="btn btn-primary btn-lg px-4 gap-3">Calcular tarifa</a>
                <a href="planes.jsp" class="btn btn-outline-secondary btn-lg px-4">Ver planes</a>
            </div>
            </div>
        </div>

        <div class="max700">
            <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
                <h1 class="display-4 fw-normal">Planes de entrenamiento</h1>
                <p class="lead">En Solocrossfit te ofrecemos planes de entrenamiento diseñados para adaptarse a tus necesidades y objetivos, para que logres tus metas de una manera divertida y efectiva.</p>
              </div>
              <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
                <div class="col">
                  <div class="card mb-4 rounded-3 shadow-sm">
                    <div class="card-header py-3">
                      <h4 class="my-0 fw-normal">Principiante</h4>
                    </div>
                    <div class="card-body">
                      <h1 class="card-title pricing-card-title">25€<small class="text-muted fw-light">/semana</small></h1>
                      <ul class="list-unstyled mt-3 mb-4">
                        <li>Acompañamiento inicial</li>
                        <li>Clases grupales básicas</li>
                        <li>Acceso a instalaciones</li>
                        <li>Evaluación regular de progreso</li>
                      </ul>
                      <a href="tarifas.jsp"><button type="button" class="w-100 btn btn-lg btn-outline-primary">Aplica</button></a>
                    </div>
                  </div>
                </div>
                <div class="col">
                  <div class="card mb-4 rounded-3 shadow-sm">
                    <div class="card-header py-3">
                      <h4 class="my-0 fw-normal">Intermedio</h4>
                    </div>
                    <div class="card-body">
                      <h1 class="card-title pricing-card-title">30€<small class="text-muted fw-light">/semana</small></h1>
                      <ul class="list-unstyled mt-3 mb-4">
                        <li>Clases especializadas</li>
                        <li>Entrenamiento funcional</li>
                        <li>Plan de nutrición avanzado</li>
                        <li>Desafíos progresivos</li>
                      </ul>
                      <a href="tarifas.jsp"><button type="button" class="w-100 btn btn-lg btn-primary">Empieza ya</button></a>
                    </div>
                  </div>
                </div>
                <div class="col">
                  <div class="card mb-4 rounded-3 shadow-sm border-primary">
                    <div class="card-header py-3 text-bg-primary border-primary">
                      <h4 class="my-0 fw-normal">Elite</h4>
                    </div>
                    <div class="card-body">
                      <h1 class="card-title pricing-card-title">35€<small class="text-muted fw-light">/semana</small></h1>
                      <ul class="list-unstyled mt-3 mb-4">
                        <li>Entrenamiento de élite</li>
                        <li>Acceso exclusivo</li>
                        <li>Atención individualizada</li>
                        <li>Seguimiento para tu éxito</li>
                      </ul>
                      <a href="tarifas.jsp"><button type="button" class="w-100 btn btn-lg btn-primary">Empieza ya</button></a>
                    </div>
                  </div>
                </div>
              </div>
              <h2 class="display-6 text-center mb-4 py-4">Compara planes</h2>
              <div class="table-responsive">
                <table class="table text-center">
                  <thead>
                    <tr>
                      <th style="width: 34%;"></th>
                      <th style="width: 22%;">Principiante</th>
                      <th style="width: 22%;">Intermedio</th>
                      <th style="width: 22%;">Elite</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row" class="text-start">Clases grupales</th>
                      <td><ion-icon name="checkmark-outline"></ion-icon></td>
                      <td><ion-icon name="checkmark-outline"></ion-icon></td>
                      <td><ion-icon name="checkmark-outline"></ion-icon></td>
                    </tr>
                    <tr>
                        <th scope="row" class="text-start">Evaluación regular</th>
                        <td><ion-icon name="checkmark-outline"></ion-icon></td>
                        <td><ion-icon name="checkmark-outline"></ion-icon></td>
                        <td><ion-icon name="checkmark-outline"></ion-icon></td>
                      </tr>
                    <tr>
                      <th scope="row" class="text-start">Asesoramiento personal</th>
                      <td></td>
                      <td><ion-icon name="checkmark-outline"></ion-icon></td>
                      <td><ion-icon name="checkmark-outline"></ion-icon></td>
                    </tr>
                  </tbody>
                  <tbody>
                    <tr>
                      <th scope="row" class="text-start">Plan nutricional</th>
                      <td></td>
                      <td><ion-icon name="checkmark-outline"></ion-icon></td>
                      <td><ion-icon name="checkmark-outline"></ion-icon></td>
                    </tr>
                    <tr>
                      <th scope="row" class="text-start">Seguimiento del éxito</th>
                      <td></td>
                      <td></td>
                      <td><ion-icon name="checkmark-outline"></ion-icon></td>
                    </tr>
                  </tbody>
                </table>
              </div>
        </div>
  
        <div class="row align-items-md-stretch py-5">
          <div class="col-md-6 card-c">
            <div class="h-100 p-5 text-bg-dark rounded-3">
              <h2>Calcula tu tarifa.</h2>
              <p>Calcula tu factura mensual de manera sencilla y precisa con nuestra herramienta de tarifas personalizadas.</p>
              <a href="tarifas.jsp"><button class="btn btn-outline-light" type="button">Empieza ya</button></a>
            </div>
          </div>
          <div class="col-md-6">
            <div class="h-100 p-5 bg-light border rounded-3">
              <h2>Datos de nuestros socios</h2>
              <p>Consulta la lista de usuarios registrados en nuestro gimnasio y descubre la diversidad de personas que forman parte de nuestra comunidad.</p>
              <a href="usuarios.jsp"><button class="btn btn-outline-primary" type="button">Descubre más</button></a>
            </div>
          </div>
        </div>
      
        <footer class="py-3 my-4">
          <div class="nav justify-content-center border-bottom pb-3 mb-3"></div>
          <p class="text-center text-muted">&copy; 2023 Solocrossfit</p>
        </footer>
    </div><!--end of container-->
  
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>
</html>
