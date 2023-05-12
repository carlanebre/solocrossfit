<%-- 
    Document   : tarifas
    Created on : 6 may 2023, 16:05:02
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

      <div class="container container-form">     
        <h1 class="visually-hidden">Heroes examples</h1>

        <div class="py-4 text-center">
            <img class="d-block mx-auto mb-4" src="img/icon.jpg" alt="" width="72" height="72">
            <h2>Calcula tu tarifa</h2>
            <p class="lead">Solocrossfit te da la oportunidad de estar en forma como quieras. Introduce tus datos en el formulario y calcularemos tu tarifa automáticamente. Reflejaremos el total de tus entrenamientos al mes y su coste.</p>
          </div>
      
          <div class="row g-5">
            <div class="col-md-5 col-lg-4 order-md-last">
              <h4 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-primary">Tu tarifa</span>
                <span class="badge bg-primary rounded-pill">${plan}</span>
              </h4>
              <ul class="list-group mb-3">
                <li class="list-group-item d-flex justify-content-between lh-sm">
                  <div>
                    <h6 class="my-0">Nombre de usuario</h6>
                    <small class="text-muted">${usuario}</small>
                  </div>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-sm">
                    <div>
                      <h6 class="my-0">Tu peso</h6>
                    </div>
                    <span class="text-muted">${peso}</span>
                  </li>
                  <li class="list-group-item d-flex justify-content-between lh-sm">
                    <div>
                      <h6 class="my-0">Tu categoría</h6>
                      <small class="text-muted">${category}</small>
                    </div>
                    
                  </li>
                <li class="list-group-item d-flex justify-content-between lh-sm">
                  <div>
                    <h6 class="my-0">Coste del plan</h6>
                    <small class="text-muted">(mensual)</small>
                  </div>
                  <span class="text-muted">${costoPlan}</span>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-sm">
                  <div>
                    <h6 class="my-0">Horas extra${tooltip1}</h6>
                    <small class="text-muted">Has entrenado ${horas} con entrenador privado</small>
                  </div>
                  <span class="text-danger">${costoPrivate}</span>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-sm">
                    <div>
                      <h6 class="my-0">Eventos${tooltip2}</h6>
                      <small class="text-muted">Has competido en ${eventos} eventos</small>
                    </div>
                    <span class="text-danger">${costoEventos}</span>
                  </li>
                <li class="list-group-item d-flex justify-content-between bg-light">
                  <div class="text-success">
                    <h6 class="my-0">Promo code</h6>
                    <small>CAMPUSFPPROMO</small>
                  </div>
                  <span class="text-success">−5,90€</span>
                </li>
                
                <li class="list-group-item d-flex justify-content-between lh-sm">
                <div>
                    <h6 class="my-0">Total (EUR)</h6>
                </div>
                <span class=""><strong>${costoPlanTotal}</strong></span>
                </li>
              </ul>
      
              <form class="card p-2">
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Promo code">
                  <button class="btn btn-secondary">Enviar</button>
                </div>
              </form>
            </div>

            <div class="col-md-7 col-lg-8">
                <p>${alerta}</p>
                <p>${error}</p>
              <h4 class="mb-3">Datos del cliente</h4>
              <form class="needs-validation" action="UsuarioController" method="post" novalidate>
                <div class="row g-3">
                    
                  <div class="col-12">
                    <label for="user" class="form-label">Nombre de usuario</label>
                    <input type="text" class="form-control" id="user" placeholder="Usuario" required name="user" required>
                  </div>
      
                  <div class="col-12">
                    <label for="email" class="form-label">Email</label>
                    <div class="input-group needs-validation">
                      <span class="input-group-text">@</span>
                      <input type="text" class="form-control needs-validation" name="email" id="email" placeholder="correo@gmail.com" required>
                    <div class="invalid-feedback">
                        Your email is required.
                      </div>
                    </div>
                  </div>
                    
                  <div class="col-12">
                    <label for="plan" class="form-label">Selecciona un plan de entrenamiento</label>
                    <select class="form-select" id="plan" required name="plan">
                      <option value="">Elige un plan</option>
                      <option value="princi">Principiante</option>
                      <option value="inter">Intermedio</option>
                      <option value="elite">Elite</option>
                    </select>
                    <div class="invalid-feedback">
                      Please select a valid country.
                    </div>
                  </div>
      
                  <div class="col-12">
                    <label for="peso" class="form-label">Seleciona tu peso <span class="text-muted">(kg)</span></label>
                    <input type="range" class="form-range" min="35" max="200" id="peso" name="peso" onchange="updateSelectedNumber(), asignarCategoriaDePeso(this.value)">
                 
                    <p>Tu peso es: <strong><span id="selectedNumber"></span></strong> kg</p>
                  </div>
                    

            <script>
            function asignarCategoriaDePeso(peso) {
              var selectCategoria = document.getElementById("category");
              var selectedCategoria = document.getElementById("selectedCategory");

              if (peso > 100) {
                selectCategoria.value = 1;
              } else if (peso === 100) {
                selectCategoria.value = 2;
              } else if (peso >= 90) {
                selectCategoria.value = 3;
              } else if (peso >= 81) {
                selectCategoria.value = 4;
              } else if (peso >= 73) {
                selectCategoria.value = 5;
              } else if (peso <= 66 || peso > 66) {
                selectCategoria.value = 6;
              } else {
                selectCategoria.value = "";
              }

              selectedCategoria.value = selectCategoria.value;

              selectCategoria.disabled = true;
              selectCategoria.options[selectCategoria.selectedIndex].setAttribute("selected", true);

              var selectCategoria = document.getElementById("category");

              // Desactivar el select al cargar la página
              selectCategoria.disabled = true;
            }

            function updateSelectedNumber() {
              var rangeInput = document.getElementById("peso");
              var selectedNumber = document.getElementById("selectedNumber");
              selectedNumber.textContent = rangeInput.value;
            }

            window.onload = function() {
              // Llamar a las funciones al cargar la página
              asignarCategoriaDePeso(document.getElementById("peso").value);
              updateSelectedNumber();

              // Llamar a la función updateSelectedNumber cada vez que se mueve el rango
              document.getElementById("peso").addEventListener("input", updateSelectedNumber);
            };
            </script>



                <input type="hidden" id="selectedCategory" name="selectedCategory" />

                  <div class="col-12">
                    <label for="category" class="form-label">Tu categoría</label>
                    <select class="form-select" id="category" required name="category">
                      <option value="">Elige categoría</option>
                      <option value="1">Peso pesado (>100kg)</option>
                      <option value="2">Peso mediopesado (100kg)</option>
                      <option value="3">Peso mediano (90kg)</option>
                      <option value="4">Peso mediano ligero (81kg)</option>
                      <option value="5">Peso ligero (73kg)</option>
                      <option value="6">Peso pluma (66kg)</option>
                      <option value="7">Peso pluma (66kg)</option>
                    </select>
                    <div class="invalid-feedback">
                      Please select a valid country.
                    </div>
                  </div>

                  <div class="col-12">
                    <label for="eventos" class="form-label">Número de competiciones este mes</label>
                    <input type="number" class="form-control" id="eventos" placeholder="Escribe el número de eventos" name="eventos" required>
                    <div class="invalid-feedback">
                      Please enter a valid email address for shipping updates.
                    </div>
                  </div>

                  <div class="col-12">
                    <label for="horas" class="form-label">Añade horas extras de entrenamiento privadas <span class="text-muted">(Opcional)</span></label>
                    <input type="number" class="form-control" id="horas" placeholder="Escribe el número de horas extras" name="horas" required>
                    <div class="invalid-feedback">
                      Please enter a valid email address for shipping updates.
                    </div>
                  </div>
                </div>
      
                <hr class="my-4">
                <button class="w-100 btn btn-primary btn-lg" type="submit">Calcular tarifa</button>
              </form>
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
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
          // Inicializar todos los tooltips presentes en la página
          var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
          var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
            return new bootstrap.Tooltip(tooltipTriggerEl);
          });
        });
      </script>
      
  </body>
</html>

