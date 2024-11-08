<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Día de la semana</title>
	<link rel='stylesheet' type='text/css' href='estilo.css'>
</head>
<body>
	<h2>Ingrese un número del 1 al 7 para obtener el día de la semana:</h2>

    <!-- Formulario para ingresar el número -->
    <form action="semana.jsp" method="GET">
        <label for="numero">Número (1-7):</label>
        <input type="number" id="numero" name="numero" min="1" max="7" required><br/><br/>

        <input type="submit" value="Ver Día">
    </form>

    <%
        // Obtener el número enviado por el formulario
        String numeroParam = request.getParameter("numero");

        if (numeroParam != null) {
            try {
                // Convertir el parámetro a un número entero
                int numero = Integer.parseInt(numeroParam);

                // Variable para almacenar el nombre del día
                String dia = "";

                // Verificar el número y asignar el día correspondiente
                switch (numero) {
                    case 1:
                        dia = "Lunes";
                        break;
                    case 2:
                        dia = "Martes";
                        break;
                    case 3:
                        dia = "Miércoles";
                        break;
                    case 4:
                        dia = "Jueves";
                        break;
                    case 5:
                        dia = "Viernes";
                        break;
                    case 6:
                        dia = "Sábado";
                        break;
                    case 7:
                        dia = "Domingo";
                        break;
                    default:
                        // Si el número no está entre 1 y 7, mostrar error
                        dia = "Número inválido. Ingrese un número entre 1 y 7.";
                        break;
                }

                // Mostrar el resultado
                out.println("<h3>El día correspondiente es: " + dia + "</h3>");
            } catch (NumberFormatException e) {
                out.println("<p style='color:red;'>Por favor, ingresa un número válido entre 1 y 7.</p>");
            }
        }
    %>
</body>
</html>