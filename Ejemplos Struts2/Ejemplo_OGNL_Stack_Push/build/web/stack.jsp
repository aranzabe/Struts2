<%-- 
    Document   : stack
    Created on : 21-nov-2015, 9:36:57
    Author     : faranzabe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usando ONGL</title>
    </head>
    <body>
        <%--Usando la etiqueta "<s:property>" mostraremos los valores de "raza", "salario", y "nombre". 
            Al colocarlos de esta forma, Struts buscará estos valores en todos los objetos que estén 
            en el ValueStack:--%>

        <ul>
            <li><strong>Raza: </strong> <s:property value="raza" /></li>
            <li><strong>Salario: </strong> <s:property value="salario" /></li>
            <li><strong>Nombre: </strong> <s:property value="nombre" /></li>
        </ul>
        
        <%--
        Ahora hagamos una segunda prueba haciendo uso de los índices del ValueStack.
        El uso de índices permite que seleccionemos valores de objetos que se encuentran 
        a una profundidad mayor en el ValueStack.
        --%>
        <ul>
            <li><strong>Animal:  </strong><s:property value="[0].nombre" /></li>
            <li><strong>Persona: </strong><s:property value="[1].nombre" /></li>
        </ul>
        <%--
        Cuando Struts 2 ejecuta un Action como consecuencia de una petición, este 
        action es colocado en la cima del ValueStack, es por esto que podemos acceder 
        a sus atributos haciendo una llamada directa al nombre del mismo, como lo 
        hicimos en el ejemplo del formulario.
        --%>
    </body>
</html>
