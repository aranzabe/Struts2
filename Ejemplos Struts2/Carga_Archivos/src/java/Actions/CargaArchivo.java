/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Actions;

import com.opensymphony.xwork2.ActionSupport;
import java.io.File;

/**
 *
 * @author faranzabe
 */
public class CargaArchivo extends ActionSupport {
    /*
    Ahora viene la parte importante, para poder obtener una referencia al archivo, 
    debemos colocar, en nuestro Action, una propiedad de tipo "File":
    */
    private String autor;
    private File archivo;

    public void setArchivo(File archivo)
    {
        this.archivo = archivo;
    }

    public void setAutor(String autor)
    {
        this.autor = autor;
    }
    
//    @Override
//    public String execute() throws Exception
//    {
//        File nuevoArchivo = new File("/", archivo.getName());
//        archivo.renameTo(nuevoArchivo);
//
//        return SUCCESS;
//    }
    
    public String getNombre()
    {
        return archivo.getName();
    }

    public String getRuta()
    {
        return archivo.getAbsolutePath();
    }
    
    
    /*
    Para obtener el nombre original del archivo debemos proporcionar un atributo, 
    de tipo String, cuyo identificador sea "<nombre_del_campo_del_archivo>FileName"; 
    o sea que si el identificador del campo del archivo es "documento", el identificador 
    del campo para el nombre del archivo debe ser "documentoFileName", si el 
    identificador del campo es "miArchivo", el campo para el nombre debe ser 
    "miArchivoFileName".

Para obtener el tipo de contenido del archivo, o sea el "content type", debemos 
    hacer algo similar y proporcionar un campo cuyo nombre sea "<nombre_del_campo_del_archivo>ContentType". 
    Los campos para estos dos datos, junto con sus setters, queda de la siguiente forma:
    */
    
    private String archivoFileName;
    private String archivoContentType;

    public void setArchivoContentType(String archivoContentType)
    {
        this.archivoContentType = archivoContentType;
    }

    public void setArchivoFileName(String archivoFileName)
    {
        this.archivoFileName = archivoFileName;
    }

    @Override
    public String execute() throws Exception
    {
        File nuevoArchivo = new File("/", archivoFileName);
        archivo.renameTo(nuevoArchivo);

        return SUCCESS;
    }
    /*
    Ahora el nombre con el que guardaremos el archivo que recibimos, es el mismo 
    nombre del archivo original.

    Agregaremos también un getter para cada una de las propiedades que no hemos 
    utilizado aún, o sea para "autor" y "archivoContentType" para poder leerlos 
    desde la JSP  del resultado:

    */
    public String getArchivoContentType()
    {
        return archivoContentType;
    }

    public String getAutor()
    {
        return autor;
    }
}
