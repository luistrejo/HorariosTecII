
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ButtonGroup;
import javax.swing.JOptionPane;
import javax.swing.JRadioButton;
import javax.swing.JTable;
import javax.swing.SpinnerNumberModel;
import javax.swing.plaf.basic.BasicBorders;
import javax.swing.table.DefaultTableModel;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Luis Trejo
 */
public class SeleccionMaterias extends javax.swing.JFrame {

    private DefaultTableModel modelo;
    private String[] sArrayListaMateSele;
    private int contadorMaterias = 0;
    private int iLimiteMaterias;
    
    /**
     * Creates new form SeleccionMaterias
     */
    public SeleccionMaterias() {

        initComponents();
        sArrayListaMateSele = new String[7];
        modelo = new DefaultTableModel();
        tablaSemestres.setModel(modelo);
        iLimiteMaterias = 6;

        modelo.addColumn("SEMESTRE 1");
        modelo.addColumn("SEMESTRE 2");
        modelo.addColumn("SEMESTRE 3");
        modelo.addColumn("SEMESTRE 4");
        modelo.addColumn("SEMESTRE 5");
        modelo.addColumn("SEMESTRE 6");
        modelo.addColumn("SEMESTRE 7");
        modelo.addColumn("SEMESTRE 8");
        modelo.addColumn("SEMESTRE 9");

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/horarios_isc_enero", "root", "pass");
            for (int i = 1; i < 9; i++) {
                PreparedStatement updateemp = con.prepareStatement("SELECT * FROM carga_semestral WHERE Clave LIKE ?");
                updateemp.setString(1, i + "P%");
                ResultSet rs = updateemp.executeQuery();
                Object[] object = new Object[9];
                int num = 0;
                while (rs.next()) {
                    System.out.println(rs.getString("Clave") + " - " + rs.getString("materia"));
                    object[num] = rs.getString("materia");
                    num++;
                }
                modelo.addRow(object);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        SpinnerNumberModel nm = new SpinnerNumberModel();
        nm.setValue(7);
        nm.setMaximum(20);
        nm.setMinimum(7);
        spiHoras.setModel(nm);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jSpinner1 = new javax.swing.JSpinner();
        radioGroupHoras = new javax.swing.ButtonGroup();
        jScrollPane1 = new javax.swing.JScrollPane();
        tablaSemestres = new javax.swing.JTable();
        bntContinuar = new javax.swing.JButton();
        radio = new javax.swing.JPanel();
        radio6Horas = new javax.swing.JRadioButton();
        spiHoras = new javax.swing.JSpinner();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        radio7Horas = new javax.swing.JRadioButton();
        jPanel1 = new javax.swing.JPanel();
        jScrollPane3 = new javax.swing.JScrollPane();
        txtAMateSeleccionadas = new javax.swing.JTextArea();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane4 = new javax.swing.JScrollPane();
        txtAResul = new javax.swing.JTextArea();
        btnLimpiar = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Horarios Tec ll");
        setResizable(false);

        tablaSemestres.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        tablaSemestres.setAutoResizeMode(javax.swing.JTable.AUTO_RESIZE_ALL_COLUMNS);
        tablaSemestres.setDragEnabled(true);
        tablaSemestres.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tablaSemestresMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tablaSemestres);

        bntContinuar.setText("Generar");
        bntContinuar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bntContinuarActionPerformed(evt);
            }
        });

        radio.setBorder(javax.swing.BorderFactory.createTitledBorder("Preferencias"));

        radioGroupHoras.add(radio6Horas);
        radio6Horas.setSelected(true);
        radio6Horas.setText("6 Materias");
        radio6Horas.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                radio6HorasActionPerformed(evt);
            }
        });

        jLabel2.setText("Hora de inicio:");

        jLabel3.setText("Hrs");

        radioGroupHoras.add(radio7Horas);
        radio7Horas.setText("7 Materias");
        radio7Horas.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                radio7HorasActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout radioLayout = new javax.swing.GroupLayout(radio);
        radio.setLayout(radioLayout);
        radioLayout.setHorizontalGroup(
            radioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(radioLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(radio6Horas)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(radio7Horas)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(spiHoras, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel3)
                .addContainerGap())
        );
        radioLayout.setVerticalGroup(
            radioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(radioLayout.createSequentialGroup()
                .addGroup(radioLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(radio6Horas)
                    .addComponent(spiHoras, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2)
                    .addComponent(jLabel3)
                    .addComponent(radio7Horas))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder("Materias Seleccionadas"));
        jPanel1.setPreferredSize(new java.awt.Dimension(400, 200));

        txtAMateSeleccionadas.setColumns(20);
        txtAMateSeleccionadas.setRows(5);
        jScrollPane3.setViewportView(txtAMateSeleccionadas);

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane3, javax.swing.GroupLayout.DEFAULT_SIZE, 378, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane3, javax.swing.GroupLayout.DEFAULT_SIZE, 165, Short.MAX_VALUE)
                .addContainerGap())
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder("Clases Disponibles"));
        jPanel2.setPreferredSize(new java.awt.Dimension(400, 200));

        txtAResul.setColumns(20);
        txtAResul.setRows(5);
        jScrollPane4.setViewportView(txtAResul);

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane4, javax.swing.GroupLayout.DEFAULT_SIZE, 378, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane4, javax.swing.GroupLayout.DEFAULT_SIZE, 165, Short.MAX_VALUE)
                .addContainerGap())
        );

        btnLimpiar.setText("Limpiar");
        btnLimpiar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLimpiarActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(btnLimpiar)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(bntContinuar))
                    .addComponent(jScrollPane1)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(radio, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(17, 17, 17)
                .addComponent(radio, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 159, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(19, 19, 19)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 13, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnLimpiar)
                    .addComponent(bntContinuar))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void tablaSemestresMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tablaSemestresMouseClicked
        // TODO add your handling code here:
        int fila = tablaSemestres.rowAtPoint(evt.getPoint());
        int columna = tablaSemestres.columnAtPoint(evt.getPoint());
        if ((fila > -1) && (columna > -1)) {
            //System.out.println(modelo.getValueAt(fila, columna));
            if (contadorMaterias+1 <= iLimiteMaterias) {
                sArrayListaMateSele[contadorMaterias] = modelo.getValueAt(fila, columna).toString();
                txtAMateSeleccionadas.append(sArrayListaMateSele[contadorMaterias] + '\n');
                contadorMaterias++;

            } else {
                JOptionPane.showMessageDialog(rootPane, "Limite maximo de materias a seleccionar: " + iLimiteMaterias, "Aviso", JOptionPane.WARNING_MESSAGE);
            }
            //for (int i = 0; i < sArrayListaMateSele.length; i++) {
            //    System.out.println(sArrayListaMateSele[i]);
            //}
            System.out.println(contadorMaterias);
        }

    }//GEN-LAST:event_tablaSemestresMouseClicked

    private void bntContinuarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bntContinuarActionPerformed
        // TODO add your handling code here:
        Busqueda busqueda = new Busqueda();
        busqueda.setsArrayMateSele(sArrayListaMateSele);
        busqueda.setiHora(Integer.parseInt(spiHoras.getValue().toString()));
        txtAResul.append(busqueda.conectar());
    }//GEN-LAST:event_bntContinuarActionPerformed

    private void btnLimpiarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLimpiarActionPerformed
        // TODO add your handling code here:
        for (int i = 0; i < iLimiteMaterias; i++) {
            sArrayListaMateSele[i] = null;
        }txtAMateSeleccionadas.setText("");
            txtAResul.setText("");
            contadorMaterias = 0;
        
    }//GEN-LAST:event_btnLimpiarActionPerformed

    private void radio6HorasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_radio6HorasActionPerformed
        // TODO add your handling code here:
        iLimiteMaterias = 6;
    }//GEN-LAST:event_radio6HorasActionPerformed

    private void radio7HorasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_radio7HorasActionPerformed
        // TODO add your handling code here:
        iLimiteMaterias = 7;
    }//GEN-LAST:event_radio7HorasActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(SeleccionMaterias.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(SeleccionMaterias.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(SeleccionMaterias.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(SeleccionMaterias.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new SeleccionMaterias().setVisible(true);
            }
        });

    }


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton bntContinuar;
    private javax.swing.JButton btnLimpiar;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JSpinner jSpinner1;
    private javax.swing.JPanel radio;
    private javax.swing.JRadioButton radio6Horas;
    private javax.swing.JRadioButton radio7Horas;
    private javax.swing.ButtonGroup radioGroupHoras;
    private javax.swing.JSpinner spiHoras;
    private javax.swing.JTable tablaSemestres;
    private javax.swing.JTextArea txtAMateSeleccionadas;
    private javax.swing.JTextArea txtAResul;
    // End of variables declaration//GEN-END:variables
}
