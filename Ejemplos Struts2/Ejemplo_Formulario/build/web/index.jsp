<%-- 
    Document   : index
    Created on : 19-nov-2015, 10:14:50
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
        <s:form action="daw2">
            <s:textfield label="Nombre" name="nombre" />
            <s:textfield label="Número de la suerte" type="number" name="numero" />
            <s:submit value="Enviar" />
            <%--
            Podemos ver que en los campos de texto (los textfield) hemos colocado, 
            en los atributos "name" correspondientes, los nombres "nombre" y "numero". 
            Es con estos nombres que se hará referencia a las propiedades (o al menos 
            a los setters) del Action que se encargará de procesar este formulario.
            --%>
        </s:form>
    </body>
</html>
