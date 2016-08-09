
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Luis Trejo and Priscila Gomez
 * Instituto Tecnologico de Chihuahua II
 * Programacion Orientada A Objetos
 */
public class Archivo {

    String ruta = "C://Users//TUUSUARIO//Desktop//horario.txt";
    File archivo = new File(ruta);
    BufferedWriter bw;
    Busqueda busqueda = new Busqueda();

    public void escribir(String sMateSeleccionadas, String sResultado) {
        try {
            if (archivo.exists()) {
                //EXISTE
                bw = new BufferedWriter(new FileWriter(archivo));
                bw.write("Materias Seleccionadas: \r\n" 
                        + sMateSeleccionadas.replaceAll("(?!\\r)\\n", "\r\n")
                + "\r\nHora de inicio seleccionada: " + busqueda.getiHoraInicio() + " Hrs \r\n" +"Hora de salida deseada: " + busqueda.getiHoraFinal()+  " Hrs \r\n" +
                        "\r\nClases disponibles con ese criterio: \r\n" +
                        sResultado.replaceAll("(?!\\r)\\n", "\r\n"));

            } else {
              //EXISTE
                bw = new BufferedWriter(new FileWriter(archivo));
                bw.write("Materias Seleccionadas: \r\n" 
                        + sMateSeleccionadas.replaceAll("(?!\\r)\\n", "\r\n")
                + "\r\nHora de inicio seleccionada: " + busqueda.getiHoraInicio() + " Hrs \r\n" +"Hora de salida deseada: " + busqueda.getiHoraFinal() + " Hrs \r\n" +
                        "\r\nClases disponibles con ese criterio: \r\n" +
                        sResultado.replaceAll("(?!\\r)\\n", "\r\n"));
            }
            bw.close();
        } catch (IOException ex) {
            Logger.getLogger(Archivo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
