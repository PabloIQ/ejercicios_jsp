<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Suma Acumulativa</title>
	<link rel='stylesheet' type='text/css' href='estilo.css'>
</head>
<body>
	<h1>Calcular la Suma de los N Primeros Números</h1>

    <!-- Formulario para que el usuario ingrese el número N -->
    <form action="suma_acumulativa.jsp" method="get">
        <label for="numero">Introduce un número (N):</label>
        <input type="number" id="numero" name="numero" required min="1"/>
        <input type="submit" value="Calcular" />
    </form>

    <% 
        // Obtener el valor de N enviado por el formulario
        String numeroStr = request.getParameter("numero");
        if (numeroStr != null && !numeroStr.isEmpty()) {
            try {
                // Convertir el valor de la entrada a un número entero
                int numero = Integer.parseInt(numeroStr);
                
                // Calcular la suma de los primeros N números
                int suma = 0;
                for (int i = 1; i <= numero; i++) {
                    suma += i;
                }
                
                // Mostrar el resultado
                out.println("<h2>La suma de los números de 1 a " + numero + " es: " + suma + "</h2>");
            } catch (NumberFormatException e) {
                out.println("<h2>Por favor ingresa un número válido.</h2>");
            }
        }
    %>
</body>
</html>