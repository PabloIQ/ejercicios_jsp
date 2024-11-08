<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel='stylesheet' type='text/css' href='estilo.css'>
</head>
<body>
	<h2>Ingrese tres números para sabel el mayor.</h2>

    <!-- Formulario para ingresar tres números -->
    <form action="mayor.jsp" method="GET">
        <label for="numero1">Número 1:</label>
        <input type="number" id="numero1" name="numero1" required><br/><br/>

        <label for="numero2">Número 2:</label>
        <input type="number" id="numero2" name="numero2" required><br/><br/>

        <label for="numero3">Número 3:</label>
        <input type="number" id="numero3" name="numero3" required><br/><br/>

        <input type="submit" value="Calcular el Mayor">
    </form>

    <%
        // Obtener los parámetros enviados desde el formulario
        String numero1Param = request.getParameter("numero1");
        String numero2Param = request.getParameter("numero2");
        String numero3Param = request.getParameter("numero3");

        if (numero1Param != null && numero2Param != null && numero3Param != null) {
            try {
                // Convertir los parámetros a números
                double numero1 = Double.parseDouble(numero1Param);
                double numero2 = Double.parseDouble(numero2Param);
                double numero3 = Double.parseDouble(numero3Param);

                // Calcular el mayor de los tres números
                double mayor = numero1;

                if (numero2 > mayor) {
                    mayor = numero2;
                }

                if (numero3 > mayor) {
                    mayor = numero3;
                }

                // Mostrar el resultado
                out.println("<h3>El número mayor es: " + mayor + "</h3>");
            } catch (NumberFormatException e) {
                out.println("<p style='color:red;'>Por favor, ingrese solo números válidos.</p>");
            }
        }
    %>
</body>
</html>