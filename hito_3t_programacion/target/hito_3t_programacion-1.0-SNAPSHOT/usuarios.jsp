<%-- 
    Document   : usuarios
    Created on : 11 may 2023, 12:19:50
    Author     : Tecnicos
--%>

<%@page contentType="text/html" language="java" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.hito.dao.UsuarioDAO" %>
<%@ page import="com.hito.model.Usuario" %>
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

    <div class="max900 py-5">
        <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
            <h1 class="display-4 fw-normal">Usuarios</h1>
            <p class="lead">Aquí puedes consultar todos los usuarios registrados en nuestro gimnasio.</p>
          </div>

          <%
          UsuarioDAO usuarioDAO = new UsuarioDAO();
          usuarioDAO.conectar();
          List<Usuario> usuarios = usuarioDAO.obtenerUsuarios();
            %>

            <table class="table table-striped table-bordered">
                <thead class="thead-dark">
                    <tr>
                        <th>Nombre de usuario</th>
                        <th>Email</th>
                        <th>Plan</th>
                        <th>Peso</th>
                        <th>Categoría</th>
                        <th>Eventos</th>
                        <th>Horas</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        for (Usuario u : usuarios) {
                    %>
                    <tr>
                        <td><%=u.getUser()%></td>
                        <td><%=u.getEmail()%></td>
                        <td><%=u.getPlan()%></td>
                        <td><%=u.getPeso()%></td>
                        <td><%=u.getCategory()%></td>
                        <td><%=u.getEventos()%></td>
                        <td><%=u.getHoras()%></td>
                    </tr>
                    <% 
                        }
                    %>
                </tbody>
            </table>
            
            
            
          
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
