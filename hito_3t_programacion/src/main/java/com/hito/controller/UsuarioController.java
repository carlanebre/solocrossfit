/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.hito.controller;
import com.hito.dao.UsuarioDAO;
import com.hito.model.Usuario;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.text.DecimalFormat;

/**
 *
 * @author carlanebre
 */
@WebServlet(name = "UsuarioController", urlPatterns = {"/UsuarioController"})
public class UsuarioController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UsuarioController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UsuarioController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
        // Recoger datos del formulario
        String user = request.getParameter("user");
        String email = request.getParameter("email");
        String plan = request.getParameter("plan");
        String pesoStr = request.getParameter("peso");
        String category = request.getParameter("selectedCategory");
        //String category = request.getParameter("category");
        String eventosStr = request.getParameter("eventos");
        String horasStr = request.getParameter("horas");
        
               
        // Validar si los campos requeridos están vacíos
        if (user.isEmpty() || email.isEmpty() || plan.isEmpty() || pesoStr.isEmpty() || eventosStr.isEmpty() || horasStr.isEmpty()) {
            // Mostrar un mensaje de error o redireccionar a una página de error
            request.setAttribute("alerta","<div class=\"alert alert-warning\" role=\"alert\">\n" +
        "  Por favor, completa todos los campos requeridos.\n" +
        "</div>");
            RequestDispatcher rd = request.getRequestDispatcher("tarifas.jsp");
            rd.forward(request, response);
            return;
        }
        
        // Setear variable para mostrar valor en HTML
        String planString = null;
        switch (plan) {
            case "princi":
                planString = "Principiante";
                break;
            case "inter":
                planString = "Intermedio";
                break;
            case "elite":
                planString = "Elite";
                break;
            default:
                break;
        }
        
        // Setear variable
        String categoryString = null;

        switch (category) {
            case "1":
                categoryString = "Peso pesado (>100kg)";
                break;
            case "2":
                categoryString = "Peso mediopesado (100kg)";
                break;
            case "3":
                categoryString = "Peso mediano (90kg)";
                break;
            case "4":
                categoryString = "Peso mediano ligero (81kg)";
                break;
            case "5":
                categoryString = "Peso ligero (73kg)";
                break;
            case "6":
            case "7":
                categoryString = "Peso pluma (66kg)";
                break;
            default:
                break;
        }

        // Convierte de String a int
        int peso = Integer.parseInt(pesoStr);
        int eventos = Integer.parseInt(eventosStr);
        int horas = Integer.parseInt(horasStr);
        
        // Verificar si los valores son negativos
        try {
            if (peso < 0 || eventos < 0 || horas < 0) {
                // Mostrar un mensaje de error si los valores son negativos
                request.setAttribute("alerta", "<div class=\"alert alert-danger\" role=\"alert\">\n" +
                        "  Los valores no pueden ser negativos.\n" +
                        "</div>");
                RequestDispatcher rd = request.getRequestDispatcher("tarifas.jsp");
                rd.forward(request, response);
                return;
            }
            
        // Verificar si horas privadas son mayor que 20
        if (horas > 20) {
            // Mostrar una alerta si horas es mayor que 20
            request.setAttribute("alerta","<div class=\"alert alert-danger\" role=\"alert\">\n" +
        "Sólo puedes recibir un máximo de 20 horas de entrenamiento privado al mes.\n" +
        "</div>");
            RequestDispatcher rd = request.getRequestDispatcher("tarifas.jsp");
            rd.forward(request, response);
            return;
        }
        
        // Verificar si el plan es Principiante y el número de competiciones es mayor a 0
        if (plan.equals("princi") && eventos > 0) {
            // Mostrar una alerta si el plan es Principiante y hay un número de competiciones
            request.setAttribute("alerta", "<div class=\"alert alert-danger\" role=\"alert\">\n" +
                    "Solo los planes Intermedio y Élite pueden participar en las competiciones. Por favor, selecciona otro plan.\n" +
                    "</div>");
            RequestDispatcher rd = request.getRequestDispatcher("tarifas.jsp");
            rd.forward(request, response);
            return;
        }
        
        // Instanciar clase Usuario (INSTANCIANDO USUARIOS)
        Usuario usuario = new Usuario(user, email, planString, peso, categoryString, eventos, horas);
        
        UsuarioDAO dao = new UsuarioDAO();
	dao.insertarUsuario(usuario);

        // Los campos requeridos están completos y los valores no son negativos, continuamos con el procesamiento de los datos
        // ...
        
         } catch (NumberFormatException e) {
            // Mostrar un mensaje de error si algún valor no es numérico
            request.setAttribute("alerta", "<div class=\"alert alert-danger\" role=\"alert\">\n" +
                    "  Los valores deben ser numéricos.\n" +
                    "</div>");
            RequestDispatcher rd = request.getRequestDispatcher("tarifas.jsp");
            rd.forward(request, response);
            return;
        }
        
        // Variables para almacenar los costes
        float costoPlan = 0; // Costo del plan seleccionado por semana
        float costoPlanMensual = 0; // Costo del plan seleccionado por mes
        float costoHorasExtras = 0; // Costo de las horas extras
        float costoCompeticiones = 0; // Costo de las competiciones
        float costoTotal = 0; // Costo total de los entrenamientos al mes
        
        // Determinar el costo del plan seleccionado por semana
        switch (plan) {
            case "princi":
                costoPlan = 25.0f;
                break;
            case "inter":
                costoPlan = 30.0f;
                break;
            case "elite":
                costoPlan = 35.0f;
                break;
            default:
                break;
        }
        
        // Calcular el costo del plan seleccionado por mes
        costoPlanMensual = costoPlan * 4;
        
        // Calcular el costo de las horas extras
        costoHorasExtras = horas * 9.95f;

        // Calcular el costo de las competiciones
        costoCompeticiones = eventos * 22;
        
        // Calcular el costo total
        costoTotal = costoPlanMensual + costoHorasExtras + costoCompeticiones - 5.90f;
        
        // Crear un objeto DecimalFormat para formatear los valores con dos decimales
        DecimalFormat decimalFormat = new DecimalFormat("#0.00");
        
        // Calcular la diferencia de peso utilizando la función calcularDiferenciaPeso
        //int diferenciaPeso = calcularDiferenciaPeso(peso, category);
        
        // Formatear los valores con dos decimales
        String costoPlanMensualf = decimalFormat.format(costoPlanMensual);
        String costoPlanTotalf = decimalFormat.format(costoTotal);
        String costoHorasExtrasf = decimalFormat.format(costoHorasExtras);
        String horasFormateadas = decimalFormat.format(horas);
        String costoCompeticionesf = decimalFormat.format(costoCompeticiones);
        
        
        String tooltip1 = "<a href='#' style='text-decoration: none;' class='tooltip-trigger ion-icon' data-bs-toggle='tooltip' data-bs-placement='top' title='\nCada hora extra cuesta 9,95€'>\n" +
                "    <ion-icon name='information-circle'></ion-icon>\n" +
                "</a>";
        
        String tooltip2 = "<a href='#' style='text-decoration: none;' class='tooltip-trigger ion-icon' data-bs-toggle='tooltip' data-bs-placement='top' title='\nCada competición cuesta 22€'>\n" +
                "    <ion-icon name='information-circle'></ion-icon>\n" +
                "</a>";

        
        // Setear los atributos formateados para mostrarlos en la página
        request.setAttribute("plan",planString);
        request.setAttribute("usuario","@"+user);
        request.setAttribute("costoPlan", costoPlanMensualf+"€");
        request.setAttribute("costoPrivate", costoHorasExtrasf+"€");
        request.setAttribute("horas",horas+"h");
        request.setAttribute("costoEventos",costoCompeticionesf+"€");
        request.setAttribute("eventos",eventos);
        request.setAttribute("costoPlanTotal",costoPlanTotalf+"€");
        request.setAttribute("peso",peso+"kg");
        request.setAttribute("category",categoryString);
        request.setAttribute("tooltip1", tooltip1);
        request.setAttribute("tooltip2", tooltip2);
       
                    
        if (user.equals ("prueba")) {
            request.setAttribute("alerta","<div class=\"alert alert-warning\" role=\"alert\">\n" +
        "Esto es una prueba.\n" +
        "</div>");
            RequestDispatcher rd1 = request.getRequestDispatcher("tarifas.jsp");
            rd1.include (request, response);
        } else {
            request.setAttribute("alerta", "<div class=\"alert alert-success\" role=\"alert\">\n" +
        "Tu tarifa ha sido calculada con éxito. Consulta <a href=\"usuarios.jsp\">usuarios</a>\n" +
        "</div>");
            RequestDispatcher rd2 = request.getRequestDispatcher("tarifas.jsp");
            rd2.include (request, response);
        }
        
        
    } /// CIERRA doPost

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
