
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
        // recuperar los valores del formulario
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String curso = request.getParameter("curso");
        // instanciar la clase encuesta
        Inscripcion objinc = new Inscripcion();
        // llenamos los datos recuperados
        objinc.setNombres(nombres);
        objinc.setApellidos(apellidos);
        objinc.setCurso(curso);
        // pasamos el objeto inc
        request.setAttribute("inc", objinc);
        // despache 
        request.getRequestDispatcher("mostrar.jsp").forward(request, response);
    }

}
