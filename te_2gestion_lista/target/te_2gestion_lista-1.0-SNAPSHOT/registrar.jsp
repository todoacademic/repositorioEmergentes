<%-- 
    Document   : registrar
    Created on : 29 mar. 2022, 16:47:01
    Author     : Cori
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de tareas</title>
    </head>
    <body>
        <h1>Bienvenido registre su tarea!</h1>
        <form action="MainServlet" method="POST">
            <table>
                <tr>
                    <td>Id</td>
                    <td> <input type="text" name="id" value="0" size="2"> </td>
                </tr>
                <tr>
                    <td>Tarea</td>
                    <td> <input type="text" name="tarea" value="" size="35"> </td>
                </tr>
                <tr>
                    <td></td>
                    <td> <input type="submit" value="Insertar"> </td>
                </tr>
            </table>
        </form>
    </body>
</html>
