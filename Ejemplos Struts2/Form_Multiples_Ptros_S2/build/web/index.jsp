<%-- 
    Document   : index
    Created on : 23-nov-2015, 17:27:26
    Author     : fernando

    En los ejemplos anteriores cada uno de nuestros atributos recibe solo un valor 
    de algún tipo. Sin embargo algunas veces nos será conveniente recibir un conjunto 
    de parámetros, ya sea como un arreglo de valores, o como una lista de valores 
    para poder procesar cada uno de sus elementos.

    Esto es útil para cuando, por ejemplo, tenemos campos de formulario que se 
    van generando dinámicamente, o que tienen el mismo significado en datos (por 
    ejemplo cuando tenemos varios campos para cargar archivos adjuntos en correos 
    electrónicos, o para poder subir varias imágenes de una vez a un sitio).
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Múltiples parámetros S2</title>
    </head>
    <body>
        <s:form action="envioCorreo">
            <s:textfield name="nombre" label="Nombre" />
            
            <s:textfield name="correos" label="Correo" />
            <s:textfield name="correos" label="Correo" />
            <s:textfield name="correos" label="Correo" />
            <s:textfield name="correos" label="Correo" />
            <s:textfield name="correos" label="Correo" />
            <%--
            Podemos ver en el formulario que los 5 campos para colocar los correos 
            electrónicos son exactamente iguales, todos tienen por nombre "correo". 
            Esto es necesario para podamos recibir los valores como un solo conjunto de datos. 
            --%>
            <s:submit value="Enviar" />
        </s:form>
    </body>
</html>
