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
    <title>Obtener los valores del JavaBeans</title>
</head>
<body>
<h1>Calculando el área del rectangulo</h1>
<%--Accedo al javaBeans--%>
<jsp:useBean id="rectangulo" class="web.Rectangulo" scope="session"/>
<%--imprimir los valores ya seteados--%>
valor de la base: <jsp:getProperty name="rectangulo" property="base"/>
valor de la altura: <jsp:getProperty name="rectangulo" property="altura"/>
valor resultante:<%=rectangulo.getCalcularArea()%>
<a href="index.jsp">ir al index</a>
</body>
</html>
