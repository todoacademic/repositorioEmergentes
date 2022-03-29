
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.Tarea"%>

<%
    if(session.getAttribute("almacen") == null){
        ArrayList<Tarea> lisaux =  new ArrayList<Tarea>();
        session.setAttribute("almacen", lisaux);
    }
    ArrayList<Tarea> almacen = (ArrayList<Tarea>)session.getAttribute("almacen");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina principal</title>
    </head>
    <body>
        
        <h1>Tareas pendientes</h1>
        
        <a href="registrar.jsp">Nuevo</a>
        <br>
        <br>
        
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Completado</th>
                <th>Acciones</th>
            </tr>
            <%
                if(almacen != null){
                    for(Tarea t : almacen){
                        
            %>
            <tr>
                <td> <%= t.getId() %> </td>
                <td> <%= t.getTarea() %> </td>
                <td> <input type="checkbox"> </td>
                <td> <a href="MainServlet?op=eliminar&id=<%= t.getId() %>">Eliminar</a> </td>
            </tr>
            <%
                }
                }
            %>
        </table>
        
    </body>
</html>
