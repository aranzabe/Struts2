<%-- 
    Document   : Resultado
    Created on : 30-nov-2015, 23:22:53
    Author     : faranzabe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>

<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <s:head theme="ajax" />
    </head>
    <body>
        
        Accediendo directamente los valores del vector: 
        <s:property value="valores" /><br/>  
        Accediendo directamente los valores del arraylist: 
        <s:property value="val_array" /><br/>  
        Accediendo directamente los valores del map: 
        <s:property value="val_map" /><br/>  
        
        <br/> 
        Accediendo con el iterator al vector:<br/> 
        <s:iterator value="valores" status="estatus">
            Nombre: <s:property value="nombre"/>,
            Edad:   <s:property value="edad"/>,
            Indice  <s:property value="#estatus.index" />,
            Cuenta  <s:property value="#estatus.count" /><br/>
        </s:iterator>  
            
        <br/> 
        Accediendo con el iterator al arraylist:<br/> 
        <s:iterator value="val_array" status="estatus">
            Nombre: <s:property value="nombre"/>,
            Edad:   <s:property value="edad"/>,
            Indice  <s:property value="#estatus.index" />,
            Cuenta  <s:property value="#estatus.count" /><br/>
        </s:iterator> 
        
         <br/> 
         Accediendo con el iterator al map:<br/> 
         
        <s:iterator value="val_map" status="estatus">
            <s:property value="key" />
            <s:iterator value="value">
            Nombre: <s:property value="nombre"/>,
            Edad:   <s:property value="edad"/>,
            Indice  <s:property value="#estatus.index" />,
            Cuenta  <s:property value="#estatus.count" /><br/>
            </s:iterator> 
        </s:iterator> 
            
             
       <br/>
       Rellenado la selección directamente (vectores):
       <s:select label="Valores del vector" list="valores" /><br/> 
       Rellenado la selección directamente (arraylist):
       <s:select label="Valores del arraylist" list="val_array" /><br/> 
       Rellenado la selección directamente (map):
       <s:select label="Valores del map" list="val_map" />
       <s:select label="Claves del map" list="keySet" /><br/>
       
       <br/>
       Usando un if en un iterator para acceder al primer elemento (array_list).
        <s:iterator value="val_array" status="estatus">
            <s:if test="#estatus.count==1">
            Nombre: <s:property value="nombre"/>,
            Edad:   <s:property value="edad"/>,
            Indice  <s:property value="#estatus.index" />,
            Cuenta  <s:property value="#estatus.count" /><br/>
            </s:if>
        </s:iterator> 
            
            <br/><br/>
            
        Hoy es <s:date name="ahora" format="d 'de' MMMM 'de' yyyy" /><br/>   
        <sx:datetimepicker name="myBirth" label="Mi cumple (dd-MM-yyyy)" displayFormat="dd-MM-yyyy" />
        
        Formulario
        <s:form action="procesar">
            <s:select label="Valores introducidos literalmente" list="{0,1,2}" type="number" name="seleccionado"/><br/> 
            <s:select label="Valores introducidos literalmente (cadenas)" list="{'Angel','Aroa','Alfredo'}" />
            <s:hidden name="secret" value="abracadabra"/>
            <s:textfield name="numero" type="number" placeholder="0"/>
            <s:password name="password" placeholder="password"/>
            <s:textfield name="email" placeholder="email" />
            <br/>
            <s:combobox list="keySet" label="Combo" name="combo"  readonly="true" /> 
            <br/>
            <s:doubleselect label="Selecciona un curso" name="cur" list="cursos" doubleList="alumnos" doubleName="alum" /> 
            
            <s:select list="{}">  
                <s:optgroup label="Registrados" list="registrados" />  
                <s:optgroup label="VIPs" list="vips" /> 
            </s:select>  
            
            <s:optiontransferselect name="listadoble1" list="registrados" leftTitle="Registrados"  
                                    doubleList="vips" rightTitle="VIPs" doubleName="listadoble2" />  
            
            <s:radio label="Selecciona uno" name="opcs" list="lenguajes" />
            <s:checkbox name="checkMe"/> Acepto las condiciones.<br/>
            <s:checkboxlist label="Selecciona" name="chlists" list="lenguajes" />
            <s:submit value="Enviar"/>
        </s:form>
            
</body>
</html>
