
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "MainServlet", urlPatterns = {"/MainServlet"})
public class MainServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        // recibiendo datos del formulario
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String contrasena = request.getParameter("contrasena");
        // instanciando la clase Usuario
        Usuario objusu = new Usuario();
        // cargando datos
        objusu.setNombre(nombre);
        objusu.setApellido(apellido);
        objusu.setCorreo(correo);
        objusu.setContrasena(contrasena);
        //enviando objeto objusu
        request.setAttribute("usu", objusu);
        // direccionar hacia donde se dirige
        request.getRequestDispatcher("mostrar.jsp").forward(request, response);
    }

}
