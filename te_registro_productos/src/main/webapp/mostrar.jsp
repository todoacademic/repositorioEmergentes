<%-- 
    Document   : mostrar
    Created on : 21 mar. 2022, 0:30:59
    Author     : Cori
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Producto registrado</title>
    </head>
    <body>
        <jsp:useBean id="pro" scope="request" class="com.emergentes.Producto" />
        <h1>Gracias por registrar su producto!</h1>
        <h2>Los datos recibidos son:</h2>
        <hr>
        <table>
            <tr>
                <td><strong>Su producto es:</strong></td>
                <td><jsp:getProperty name="pro" property="nombreProducto" /></td>
            </tr>
            <tr>
                <td><strong>Su categoria es:</strong></td>
                <td><jsp:getProperty name="pro" property="categoria" /></td>
            </tr>
            <tr>
                <td><strong>Su existencia es:</strong></td>
                <td><jsp:getProperty name="pro" property="existencia" /></td>
            </tr>
            <tr>
                <td><strong>Su precio es:</strong></td>
                <td><jsp:getProperty name="pro" property="precio" /></td>
            </tr>
        </table>
        <hr>
        <br>
        <a href="index.jsp">Volver al inicio</a>
        
    </body>
</html>
