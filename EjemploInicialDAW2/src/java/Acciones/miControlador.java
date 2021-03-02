/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Acciones;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author fernando
 */
public class miControlador extends ActionSupport {

    private String nombre;
    private int numero;
    private String mensaje;
    private String v[];

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getMensaje() {
        return mensaje;
    }

    public String[] getV() {
        return v;
    }
    
    

    @Override
    public String execute() throws Exception {
        String dev = SUCCESS;
        v = new String[2];
        v[0] = "uno";
        v[1] = "dos";

//        if (this.nombre.equals("correcto")) {
//            dev = "success";
//        } else {
//            dev = "error";
//        }

        this.mensaje = "Hola " + this.nombre + " y " + this.numero;

        return dev; //To change body of generated methods, choose Tools | Templates.
    }

}
