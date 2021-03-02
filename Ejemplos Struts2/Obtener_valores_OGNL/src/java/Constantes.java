
/**
 *
 * @author faranzabe
 */
public class Constantes {
    private String atributo;
    public final static String valor = "variable estatica";

    
    public String metodoDeInstancia()
    {
        return "metodo de instancia";
    }
    
    public String metodoDeInstancia(String mensaje)
    {
        return mensaje;
    }
    
    public static String metodoEstatico()
    {
        return "metodo estatico";
    }
    
    public static String metodoEstatico(String mensaje)
    {
        return mensaje;
    }

    public void setAtributo(String atributo) {
        this.atributo = atributo;
    }
    
    
    public String getAtributo()
    {
        return atributo;
    }
    
//    @Override
//    public String execute(){
//        return SUCCESS;
//    }
}
