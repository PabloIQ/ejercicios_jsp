<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Tabla de Multiplicar</title>
	<link rel='stylesheet' type='text/css' href='estilo.css'>
</head>
<body>
	<h1>Generar Tabla de Multiplicar</h1>
    
    <!-- Formulario para ingresar un número entre 1 y 10 -->
    <form action="tabla_multiplicar.jsp" method="get">
        <label for="numero">Introduce un número (1-10):</label>
        <input type="number" id="numero" name="numero" min="1" max="10" required />
        <input type="submit" value="Generar Tabla" />
    </form>

    <% 
        // Obtener el valor de número enviado por el formulario
        String numeroStr = request.getParameter("numero");

        // Si se recibe el número, proceder con la validación y cálculo de la tabla de multiplicar
        if (numeroStr != null && !numeroStr.isEmpty()) {
            try {
                // Convertir el valor de la entrada a un número entero
                int numero = Integer.parseInt(numeroStr);

                // Validar que el número esté en el rango 1-10
                if (numero >= 1 && numero <= 10) {
                    // Mostrar la tabla de multiplicar
                    out.println("<h2>Tabla de multiplicar del " + numero + "</h2>");
                    out.println("<table>");
                    out.println("<tr><th>Multiplicación</th><th>Resultado</th></tr>");

                    for (int i = 1; i <= 10; i++) {
                        out.println("<tr><td>" + numero + " x " + i + "</td><td>" + (numero * i) + "</td></tr>");
                    }

                    out.println("</table>");
                } else {
                    out.println("<h3 style='color:red;'>Por favor, ingresa un número entre 1 y 10.</h3>");
                }
            } catch (NumberFormatException e) {
                out.println("<h3 style='color:red;'>Por favor, ingresa un número válido.</h3>");
            }
        }
    %>
</body>
</html>