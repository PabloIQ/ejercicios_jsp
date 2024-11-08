<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Viaje</title>
</head>
<body>
	<h2>Tiempo de Viaje</h2>

    <!-- Formulario para ingresar la distancia y la velocidad -->
    <form action="tiempo_viaje.jsp" method="GET">
        <label for="distancia">Distancia a recorrer (km):</label>
        <input type="number" id="distancia" name="distancia" required step="any"><br/><br/>

        <label for="velocidad">Velocidad promedio (km/h):</label>
        <input type="number" id="velocidad" name="velocidad" required step="any"><br/><br/>

        <input type="submit" value="Calcular Tiempo">
    </form>

    <%
        // Verificamos si los parámetros fueron enviados
        String distanciaParam = request.getParameter("distancia");
        String velocidadParam = request.getParameter("velocidad");

        if (distanciaParam != null && velocidadParam != null) {
            try {
                // Convertimos los parámetros a valores numéricos
                double distancia = Double.parseDouble(distanciaParam);
                double velocidad = Double.parseDouble(velocidadParam);

                // Verificamos que la velocidad no sea 0 para evitar división por cero
                if (velocidad > 0) {
                    // Calculamos el tiempo en horas
                    double tiempo = distancia / velocidad;

                    // Mostramos el resultado
                    out.println("<h3>El tiempo estimado para el viaje es: " + tiempo + " horas.</h3>");
                } else {
                    out.println("<p style='color:red;'>La velocidad no puede ser cero.</p>");
                }
            } catch (NumberFormatException e) {
                out.println("<p style='color:red;'>Por favor, ingresa valores numéricos válidos.</p>");
            }
        }
    %>
</body>
</html>