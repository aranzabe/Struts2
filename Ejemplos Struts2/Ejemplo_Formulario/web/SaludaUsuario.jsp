<%-- 
    Document   : SaludaUsuario
    Created on : 19-nov-2015, 10:08:36
    Author     : faranzabe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <s:property value="mensaje" />
       <%--
       Cuando realizamos una petición para el Action, el DispatcherFilter ejecutará 
       el método "execute" del Action, después colocará este Action en la cima del 
       ValueStack con lo cual lo tendremos disponible.
       --%>
       
       <%--
       Cuando hacemos la petición para el atributo "mensaje", usando la etiqueta 
       "s:property", Struts busca en el ValueStack, de arriba a abajo, un objeto 
       que tenga un método "getMensaje()". Como el primer objeto que encuentra 
       con el método "getMensaje()" es "SaludoAction" (de hecho es el primer objeto 
       en el que busca) ejecuta este método mostrando el valor correspondiente .
       --%>
    </body>
</html>
