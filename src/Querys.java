
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Luis Trejo
 */
public class Querys {
Object[] cargaSemestral;
    
    public Object[] CargaSemestral() {
        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/horarios_isc_enero", "root", "minombreesluis");
            int contador = 0;
            for (int i = 1; i < 9; i++) {
                PreparedStatement updateemp = con.prepareStatement("SELECT * FROM carga_semestral WHERE Clave LIKE ?");
                updateemp.setString(1, i + "P%");
                ResultSet rs = updateemp.executeQuery();
                cargaSemestral = new Object[9];
                int num = 0;
                while (rs.next()) {
                    System.out.println(rs.getString("Clave") + " - " + rs.getString("materia"));
                    cargaSemestral[num] = rs.getString("materia");
                    num++;

                }

                //contador = contador + 1;       
                System.out.println("--------------------");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return cargaSemestral;
    }
    
  
}
