package Actions;

import com.opensymphony.xwork2.ActionSupport;

/*
Veamos el Action que recibirá estos valores. Primero crearemos una nueva clase java, 
llamada "MultiplesDatosAction", en el paquete "Actions". Esta clase extenderá de ActionSupport.
*/

public class MultiplesDatosAction extends ActionSupport
{
    /*
    Ahora colocaremos el atributo que nos permitirá recibir los múltiples parámetros. 
    Para esto debemos colocar un arreglo del tipo de datos que estemos esperando. 
    En este caso será un vector de Strings.
    */
    private String[] correos;
    private String nombre;

    
    /*
    Como en esta ocasión no se realizará ningún proceso sobre los datos, por lo 
    que nuestro método "execute" solo regresará un valor de "SUCCESS".
    */
    @Override
    public String execute() throws Exception
    {
        return SUCCESS;
    }

    
    /*
    Según la explicación anterior, debemos colocar el setter del atributo llamado 
    "correos" para poder establecer el arreglo de correos, y su getter para poder 
    obtenerlo posteriormente.
    */
    public String[] getCorreos()
    {
        return correos;
    }

    public void setCorreos(String[] correos)
    {
        this.correos = correos;
    }
    
    /*
    Ahora que tenemos el vector de valores colocaremos un atributo para mantener 
    el nombre del usuario, con su correspondiente getter y setter:
    */
    public String getNombre()
    {
        return nombre;
    }

    public void setNombre(String nombre)
    {
        this.nombre = nombre;
    }

    
}
