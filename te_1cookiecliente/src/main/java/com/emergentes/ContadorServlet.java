
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ContadorServlet", urlPatterns = {"/ContadorServlet"})
public class ContadorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        // Comando para imprimir el mensaje 
        PrintWriter out = response.getWriter();
        
        // Usuario que ingresa por primera vez al sitio 
        boolean nuevoUsuario = true;
        // Obtener arreglo de cookies existentes en el servidor 
        Cookie[] cookies = request.getCookies();
        
        // Verificar si ya existe la cookie 
        if(cookies != null){
            for(Cookie c : cookies){
                if(c.getName().equals("visitanteRepetitivo") && c.getValue().equals("si")){
                    // Si existe la cookie, el visitante es recurrente 
                    nuevoUsuario = false; // false  xq ya existe
                    break; // abandona el ciclo 
                }
            }
        }
        
        String mensaje = null;
        
        if(nuevoUsuario){
            // Creamos la cookie
            Cookie visitanteN = new Cookie("visitanteRepetitivo","si");
            response.addCookie(visitanteN); // adicionando la cookie
            mensaje = "Bienvenido a nuestro sitio Web";
        }else{
            mensaje = "Gracias por visitarnos nuevamente";
        }
        
        // Generar contenido a partir del servlet
        response.setContentType("text/html");
        
        out.println("<h1>Página principal</h1>");
        out.println("<hr>");
        out.println("<h3>¡ "+mensaje+" !</h3>");
        out.println("<hr>");
        
        out.close(); // libera recursos 
 
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    }

}
