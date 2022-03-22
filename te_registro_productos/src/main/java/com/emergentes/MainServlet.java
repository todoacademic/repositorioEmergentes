
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
        String producto = request.getParameter("nombreProducto");
        String categoria = request.getParameter("categoria");
        String existencia = request.getParameter("existencia");
        String precio = request.getParameter("precio");
        // instanciar la clase Producto
        Producto objprod = new Producto();
        // cargar datos
        objprod.setNombreProducto(producto);
        objprod.setCategoria(categoria);
        objprod.setExistencia(existencia);
        objprod.setPrecio(precio);
        // mandar el objeto objprod
        request.setAttribute("pro", objprod);
        // despachar a una direccion 
        request.getRequestDispatcher("mostrar.jsp").forward(request, response);
    }

}
