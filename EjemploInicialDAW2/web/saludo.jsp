<%-- 
    Document   : saludo
    Created on : 13-feb-2019, 12:18:11
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
        Hola, ok.  <s:property value="mensaje" />
        <s:iterator value="v" var="valor" status="estatus">
        <li><s:property value="#estatus.index" /> - <s:property value="valor" /></li>
        </s:iterator>
    </body>
</html>
