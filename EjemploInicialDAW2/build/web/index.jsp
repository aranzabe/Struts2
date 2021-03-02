<%-- 
    Document   : index
    Created on : 13-feb-2019, 12:14:41
    Author     : fernando
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
        </s:form>
    </body>
</html>
