<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incripción al curso</title>
    </head>
    <body>
        <h1>Inscripción en curso</h1>
        <form action="MainServlet" method="POST">
            <table>
                <tr>
                    <td><label>Nombres:</label></td>
                    <td><input type="text" name="nombres" value=""></td>
                </tr>
                <tr>
                    <td><label>Apellidos:</label></td>
                    <td><input type="text" name="apellidos" value=""></td>
                </tr>
                <tr>
                    <td><label>Curso:</label></td>
                    <td><select name="curso">
                        <option>Primer Semestre</option>
                        <option>Segundo Semestre</option>
                        <option>Tercer Semestre</option>
                        <option>Cuarto Semestre</option>
                        <option>Quinto Semestre</option>
                        <option>Sexto Semestre</option>
                        <option>Séptimo Semestre</option>
                        <option>Octavo Semestre</option>
                        <option>Noveno Semestre</option>
                        <option>Décimo Semestre</option>
                    </select></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table> 
        </form>
    </body>
</html>
