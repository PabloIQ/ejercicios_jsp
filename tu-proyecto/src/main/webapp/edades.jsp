<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel='stylesheet' type='text/css' href='estilo.css'>
</head>
<body>
	<h2>Ingrese su edad:</h2>
    <form action="edades.jsp" method="get">
        <label for="edad">Edad:</label>
        <input type="number" id="edad" name="edad" required min="0"/>
        <input type="submit" value="Enviar" />
    </form>

    <% 
        String edadParam = request.getParameter("edad");

        if (edadParam != null && !edadParam.isEmpty()) {
            try {
                int edad = Integer.parseInt(edadParam);
                String categoria;

                if (edad < 12) {
                    categoria = "Infante";
                } else if (edad >= 12 && edad <= 17) {
                    categoria = "Adolescente";
                } else if (edad >= 18 && edad <= 60) {
                    categoria = "Adulto";
                } else {
                    categoria = "Anciano";
                }
    %>
                <h3>Tu categoría es: <%= categoria %></h3>
    <%
            } catch (NumberFormatException e) {
    %>
                <p style="color: red;">Por favor ingrese un valor numérico válido para la edad.</p>
    <%
            }
        }
    %>
</body>
</html>