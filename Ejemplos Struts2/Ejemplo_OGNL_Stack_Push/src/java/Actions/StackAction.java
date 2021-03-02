package Actions;




import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import javax.xml.ws.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

/**
 *
 * @author faranzabe
 * Esta clase será el Action que se encargará de poner una instancia de cada una 
 * de estas clases en el "ValueStack". 
 */
//@Namespace(value="/")
//@Action(value="stack", results={@Result(location="/stack.jsp")})
public class StackAction extends ActionSupport {
    
    
@Override
public String execute() throws Exception
{
    
    /*
    Lo siguiente que haremos es sobre-escribir el método "execute" del Action 
    para obtener una referencia al ValueStack. 
    */
    ValueStack stack = ActionContext.getContext().getValueStack();

    
    /*
    Una vez que tenemos esta referencia solo nos resta crear una instancia de 
    cada una de nuestras clases, establecer los valores de sus parámetros, y 
    agregarlos al ValueStack usando su método "push":
    */
    
    Modelo.Animal animal = new Modelo.Animal();
    animal.setNombre("Rantamplán");
    animal.setRaza("Perro labrador");

    Modelo.Persona persona = new Modelo.Persona();
    persona.setNombre("Alumno de DAW2");
    persona.setSalario("poco");

    /*
    Agregamos primero la referencia de la Persona y luego la del Animal porque, 
    como en toda buena pila, el último elemento que se agregue al ValueStack 
    será el que quede en su cima.
    */
    stack.push(persona);
    stack.push(animal);
    
    
    return SUCCESS;
}

}
