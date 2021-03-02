/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;

/**
 *
 * @author faranzabe
 */
public class procesar extends ActionSupport {
    
    private int seleccionado;
    private String mensaje;
    private String listadoble1, listadoble2;
    private boolean checkMe;
    private String[] chlists;
    private Date myBirth;

    public void setSeleccionado(int seleccionado) {
        this.seleccionado = seleccionado;
    }

    public String getMensaje() {
        return mensaje;
    }

    public String getListadoble1() {
        return listadoble1;
    }

    public void setListadoble1(String listadoble1) {
        this.listadoble1 = listadoble1;
    }

    public String getListadoble2() {
        return listadoble2;
    }

    public void setListadoble2(String listadoble2) {
        this.listadoble2 = listadoble2;
    }

    public boolean isCheckMe() {
        return checkMe;
    }

    public void setCheckMe(boolean checkMe) {
        this.checkMe = checkMe;
    }

    public String[] getChlists() {
        return chlists;
    }

    public void setChlists(String[] chlists) {
        this.chlists = chlists;
    }

    public void setMyBirth(Date myBirth) {
        this.myBirth = myBirth;
    }
    
    
    
    
    public String execute(){
        
        mensaje = "Numero seleccionado es: " + seleccionado;
        return SUCCESS;
    }
}
