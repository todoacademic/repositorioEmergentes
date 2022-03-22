
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
        // recibiendo datos desde el formulario
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String resumen = request.getParameter("resumen");
        String medio = request.getParameter("medio");
        // instanciando la clase
        Libro objlib = new Libro();
        // cargando datos
        objlib.setTitulo(titulo);
        objlib.setAutor(autor);
        objlib.setResumen(resumen);
        objlib.setMedio(medio);
        // enviando el objeto objlib
        request.setAttribute("libr", objlib);
        //
        request.getRequestDispatcher("mostrar.jsp").forward(request, response);
    }


}
