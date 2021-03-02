<%-- 
    Document   : index
    Created on : 23-nov-2015, 16:46:07
    Author     : fernando

    Model Driven es una forma que Struts 2 proporciona para poder establecer todos 
    los parámetros que se reciben de un formulario directamente dentro de un objeto. 
    Este objeto es conocido como el modelo.
    Usando este modelo nos evitamos estar llamando nosotros mismos a los setters 
    de este objeto modelo.
    Esto también permite que si realizamos validaciones de datos del formulario 
    (lo cual veremos cómo hacer un poco más adelante) estas se realizarán sobre 
    este objeto modelo.
    Un interceptor especial, llamado model driven interceptor, se encarga de manejar 
    todo esto de forma automática.

--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Model Driven</title>
    </head>
    <body>
       <s:form action="datosUsuario">
            <s:textfield name="nombre" label="Nombre" />
            <s:textfield name="username" label="Username" />
            <s:password name="password" label="Password" />
            <s:textfield name="edad" label="Edad" />
            <s:textfield name="fechaNacimiento" label="Fecha de Nacimiento" />
            
            <%--
            Pero ¿qué ocurre si queremos recibir un parámetro que no sea un atributo
            del "usuario"? En ese caso, solo tenemos que agregar un nuevo atributo, 
            con su correspondiente setter para establecer su valor (y su getter 
            si es que pensamos recuperarlo posteriormente) dentro de nuestro Action. 
            --%>
            <s:textfield name="numero" label="Número de Confirmación" />
            
            
            <s:submit value="Enviar" />
       </s:form>
    </body>
</html>
