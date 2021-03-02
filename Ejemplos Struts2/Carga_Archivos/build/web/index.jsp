<%-- 
    Document   : index
    Created on : 07-dic-2015, 23:53:02
    Author     : faranzabe

    Hacer carga o upload de archivos desde un cliente hacia nuestro servidor, ya 
    sea para almacenarlos o para procesarlos, es una operación que no siempre es 
    sencilla de realizar. Sin embargo Struts 2 cuenta con una manera que hace que 
    lograr esto sea tan sencillo como el resto de las cosas que hasta ahora hemos 
    aprendido.

    Struts 2 proporciona el soporte para la carga de archivos conforme a la especificación 
    de HTML, esto nos permite subir uno o varios archivos desde el cliente al servidor.

    Cuando un archivo es cargado, este será almacenado en un directorio temporal 
    por el interceptor correspondiente (fileUpload). El archivo deberá entonces 
    ser procesado o movido a otra ubicación, por nuestro Action, ya que al terminar 
    la petición el interceptor se encargará de eliminar este archivo temporal.
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
        <%--
        Lo siguiente es crear un formulario. Este será un poco distinto a los que 
        hemos creado hasta ahora. Lo primero es que los datos del formulario deben 
        codificarse de una forma especial antes de que estos sean enviados al servidor. 
        Afortunadamente es el navegador el que se encarga de hacer esta codificación,
        lo único que nosotros debemos hacer es indicar, usando el atributo "enctype" 
        del formulario, cuál codificación será; cuando cargamos archivos estos deben 
        ir codificados en "multipart/form-data".

        Además los datos deben ser enviados por POST (en los formularios HTML el 
        método por default para enviar datos es GET (por la URL), pero en Struts 2 
        por default se envían por POST (en el cuerpo del mensaje de la petición), 
        así que no debemos agregarle ninguna cosa extra en este caso). El formulario, 
        hasta ahora, se ve de la siguiente forma:
        --%>
        <s:actionerror /><%-- Esta etiqueta nos mostrará cualquier error que se produzca --%>
        <s:form action="cargaArchivo" enctype="multipart/form-data">
            <s:file name="archivo" label="Archivo" />
            <s:textfield name="autor" label="Autor" />
            <s:submit value="Enviar" />
        </s:form>
    </body>
</html>
