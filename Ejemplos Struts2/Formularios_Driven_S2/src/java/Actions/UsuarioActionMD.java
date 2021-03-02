/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import Modelo.Usuario;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 *
 * @author fernando
 */
/*
Para indicarle a Struts 2 que este Action será Model Driven, la clase "UsuarioActionMD" 
debe implementar la interface "ModelDriven", indicando de qué tipo de objeto será usado 
como modelo.
*/
public class UsuarioActionMD  extends ActionSupport implements ModelDriven<Usuario> {
    /*
    Ahora pondremos un objeto Usuario dentro de nuestra clase, con una variable de 
    instancia, que será el objeto que usaremos como modelo.
    */
    private Usuario usuario = new Usuario(); 
    
    
    /*
    La interface "ModelDriven" tiene tan solo un método: "getModel". Esté método 
    no recibe ningún parámetro, y devuelve el objeto que estamos usando como modelo.
    */
    @Override
    public Usuario getModel() {
        return usuario;
    }
    
    
    /*
    Lo único que queda es realizar algún proceso en el método "execute", que podría 
    ser almacenar al Usuario en alguna base de datos, enviarlo por algún stream, etc. 
    Como en este caso no haremos nada con el Usuario más que regresarlo para poder 
    mostrar sus datos en una página, nuestro método "execute" solo regresará un 
    valor de "SUCCESS". 
    */
    
    @Override
    public String execute() throws Exception
    {
        
        return SUCCESS;
    }
    
    
    
    /*
    Si además del objeto queremos un atributo más: También cambiaremos nuestro Action. 
    Colocamos un atributo de tipo entero para contener este número, junto con sus 
    correspondientes setter (para establecer el valor desde el formulario) y getter 
    (para obtener el valor desde la JSP):
    */

    private int numero;

    public void setNumero(int numero)
    {
        this.numero = numero;
    }

    public int getNumero()
    {
        return numero;
    }
}
