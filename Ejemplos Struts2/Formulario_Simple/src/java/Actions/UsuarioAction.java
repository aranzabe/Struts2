/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import Modelo.Usuario;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;

/**
 *
 * @author faranzabe
 */
public class UsuarioAction extends ActionSupport
{
    private String nombre;
    private String username;
    private String password;
    private int edad;
    private Date fechaNacimiento;

    
    /*
    Debemos recordar que para recibir los datos del formulario debemos colocar 
    los atributos en los que se almacenarán estos datos, y setters para que los 
    interceptores correspondientes puedan inyectar los valores dentro del Action.
    */
    public void setEdad(int edad)
    {
        this.edad = edad;
    }

    public void setFechaNacimiento(Date fechaNacimiento)
    {
        this.fechaNacimiento = fechaNacimiento;
    }

    public void setNombre(String nombre)
    {
        this.nombre = nombre;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }
    
    /*
    Cuando este Action termine su ejecución (la cual aún no hemos implementado), 
    queremos poder crear un Usuario y mostrar sus datos en otra página. Para 
    hacer eso debemos colocar un atributo que almacene una referencia al Usuario, 
    y un getter para poder obtener esta referencia.
    */
    private Usuario usuario;

    public Usuario getUsuario()
    {
        return usuario;
    }
    
    
    /*
    Ahora sí, sobre-escribimos el método "execute" para crear un nuevo objeto de 
    tipo Usuario y establecer sus datos usando los valores que recibimos del formulario.
    */
    @Override
    public String execute() throws Exception
    {
        usuario = new Usuario();
        usuario.setNombre(nombre);
        usuario.setUsername(username);
        usuario.setPassword(password);
        usuario.setEdad(edad);
        usuario.setFechaNacimiento(fechaNacimiento);

        return SUCCESS;
    }

    /*
    Y eso es todo, ya hemos creado un nuevo Usuario con los datos que recibimos 
    a través del formulario de captura.
    Para que este ejemplo funcione aún tenemos que hacer un par de cosas:
        - Definir un jsp que reciba la información.
        - Modificar el structs.xml para indicar el flujo.
    */
}
