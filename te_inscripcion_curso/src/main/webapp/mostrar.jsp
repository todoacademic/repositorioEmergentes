<%-- 
    Document   : mostrar
    Created on : 20 mar. 2022, 18:52:08
    Author     : Cori
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inscrito al curso</title>
    </head>
    <body>
        <jsp:useBean id="inc" scope="request" class="com.emergentes.Inscripcion" />
        <h1>¡Gracias por su inscripción en curso!</h1>
        <h2>Los datos recibidos son:</h2>
        <hr>
        <table>
            <tr>
                <td><strong>Su nombre es:</strong></td>
                <td><jsp:getProperty name="inc" property="nombres" /></td>
            </tr>
            <tr>
                <td><strong>Su apellido es:</strong></td>
                <td><jsp:getProperty name="inc" property="apellidos" /></td>
            </tr>
            <tr>
                <td><strong>Su curso es:</strong></td>
                <td><jsp:getProperty name="inc" property="curso" /></td>
            </tr>
        </table>
        <hr>
        <br>
        <a href="index.jsp">Volver al inicio</a>
    </body>
</html>
