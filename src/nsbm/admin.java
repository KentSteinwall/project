/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nsbm;

import javax.swing.JOptionPane;

/**
 *
 * @author Dell
 */
public class admin extends javax.swing.JFrame {
public admin_student admin_student;
public admin_lecturer admin_lecturer;
public payment payment;
public admin_instructor admin_instructor;
public subject subject;
public admin_admin admin_admin;
public assignment_marks assignment_marks;
public marks marks;
String a;
    /**
     * Creates new form admin
     */
    public admin() {
        initComponents();
        
    }
    public admin(String para) {
        initComponents();
       //issuperadmin();
        a=para;
       if(a.equals("admin"))
       {
         view.setVisible(false);
       //issuperadmin();
       }
    }
   /* public void issuperadmin()
    {   if(a.equals("admin"))
    {   view.setVisible(false);
    }
    }
    */
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        sea1 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        sea2 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        time_table = new javax.swing.JButton();
        view = new javax.swing.JPanel();
        sea3 = new javax.swing.JButton();

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel2.setBackground(new java.awt.Color(153, 153, 255));
        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "ADMINISTRATION", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Sitka Display", 1, 36))); // NOI18N
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        sea1.setBackground(new java.awt.Color(255, 255, 255));
        sea1.setFont(new java.awt.Font("Sitka Display", 1, 18)); // NOI18N
        sea1.setText("view student details");
        sea1.setBorder(null);
        sea1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                sea1ActionPerformed(evt);
            }
        });
        jPanel2.add(sea1, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 100, 280, 80));

        jButton3.setBackground(new java.awt.Color(255, 255, 255));
        jButton3.setFont(new java.awt.Font("Sitka Display", 1, 18)); // NOI18N
        jButton3.setText("enter student subjects");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });
        jPanel2.add(jButton3, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 200, 280, 70));

        sea2.setBackground(new java.awt.Color(255, 255, 255));
        sea2.setFont(new java.awt.Font("Sitka Display", 1, 18)); // NOI18N
        sea2.setText("lectureres details");
        sea2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                sea2ActionPerformed(evt);
            }
        });
        jPanel2.add(sea2, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 290, 280, 70));

        jButton2.setBackground(new java.awt.Color(255, 255, 255));
        jButton2.setFont(new java.awt.Font("Sitka Display", 1, 18)); // NOI18N
        jButton2.setText("instructor details");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jPanel2.add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 100, 280, 80));

        jButton1.setBackground(new java.awt.Color(255, 255, 255));
        jButton1.setFont(new java.awt.Font("Sitka Display", 1, 18)); // NOI18N
        jButton1.setText("enter student payment details");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel2.add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 200, 280, 70));

        jButton4.setBackground(new java.awt.Color(255, 255, 255));
        jButton4.setFont(new java.awt.Font("Sitka Display", 1, 18)); // NOI18N
        jButton4.setText("enter assignment marks");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });
        jPanel2.add(jButton4, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 290, 280, 70));

        jButton5.setBackground(new java.awt.Color(255, 255, 255));
        jButton5.setFont(new java.awt.Font("Sitka Display", 1, 18)); // NOI18N
        jButton5.setText("enter subject marks");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });
        jPanel2.add(jButton5, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 370, 280, 70));

        time_table.setBackground(new java.awt.Color(255, 255, 255));
        time_table.setFont(new java.awt.Font("Sitka Display", 1, 18)); // NOI18N
        time_table.setText("lecturer & instructor time table ");
        time_table.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                time_tableActionPerformed(evt);
            }
        });
        jPanel2.add(time_table, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 370, 280, 70));

        view.setBackground(new java.awt.Color(153, 153, 255));

        sea3.setBackground(new java.awt.Color(255, 255, 255));
        sea3.setFont(new java.awt.Font("Sitka Display", 1, 18)); // NOI18N
        sea3.setText("admin details");
        sea3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                sea3ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout viewLayout = new javax.swing.GroupLayout(view);
        view.setLayout(viewLayout);
        viewLayout.setHorizontalGroup(
            viewLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, viewLayout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(sea3, javax.swing.GroupLayout.PREFERRED_SIZE, 280, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        viewLayout.setVerticalGroup(
            viewLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, viewLayout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(sea3, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        jPanel2.add(view, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 450, 290, 100));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, 721, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void time_tableActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_time_tableActionPerformed
        try{
            Runtime.getRuntime().exec("rundll32 url.dll, FileProtocolHandler " + "C:\\Users\\Dell\\Desktop\\TIMETABLE.pdf");

        }
        catch(Exception e)
        {     JOptionPane.showMessageDialog(null,"fail");
        }
    }//GEN-LAST:event_time_tableActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        marks =new marks();
        marks.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_jButton5ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        assignment_marks =new assignment_marks();
        assignment_marks.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_jButton4ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        payment =new payment();
        payment.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_jButton1ActionPerformed

    private void sea3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_sea3ActionPerformed
        admin_admin =new admin_admin();
        admin_admin.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_sea3ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        admin_instructor =new admin_instructor();
        admin_instructor.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_jButton2ActionPerformed

    private void sea2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_sea2ActionPerformed
        admin_lecturer =new admin_lecturer();
        admin_lecturer.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_sea2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        subject =new subject(a);
        subject.setVisible(true);
        this.dispose();// TODO add your handling code here:
    }//GEN-LAST:event_jButton3ActionPerformed

    private void sea1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_sea1ActionPerformed
        admin_student =new admin_student();
        admin_student.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_sea1ActionPerformed

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
            java.util.logging.Logger.getLogger(admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new admin().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JButton sea1;
    private javax.swing.JButton sea2;
    private javax.swing.JButton sea3;
    private javax.swing.JButton time_table;
    private javax.swing.JPanel view;
    // End of variables declaration//GEN-END:variables
}