<%-- 
    Document   : index
    Created on : 19-nov-2015, 10:52:47
    Author     : faranzabe

    OGNL es el acrónimo de Object Graph Navigation Language, un lenguaje de expresiones 
    muy poderoso que nos permite leer valores de objetos Java. Este lenguaje nos permite
    leer valores y ejecutar métodos (que regresen algún valor) para mostrar los valores 
    o resultados de los mismos en nuestras páginas JSP creadas usando las etiquetas de 
    Struts. Además proporciona una conversión automática de tipos que permite convertir 
    datos desde texto HTTP a objetos Java.

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplo ONGL</title>
    </head>
    <body>
         <s:form action="Procesa">
            
            <s:submit value="Cargar datos" />
        </s:form>
    </body>
</html>
