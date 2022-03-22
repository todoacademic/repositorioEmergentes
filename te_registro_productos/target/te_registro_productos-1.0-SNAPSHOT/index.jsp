<%-- 
    Document   : index
    Created on : 20 mar. 2022, 23:55:14
    Author     : Cori
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar producto</title>
    </head>
    <body>
        <h1>Registro de Productos</h1>
        <form action="MainServlet" method="POST">
            <table>
                <tr>
                    <td>Producto</td>
                    <td> <input type="text" name="nombreProducto" value=""> </td>
                </tr>
                <tr>
                    <td>Categoria</td>
                    <td><select name="categoria">
                        <option>Industrial</option>
                        <option>Mecanica</option>
                        <option>Limpieza</option>
                        <option>Fierros</option>
                        <option>Tubos</option>
                    </select></td>
                </tr>
                <tr>
                    <td>Existencia</td>
                    <td> <input type="text" name="existencia" value=""> </td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td> <input type="text" name="precio" value=""> </td>
                </tr>
                <tr>
                    <td></td>
                    <td> <input type="submit" value="Enviar"> </td>
                </tr>
            </table>
        </form>
    </body>
</html>
