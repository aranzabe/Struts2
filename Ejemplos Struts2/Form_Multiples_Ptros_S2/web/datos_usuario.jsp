<%-- 
    Document   : datos_usuario
    Created on : 23-nov-2015, 17:36:36
    Author     : fernando
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
        <!--
        Primero mostraremos el valor del nombre del usuario, de la misma manera 
        en la que hemos venido haciéndolo.
        -->
        <s:property value="nombre" />
        
        <!--
        Ahora mostraremos los valores de nuestro vector de cadenas, para eso 
        Struts 2 proporciona una etiqueta especial que nos permite iterar a través 
        de todos los valores de un arreglo o colección, la etiqueta "iterator".

        La etiqueta "iterator" recibirá el vector o colección a través del cual 
        ciclaremos para obtener sus valores. Indicamos este arreglo o colección 
        usando el atributo "value". En este caso indicaremos que el valor a través 
        del cual queremos iterar es el vector llamado "correos".
        -->
        <%--<s:iterator value="correos" var="correo" status="estatus">
            <%--
            Ya podemos ciclar a través de todos los elementos del vector, ahora 
            necesitamos una manera de obtener el elemento actual dentro del ciclo. 
            Para esto usamos el atributo "var", en este indicaremos el nombre de 
            la variable que mantendrá el valor del elemento actual. No debemos de 
            preocuparnos por crear esta variable, ya que Struts 2 la creara
            automáticamente y la pondrá a nuestra disposición. Esta variable será 
            del tipo de elementos que sea mantenido por nuestro vector o colección.
            
        </s:iterator>
        --%>
        
        <%--
        Algunas veces querremos poder obtener alguna información relativa a la 
        iteración, como el índice del elemento actual, el número total de elementos 
        que tiene el vector o colección, si el elemento actual es par o impar, etc.
        Es decir, metadatos del vector.
        Para obtener esta información podemos indicarle a la etiqueta "iterator" 
        que la coloque, como una instancia de la clase "IteratorStatus" y que la 
        ponga a nuestra disposición en una variable. Para esto, indicamos el nombre 
        de la variable en el atributo "status".
        El estatus es una variable que no será colocada dentro en la raíz del stack de Struts 2.
        --%>
        
        
        <%--
        Ahora que podemos iterar a través de cada uno de los elementos de nuestro 
        vector, solo hace falta mostrar el valor de cada uno de estos elementos, 
        adicionalmente también mostraremos su índice. Colocaremos estos valores 
        en una lista para que se vea más presentable.
        --%>
        <ul>
            <s:iterator value="correos" var="correo" status="estatus">
                <li><s:property value="#estatus.index" /> - <s:property value="correo" /></li>
            </s:iterator>
        </ul>
    </body>
</html>
