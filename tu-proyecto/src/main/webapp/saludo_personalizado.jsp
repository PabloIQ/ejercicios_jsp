<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Saludo Personalizado</title>
	<link rel='stylesheet' type='text/css' href='estilo.css'>
</head>
<body>
	<h2>Por favor, ingresa tu nombre y apellido en la URL para recibir un saludo personalizado</h2>
    
    <%
        // Obtener los parámetros de la URL
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");

        // Verificar si los parámetros están presentes
        if (nombre != null && apellido != null) {
            // Si los parámetros existen, mostrar el saludo personalizado
            out.println("<h3>Hola, " + nombre + " " + apellido + "! Bienvenido a mi página.</h3>");
        } else {
            // Si los parámetros no se pasaron, mostrar un mensaje
            out.println("<p>Por favor, ingresa tu nombre y apellido en la URL.</p>");
        }
    %>
</body>
</html>