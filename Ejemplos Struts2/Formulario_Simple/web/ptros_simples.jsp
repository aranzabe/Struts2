<%-- 
    Document   : ptros_simples
    Created on : 23-nov-2015, 12:24:11
    Author     : faranzabe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parámetros simples</title>
    </head>
    <body>
        <%--
        En esta página solamente mostraremos los datos del usuario que acabamos 
        de crear. Recordemos que para esto debemos usar la etiqueta "<s:property>". 
        Mostramos cada uno de los datos anteriores del usuario:
        --%>
        Nombre: <strong><s:property value="usuario.nombre" /></strong> <br />
        Username: <strong><s:property value="usuario.username" /></strong> <br />
        Password: <strong><s:property value="usuario.password" /></strong> <br />
        Edad: <strong><s:property value="usuario.edad" /></strong> <br />
        Fecha de Nacimiento: <strong><s:property value="usuario.fechaNacimiento" /></strong>
        
        <%--
        En el ejemplo anterior podemos ver que aunque hemos pasado pocos datos al formulario, 
        todos los hemos establecido en el objeto "Usuario", que se creó dentro método "execute",
        y los pasamos "como van", es decir sin realizar ninguna transformación o procesamiento 
        sobre ellos. Cuando tenemos 5 o 6 atributos esto puede no ser algo muy pesado. Pero 
        ¿qué pasa si tenemos que llenar un objeto con 30 o 40 propiedades? Nuestro Action 
        sería muy grande por todos los atributos y los setters y getters de las propiedades; 
        el trabajo dentro del método "execute" también sería bastante cansado llamar a los 
        setters de nuestro modelos para pasarle los parámetros.

        Para esos casos Struts 2 proporciona una forma de simplificarnos estas situaciones 
        usando un mecanismo conocido como "Model Driven" el cual veremos a continuación.
        --%>
    </body>
</html>
