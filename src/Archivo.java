
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
 * @author Luis Trejo
 */
public class Archivo {

    String ruta = "D://horario.txt";
    File archivo = new File(ruta);
    BufferedWriter bw;

    public void escribir(String sMateSeleccionadas, String sHora, String sResultado) {
        try {
            if (archivo.exists()) {
                //EXISTE
                bw = new BufferedWriter(new FileWriter(archivo));
                bw.write("Materias Seleccionadas: \r\n" 
                        + sMateSeleccionadas.replaceAll("(?!\\r)\\n", "\r\n")
                + "\r\nHora Seleccionada: " + sHora + " Hrs \r\n" +
                        "\r\nClases disponibles con ese criterio: \r\n" +
                        sResultado.replaceAll("(?!\\r)\\n", "\r\n"));

            } else {

                //NO EXISTE
                bw = new BufferedWriter(new FileWriter(archivo));
                bw.write("Materias Seleccionadas: \n"
                        + sMateSeleccionadas.replaceAll("(?!\\r)\\n", "\r\n")
                + "Hora Seleccionada: " + sHora +
                        "\n Clases disponibles con ese criterio: " +
                        sResultado.replaceAll("(?!\\r)\\n", "\r\n"));

            }
            bw.close();
        } catch (IOException ex) {
            Logger.getLogger(Archivo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
