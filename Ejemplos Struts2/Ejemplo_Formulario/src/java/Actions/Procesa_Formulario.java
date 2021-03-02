package Actions;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author faranzabe
 */

/*    
Esta clase será el Action que se encargará de procesar los datos del formulario.    
*/
public class Procesa_Formulario extends ActionSupport {
    
    
    /*
    agregamos dos atributos, un String llamado "nombre" que contendrá el nombre
    del usuario, y un int llamado "numero" que contendrá el número.
    */
    private String nombre;
    private int numero;
    
    /*Agregamos un String, llamado "mensaje", que contendrá el mensaje que se 
    regresará al usuario. Colocamos también un getter para esta propiedad*/
    private String mensaje;

    
    public String getMensaje()
    {
        return mensaje;
    }
        
    public void setNombre(String nombre)
    {
        this.nombre = nombre;
    }

    public void setNumero(int numero)
    {
        this.numero = numero;
    }
    
    /*
    Lo siguiente que haremos es sobre-escribir el método "execute" estableciendo 
    el mensaje del usuario.
    */
    
    @Override
    public String execute() throws Exception
    {
        String salida=SUCCESS;
        
        mensaje = "Bienvenido " + nombre + " al mundo de Struts 2. Tu número es " + numero;
        
        if (numero==10) salida=ERROR;
        
        return salida;//-->struts.xml para que decida a qué JSP hay que llamar.
    }
    
    /*
    ¿Por qué hemos colocado setters de unas propiedades y getters de otras? Bien, 
    esto es porque algunas de las propiedades del action ("nombre" y "mensaje") 
    serán establecidas por los interceptores. Estos valores son recibidos a través 
    del formulario que creamos anteriormente. En el caso del atributo "mensaje" 
    este será leído por el framework para presentar los datos en una página JSP.

    En otras palabras, debemos proporcionar setters para las propiedades que serán 
    establecidas por el framework, y getters para las propiedades que serán leídas.
    */
}
