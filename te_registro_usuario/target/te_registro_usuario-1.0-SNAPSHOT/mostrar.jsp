<%-- 
    Document   : mostrar
    Created on : 20 mar. 2022, 22:51:42
    Author     : Cori
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario registrado</title>
    </head>
    <body>
        <jsp:useBean id="usu" scope="request" class="com.emergentes.Usuario" />
        <h1>¡Gracias por registrarse!</h1>
        <h2>Los datos recibidos son:</h2>
        <hr>
        <table>
            <tr>
                <td> <strong> Su nombre es: </strong> </td>
                <td><jsp:getProperty name="usu" property="nombre" /></td>
            </tr>
            <tr>
                <td> <strong> Su apellido es: </strong> </td>
                <td><jsp:getProperty name="usu" property="apellido" /></td>
            </tr>
            <tr>
                <td> <strong> Su correo es: </strong> </td>
                <td><jsp:getProperty name="usu" property="correo" /></td>
            </tr>
            <tr>
                <td> <strong> Su contraseña es: </strong> </td>
                <td><jsp:getProperty name="usu" property="contrasena" /></td>
            </tr>
        </table>
        <hr>
        <br>
        <a href="index.jsp">Volver al incio</a>
    </body>
</html>
