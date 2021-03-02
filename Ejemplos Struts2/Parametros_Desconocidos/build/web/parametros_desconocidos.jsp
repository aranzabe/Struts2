<%-- 
    Document   : parametros_multiples
    Created on : 07-dic-2015, 23:05:45
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
        <ul>
            <s:iterator value="parametros" var="parametro" status="estatus">
                    <li><s:property value="#estatus.index" /> - <s:property value="parametro" /></li>
            </s:iterator>
        </ul>
    </body>
</html>
