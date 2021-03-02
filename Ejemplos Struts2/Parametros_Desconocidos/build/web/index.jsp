<%-- 
    Document   : index
    Created on : 07-dic-2015, 22:59:22
    Author     : faranzabe

    Algunas veces estamos esperando recibir, dentro de nuestro Action, un conjunto 
    de parámetros de los cuales no conocemos ni su cantidad ni sus nombres, como 
    por ejemplo cuando estamos haciendo un filtrado de datos y no sabes qué 
    filtros recibiremos y cuáles serán los valores de estos filtros, o cuando la 
    generación de componentes se realiza de forma dinámica.

    Para estos casos Struts 2 proporciona una manera de indicar que deberá 
    entregarnos todos los parámetros en un objeto tipo "java.util.Map". Las 
    llaves de este mapa representarán los nombres de los parámetros, y sus valores 
    representarán un arreglo de Strings con los valores correspondientes de cada 
    parámetro. ¿Por qué un arreglo de Strings? Porque como acabamos de ver, algunos 
    de los parámetros que recibimos pueden tener más de un valor.

    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="jquery-2.1.4.js"></script>
        <script type="text/javascript">
            $(document).ready(function () 
            {
                $("#btnAgregar").click(function() 
                {
                    var num = $("input[type=text]").length;
                    var numeroSiguiente = num + 1;
                    var elementoNuevo = $("#valor" + num).clone().attr('id','valor'+numeroSiguiente).attr("name", "parametros");
                    var etiquetaNueva = $("label[for=valor"+num+"]").clone().attr("for","valor"+numeroSiguiente).text("Valor " + numeroSiguiente + ": ");
                    $("#valor" + num).after(elementoNuevo);
                    elementoNuevo.before(etiquetaNueva);
                    etiquetaNueva.before("<br />");
                });
            });
        </script>
            
    </head>
    <body>
        
    <s:form action="multiparametros" theme="simple">
        <s:label for="valor1" value="Valor 1: " />
        <s:textfield id="valor1" name="parametros" /> <br /> 
        <s:submit value="Enviar" />    
    </s:form>   
        
    <button id="btnAgregar">Agregar Elemento</button>
    </body>
</html>
