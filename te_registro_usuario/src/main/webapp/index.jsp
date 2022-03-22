<%-- 
    Document   : index
    Created on : 20 mar. 2022, 22:07:00
    Author     : Cori
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro usuario</title>
    </head>
    <body>
        <h1>Registro de Usuarios</h1>
        <form action="MainServlet" method="POST">
            <table>
                <tr>
                    <td>Nombre:</td>
                    <td> <input type="text" name="nombre" value=""> </td>
                </tr>
                <tr>
                    <td>Apellido:</td>
                    <td> <input type="text" name="apellido" value=""> </td>
                </tr>
                <tr>
                    <td>Correo electrónico:</td>
                    <td> <input type="text" name="correo" value=""> </td>
                </tr>
                <tr>
                    <td>Contraseña:</td>
                    <td> <input type="password" name="contrasena"> </td>
                </tr>
                <tr>
                    <td></td>
                    <td> <input type="submit" value="Enviar"> </td>
                </tr>
            </table>
        </form>
    </body>
</html>
