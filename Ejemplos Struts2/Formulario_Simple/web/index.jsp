<%-- 
    Document   : index
    Created on : 23-nov-2015, 12:19:59
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
        <%--
        Usamos la etiqueta "<s:form>" para colocar un formulario en nuestra página. 
        En su atributo "action" colocamos el nombre del Action que se encargará de 
        procesar los datos de este formulario. Dentro de este formulario colocaremos 
        un campo para cada uno de los atributos que puede recibir un Usuario:
        --%>
        <s:form action="index">
            <s:textfield name="nombre" label="Nombre" />
            <s:textfield name="username" label="Username" />
            <s:password name="password" label="Password" />
            <s:textfield name="edad" label="Edad" />
            <s:textfield name="fechaNacimiento" label="Fecha de Nacimiento" />
            <s:submit value="Enviar" />
        </s:form>
        <%--
        Ya que nuestro formulario está listo, crearemos el Action que se encargará 
        de procesar los datos del mismo.
        Creamos un nuevo paquete, llamado "actions", a la misma altura que el 
        paquete "modelo". Dentro de este paquete creamos una nueva clase Java llamada 
        "UsuarioAction". Haremos que esta clase extienda de "ActionSupport".
        --%>
    </body>
</html>
