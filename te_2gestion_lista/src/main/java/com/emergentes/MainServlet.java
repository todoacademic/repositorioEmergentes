
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "MainServlet", urlPatterns = {"/MainServlet"})
public class MainServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        String op = request.getParameter("op");
        
        if(op.equals("eliminar")){
            int pos = -1;
            int buscado = -1;
            
            int id = Integer.parseInt(request.getParameter("id"));
            // Eliminar la tarea
            HttpSession ses = request.getSession();
            ArrayList<Tarea> lista = (ArrayList<Tarea>)ses.getAttribute("almacen");
            for(Tarea t: lista){
                pos++;
                if(t.getId() == id){
                    buscado = pos; 
                }
            }
            lista.remove(buscado);
            response.sendRedirect("index.jsp");
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));
        String tarea = request.getParameter("tarea");

        Tarea objt = new Tarea();
        
        objt.setId(id);
        objt.setTarea(tarea);
        
        HttpSession ses = request.getSession();
        
        ArrayList<Tarea> lista = (ArrayList<Tarea>)ses.getAttribute("almacen");
        
        lista.add(objt);
        
        response.sendRedirect("index.jsp");
        
    }

}
