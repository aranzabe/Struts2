package Actions;


import Modelo.Curso;
import Modelo.Persona;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author faranzabe
 */
public class accion extends ActionSupport {
    private Persona valores[];
    private ArrayList val_array;
    private Map<String, Persona> val_map;
    
    private Set<String> keySet;
    
    private Date ahora; 
    private List<Curso> cursos;
    
    
    private HashMap<String, String> registrados;  
    private HashMap<String, String> vips; 
    
    private List<String> lenguajes;
    
    
    //Gets necesarios para acceder a los atributos del stackvalue desde Resultado.jsp
    public Persona[] getValores() {
        return valores;
    }

    public ArrayList getVal_array() {
        return val_array;
    }

    public Map<String, Persona> getVal_map() {
        return val_map;
    }

    public Set<String> getKeySet() {
        return keySet;
    }

    public Date getAhora() {
        return ahora;
    }

    public List<Curso> getCursos() {
        return cursos;
    }

    public HashMap<String, String> getRegistrados() {
        return registrados;
    }

    public HashMap<String, String> getVips() {
        return vips;
    }

    public List<String> getLenguajes() {
        return lenguajes;
    }

   
    
    //Execute
    public String execute(){
        valores = new Persona[3];
        valores[0] = new Persona("Ana",40);
        valores[1] = new Persona("Pedro",36);
        valores[2] = new Persona("Juan",54);
        
        val_array = new ArrayList();
        val_array.add(valores[0]);
        val_array.add(valores[1]);
        val_array.add(valores[2]);
        
        val_map = new TreeMap<String, Persona>();
        val_map.put("1A", valores[0]);
        val_map.put("2B", valores[1]);
        val_map.put("3C", valores[2]);
        keySet = val_map.keySet();
        
        
        ahora = new Date();
        
        
        cursos = new ArrayList<Curso>(); 
        List<String> alumnos_daw2 = new ArrayList<String>();
        alumnos_daw2.add("Jose");
        alumnos_daw2.add("Aroa");
        alumnos_daw2.add("Angel");
        alumnos_daw2.add("Ernesto");
        Curso un_curso = new Curso("DAW2", alumnos_daw2);
        cursos.add(un_curso);
        
        List<String> alumnos_dam2 = new ArrayList<String>();
        alumnos_dam2.add("Elvira");
        alumnos_dam2.add("SANTIAGO");
        alumnos_dam2.add("Jaime");
        alumnos_dam2.add("Pablo");
        Curso otro_curso = new Curso("DAM2", alumnos_dam2);
        cursos.add(otro_curso);
        
        
        
        registrados = new HashMap<String, String>();  
        registrados.put("1A", "Jose Gomez");  
        registrados.put("2B", "Jose Moreno");  
        registrados.put("20B", "Alfredo");
  
        vips = new HashMap<String, String>();  
        vips.put("3C", "Cristina");  
        vips.put("4D", "Aroa"); 
        vips.put("5E", "Ernesto");
        vips.put("50E", "Angel");
        
        
        lenguajes = new ArrayList<String>();  
        lenguajes.add("Python");  
        lenguajes.add("Java");  
        lenguajes.add("Ruby");  
        lenguajes.add("C#");  
        lenguajes.add("C++");  
        lenguajes.add("Lisp"); 
        
        
        return SUCCESS;
    }
}
