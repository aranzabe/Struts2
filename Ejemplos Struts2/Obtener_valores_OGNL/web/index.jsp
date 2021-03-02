<%-- 
    Document   : index
    Created on : 22-nov-2015, 18:01:51
    Author     : faranzabe
    
    
En este ejemplo:
    - Declarar y manejar objetos (forma bean) en un documento ongl.
    - Uso de librerías MAP muy útiles para rellenar automáticamente listas.
    - Manejo del if test in.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--meta http-equiv="Refresh" content="0;url=http://localhost:8080/Obtener_Valores_ONGL/constantes.action"-->
        <title>ONGL Ejemplo de acceso a constantes</title>
    </head>
    <body>
                
        <%-- 
        Para crear un objeto nuevo con OGNL podemos usar el operador "new" y el 
        "fully qualified class name". Por ejemplo, para crear un nuevo objeto de 
        la clase "Constantes" haríamos lo siguiente:
        --%>
        <s:bean name="Constantes" var="beanUsuario">
            <s:param name="atributo" value="%{'DAW2'}" />
        </s:bean>
        Atributo: <s:property value="#beanUsuario.atributo" /> <br />
        <%-- 
        Teniendo esta instancia podemos obtener los valores de los atributos del 
        objeto e invocar sus métodos, como lo haríamos en un objeto normal. Por 
        ejemplo, para obtener el valor del atributo "atributo" se puede hacer de 
        la siguiente forma:
        --%>
        
      
        <%--
        Podemos invocar los miembros estáticas exactamente de la misma forma:
        --%>
        <s:property value="new Constantes().metodoEstatico()" /><br/>
        <s:property value="new Constantes().valor" />   <br/>
        
        <%--
        El valor de la constante "valor" no se muestra, porque cuando llamamos 
        a los atributos de esta forma:
        --%>
        
        <s:property value="new Constantes().valor" /><br/>
        <%--
        OGNL busca un método llamado "getValor()" en la clase "Constantes", 
        y este método no existe.
        --%>
        
        
        <%--
        Ahora bien, una de las características de los miembros estáticos es que 
        no es necesario tener una instancia de la clase en la que existe el miembro
        para poder llamar a estos miembros, pero aquí estamos creando una nueva 
        instancia de las clases para llamarlos. También es posible hacer estas 
        llamadas sin una instancia de la clase. En este caso debemos usar una 
        notación especial de OGNL.

        En esta notación, debemos indicar el nombre completo de la clase que 
        contiene al miembro estático, precedida por una arroba ("@"). También 
        se debe indicar el miembro que se quiere llamar precedido por una arroba.

        Por ejemplo, para usar la constante "valor", la etiqueta debe estar 
        colocada de esta forma:
        --%>
        <s:property value="@Constantes@valor" /><br/>

        <%--
        Y para invocar el método estático, de esta forma:
        --%>
        <s:property value="@Constantes@metodoEstatico()" /><br/>
        
       
        
        
        <%--
        Obtenido Valores de Tipos Indexados con OGNL.
        --%>
        <%-- Para declarar un vector --%>
        <s:property value="new int[]{1, 2, 3, 4, 5}" /><br/>
        
        <%--
        Podemos colocar estos mismos elementos dentro de una etiqueta "<s:select>",
        que nos ayuda a crear listas desplegables:
        --%>
        <s:select name="valores" list="new int[]{1, 2, 3, 4, 5}" /><br/>

              
        <%--
        Si por alguna razón necesitamos alguna implementación particular de un Map, 
        podemos indicarlo de la siguiente forma:
        --%>
        
        
         <%-- 
        Ejemplos de tablas HASH - Map, en las que podemos asignar pares (código, valor):
        http://jarroba.com/map-en-java-con-ejemplos/
        --%>
        <s:property value="#@java.util.LinkedHashMap@{'uno':'1', 'dos':'2', 'tres':'3', 'cuatro':'4', 'cinco':'5'}" /><br/>           
        <s:property value="#@java.util.TreeMap@{'uno':'1', 'dos':'2', 'tres':'3', 'cuatro':'4', 'cinco':'5'}" /><br/>             
        <s:property value="#@java.util.HashMap@{'uno':'1', 'dos':'2', 'tres':'3', 'cuatro':'4', 'cinco':'5'}" /><br/>
        
        <%--
        Podemos colocar estos mismos elementos dentro de una etiqueta "<s:select>",
        que nos ayuda a crear listas desplegables:
        --%>
        <s:select name="valores" list="#@java.util.HashMap@{'uno':'1', 'dos':'2', 'tres':'3', 'cuatro':'4', 'cinco':'5'}" /><br/>

        
        <%--
        Podemos determinar si en una colección existe un elemento podemos usar 
        los operadores "in" y "not in":
        --%>
        <s:if test="'palabra' in {'palabra','numero'}">
                Pertenece<br/>
        </s:if>
        <s:else>
                No pertenece<br/>
        </s:else>

        <s:if test="'palabra' not in {'palabra','numero'}">
                No pertenece<br/>
        </s:if>
        <s:else>
                Pertenece<br/>
        </s:else>
        
        
    </body>
</html>
