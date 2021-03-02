<%-- 
    Document   : final.jsp
    Created on : 30-nov-2015, 23:30:14
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
        <br/>
        Clave de la lista doble (columna 1): <s:property value="listadoble1" /><br/>
        Clave de la lista doble (columna 2): <s:property value="listadoble2" /><br/>
        Aceptas: <s:property value="checkMe" /><br/>
        Lenguajes seleccionados: <s:property value="chlists" />
        Fecha seleccionada: <s:property value="myBirth" />
        
    </body>
</html>
