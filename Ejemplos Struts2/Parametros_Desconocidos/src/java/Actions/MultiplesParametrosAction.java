/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;

/**
 *
 * @author faranzabe
 * 
 * Para lograr que Struts 2 nos proporcione estos parámetros, nuestro Action debe 
    implementar la interface "ParameterAware". Esta interface se ve de la siguiente 
    forma:
 */
public class MultiplesParametrosAction extends ActionSupport {
    private String[] parametros;

    public String[] getParametros() {
        return parametros;
    }

    public void setParametros(String[] parametros) {
        this.parametros = parametros;
    }
    
    
    
    @Override
    public String execute() throws Exception
    {   
        return SUCCESS;
    }
}
