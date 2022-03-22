<%-- 
    Document   : index
    Created on : 21 mar. 2022, 11:29:01
    Author     : Cori
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar libro</title>
    </head>
    <body>
        <h1>Registro de Libros</h1>
        <form action="MainServlet" method="POST">
            <table>
                <tr>
                    <td>Titulo</td>
                    <td> <input type="text" name="titulo" value=""> </td>
                </tr>
                <tr>
                    <td>Autor</td>
                    <td> <input type="text" name="autor" value="" > </td>
                </tr>
                <tr>
                    <td>Resumen</td>
                    <td> <textarea name="resumen" rows="5" cols="21">
                         </textarea> </td>
                </tr>
                <tr>
                    <td>Medio</td>
                    <td> <input type="radio" name="medio" value="Fisico"> Fisico <br>
                         <input type="radio" name="medio" value="Magnetico"> Magnetico </td>
                </tr>
                <tr>
                    <td></td>
                    <td> <input type="submit" value="Enviar"> </td>
                </tr>
            </table>
        </form>
    </body>
</html>
