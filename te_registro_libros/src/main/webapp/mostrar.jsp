<%-- 
    Document   : mostrar
    Created on : 21 mar. 2022, 12:29:42
    Author     : Cori
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Libro registrado</title>
    </head>
    <body>
        <jsp:useBean id="libr" scope="request" class="com.emergentes.Libro" />
        <h1>¡Gracias por registrar su libro!</h1>
        <h2>Los datos recibidos son:</h2>
        <hr>
        <table>
            <tr>
                <td> <Strong> Titulo es: </strong> </td>
                <td> <jsp:getProperty name="libr" property="titulo" /> </td>
            </tr>
            <tr>
                <td> <Strong> El autor es: </strong> </td>
                <td> <jsp:getProperty name="libr" property="autor" />  </td>
            </tr>
            <tr>
                <td> <Strong> Resumen: </strong> </td>
                <td> <jsp:getProperty name="libr" property="resumen" />  </td>
            </tr>
            <tr>
                <td> <Strong> Medio: </strong> </td>
                <td> <jsp:getProperty name="libr" property="medio" />  </td>
            </tr>
        </table>
        <hr>
        <a href="index.jsp">Volver al inicio</a>
    </body>
</html>
