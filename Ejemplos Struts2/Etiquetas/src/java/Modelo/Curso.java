/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.List;

/**
 *
 * @author faranzabe
 */
public class Curso {
    private String nombre;  
    private List<String> alumnos;  
  
    public Curso(String nombre, List<String> als) {  
        this.nombre = nombre;  
        this.alumnos = als;  
    }  

    public String getNombre() {
        return nombre;
    }

    public List<String> getAlumnos() {
        return alumnos;
    }

    @Override
    public String toString() {
        return nombre;
    }
    
    
  
}
