<%-- 
    Document   : archivoCargado
    Created on : 08-dic-2015, 0:00:28
    Author     : faranzabe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Nombre: <s:property value="nombre" /><br />
        Ruta: <s:property value="ruta" /><br />
        Autor: <s:property value="autor" /><br />
        Content Type: <s:property value="archivoContentType" />
    </body>
</html>
