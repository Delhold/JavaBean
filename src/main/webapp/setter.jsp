<%--
  Created by IntelliJ IDEA.
  Estudiantes: Dario verdezoto y Adrian Lopez
  Date: 5/6/2024
  Descripcion: Calcular el area del Rectangulo
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Seteando el JavaBeans</title>
</head>
<body>
<h1>Seteamos el JaaBeans</h1>
<%--Parámetros seteados --%>
<jsp:useBean id="rectangulo" class="web.Rectangulo" scope="session"/>
<%--Creamos una sesion para los scriplets para inicializar los valores de base y altura --%>

    <form   action="setter.jsp" method="post">
    Base: <input type="text" name="base" value="<%=rectangulo.getBase()%>"> <br>
    Altura: <input type="text" name="altura" value="<%=rectangulo.getAltura()%>"> <br>
        <input type="submit" value="Set Properties">
    </form>
<%
    String baseParam = request.getParameter("base");
    String alturaParam = request.getParameter("altura");
    if (baseParam != null && alturaParam != null) {
        try{
            int base = Integer.parseInt(baseParam);
            int altura = Integer.parseInt(alturaParam);
            //Seteamos
            rectangulo.setBase(base);
            rectangulo.setAltura(altura);
            out.print("Valor de la base: " + base);
            out.print("Valor de la altura: " + altura);
        } catch (NumberFormatException e) {
            out.print("Error ingrese un numero valido");
        }
    }
    %>
<a href="index.jsp">Regresar al inicio</a>
</body>
</html>
