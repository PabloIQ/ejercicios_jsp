#    PABLO IGNACIO QUINTERO

# Ejercicios en JSP

## Instrucciones Generales:

**Entrega**: La entrega se realizará a través de un repositorio de Git. Crea un repositorio y sube tu código siguiendo la estructura que se detalla a continuación:

```
tu-proyecto
├── pom.xml
├── src
│   └── main
│       ├── java
│       │   └── com
│       │       └── miproyecto
│       │           ├── services
│       │           │   ├── CalculadoraImpl.java
│       │           │   └── Calculadora.java
│       │           └── servlets
│       │               └── MiServlet.java
│       └── webapp
│           ├── index.jsp                # Página de inicio o menú para acceder a los ejercicios
│           ├── ejercicios               # Carpeta para los ejercicios JSP
│           │   ├── saludo_personalizado.jsp       # Ejercicio 1: Saludo Personalizado
│           │   ├── calculo_tiempo_viaje.jsp       # Ejercicio 2: Cálculo del Tiempo de Viaje
│           │   ├── mayor_de_tres.jsp              # Ejercicio 3: El Mayor de Tres
│           │   ├── dia_de_la_semana.jsp           # Ejercicio 4: Día de la Semana
│           │   ├── categorizacion_edades.jsp      # Ejercicio 5: Categorización de Edades
│           │   ├── suma_acumulativa.jsp           # Ejercicio 6: Suma Acumulativa
│           │   └── tabla_multiplicar.jsp          # Ejercicio 7: Tabla de Multiplicar
│           └── WEB-INF
│               └── web.xml                        # Archivo de configuración

```

**Valoración**: Se valorará la originalidad y claridad en las soluciones propuestas. Asegúrate de documentar cada etapa del proceso y de comentar tu código JSP.

**Instrucciones de Entrega**: 
- La tarea se realizará en grupos de 3 estudiantes. 
- Se puede utilizar como base el proeycto https://github.com/profeInformatica101/ejercicios_jsp/tree/main/tu-proyecto e importar el proyecto como un proyecto Maven en su entorno de desarrollo. Se deberán completarán los ejercicios y, al finalizar, realizarán un pull request con sus soluciones.
- Asegúrate de que el repositorio esté disponible en la siguiente ruta: https://github.com/<su_usuario_github>/ejercicios_jsp.

---

## Ejercicios de Estructura de Control Secuencial

### 1. Saludo Personalizado
**Enunciado**: Crea una página JSP que solicite al usuario su nombre y apellido por separado. Al enviar el formulario, la página debe mostrar un mensaje que diga "¡Hola [nombre] [apellido]!".  

### 2. Cálculo del Tiempo de Viaje
**Enunciado**: Diseña una página JSP que pida al usuario la distancia a recorrer (en kilómetros) y la velocidad promedio esperada (en km/h). Al enviar el formulario, la página debe calcular y mostrar el tiempo que tomará el viaje en horas.  

## Ejercicios de Estructura de Control Selectivas

### 3. El Mayor de Tres
**Enunciado**: Crea una página JSP que solicite al usuario tres números. Al enviar el formulario, la página debe indicar cuál de los tres números es el mayor.  

### 4. Día de la Semana
**Enunciado**: Diseña una página JSP que pida al usuario un número del 1 al 7. Al enviar el formulario, la página debe retornar el día de la semana correspondiente (ejemplo: 1 = Lunes, 2 = Martes, etc.). Si el número está fuera de ese rango, muestra un mensaje de error.  

### 5. Categorización de Edades
**Enunciado**: Crea una página JSP que solicite la edad del usuario. Al enviar el formulario, la página debe mostrar:  
   - "Infante" si la edad es menor de 12 años.  
   - "Adolescente" si tiene entre 12 y 17 años.  
   - "Adulto" si está entre 18 y 60 años.  
   - "Anciano" si es mayor de 60.  

## Ejercicios de Estructura de Control de Repetición

### 6. Suma Acumulativa
**Enunciado**: Diseña una página JSP que pida al usuario un número N. Al enviar el formulario, la página debe calcular y mostrar la suma de todos los números desde 1 hasta N.  

### 7. Tabla de Multiplicar
**Enunciado**: Crea una página JSP que solicite al usuario un número entre 1 y 10. Al enviar el formulario, la página debe mostrar la tabla de multiplicar de ese número.  

