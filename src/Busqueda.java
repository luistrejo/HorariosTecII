
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Luis Trejo
 */
public class Busqueda {

    static int iHoraInicio, iHoraFinal;
    private String[] sArrayMateSele;
    private Connection conexion;

    public int getiHoraFinal() {
        return iHoraFinal;
    }

    public void setiHoraFinal(int iHoraFinal) {
        this.iHoraFinal = iHoraFinal;
    }

    public int getiHoraInicio() {
        return iHoraInicio;
    }

    public void setiHoraInicio(int iHoraInicio) {
        this.iHoraInicio = iHoraInicio;
    }

    public String[] getsArrayMateSele() {
        return sArrayMateSele;
    }

    public void setsArrayMateSele(String[] sArrayMateSele) {
        this.sArrayMateSele = sArrayMateSele;
    }

    public Connection getConexion() {
        return conexion;
    }

    public void setConexion(Connection conexion) {
        this.conexion = conexion;
    }

    public String conectar() {
        String resultado = "";
        try {
            String url = ("jdbc:mysql://localhost/horarios_isc_enero");
            Connection conn = DriverManager.getConnection(url, "root", "pass");
            Statement stmt = conn.createStatement();
            ResultSet rs;
            boolean bResultados = false;


            System.out.println("Lista: ");
            for (int i = 0; i < sArrayMateSele.length; i++) {
                //System.out.println(sArrayMateSele[i]);
                rs = stmt.executeQuery("select *\n"
                        + "  from clases C, docentes P \n"
                        + " where C.id_docente = P.iddocentes \n"
                        + " and materia = '" + sArrayMateSele[i] + "' and\n"
                        + " Lunes >= " + iHoraInicio + " and Lunes <= " + iHoraFinal + " order by Lunes");

                while (rs.next()) {
                    bResultados = true;
                    String sMateria = rs.getString("Materia");
                    String sHora = rs.getString("lunes");
                    String sMaestro = rs.getString("nombre");
                    System.out.print(sMateria + " - ");
                    System.out.println(sHora);
                    resultado = resultado + sMateria + " - " + sHora + " Hrs - " + sMaestro + "\n";
                }
                if (bResultados == false) {
                    resultado = "No se encontraron resultados, intente con una configuración distinta";
                }
            }

            conn.close();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return resultado;
    }

}
