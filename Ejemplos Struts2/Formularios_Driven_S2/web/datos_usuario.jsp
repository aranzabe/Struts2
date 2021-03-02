<%-- 
    Document   : datos_usuario
    Created on : 23-nov-2015, 17:13:17
    Author     : fernando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recuperando datos MD</title>
    </head>
    <body>
        
    Nombre: <strong><s:property value="nombre" /></strong> <br />
    Username: <strong><s:property value="username" /></strong> <br />
    Password: <strong><s:property value="password" /></strong> <br />
    Edad: <strong><s:property value="edad" /></strong> <br />
    Fecha de Nacimiento: <strong><s:property value="fechaNacimiento" /></strong>
    
    <!--
    De igual forma modificaremos la página "datos-usuarios.jsp" del directorio 
    "modeldriven" para poder mostrar el valor del número de confirmación:
    -->
    Número de confirmación: <strong><s:property value="numero" /></strong>
    </body>
</html>
