
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

    int iHora;
    private String[] sArrayMateSele;
    private Connection conexion;

    public int getiHora() {
        return iHora;
    }

    public void setiHora(int iHora) {
        this.iHora = iHora;
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

            System.out.println("Lista: ");
            for (int i = 0; i < sArrayMateSele.length; i++) {
                //System.out.println(sArrayMateSele[i]);
                rs = stmt.executeQuery("select *\n"
                        + "  from clases C, docentes P \n"
                        + " where C.id_docente = P.iddocentes \n"
                        + " and materia = '" + sArrayMateSele[i] + "' and\n"
                        + " Lunes >= " + iHora + " order by Lunes");
                
                while (rs.next()) {
                    String lastName = rs.getString("Materia");
                    String sHora = rs.getString("lunes");
                    String sMaestro = rs.getString("nombre");
                    System.out.print(lastName + " - ");
                    System.out.println(sHora);
                    resultado = resultado + lastName + " - " + sHora + " Hrs - " + sMaestro + "\n";
                }
            }

            conn.close();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return resultado;
    }

}
