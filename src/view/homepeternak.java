/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import java.awt.event.ActionListener;
import javax.swing.JButton;
/**
 *
 * @author Vian
 */
public class homepeternak extends javax.swing.JFrame {

    public homepeternak() {
        initComponents();
    }
     public void addtLoginListener(ActionListener listener) {
        login.addActionListener(listener);
    }
  public void peternak() {
        login.setVisible(false);
    }
  
 public void addMengelolaProduk(ActionListener listener){
     stok.addActionListener(listener);
 }
  public void addsppk(ActionListener listener){
     sppk.addActionListener(listener);
 }
     public void addtLogoutListener(ActionListener listener) {
        keluar.addActionListener(listener);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        login = new javax.swing.JButton();
        sppk = new javax.swing.JButton();
        stok = new javax.swing.JButton();
        keluar = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();

        login.setText("masuk");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        sppk.setIcon(new javax.swing.ImageIcon(getClass().getResource("/ui/Peternak(Uji Telur Asin).png"))); // NOI18N
        sppk.setContentAreaFilled(false);
        getContentPane().add(sppk, new org.netbeans.lib.awtextra.AbsoluteConstraints(510, 310, -1, -1));

        stok.setIcon(new javax.swing.ImageIcon(getClass().getResource("/ui/Peternak(Stok).png"))); // NOI18N
        stok.setBorderPainted(false);
        stok.setContentAreaFilled(false);
        stok.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                stokActionPerformed(evt);
            }
        });
        getContentPane().add(stok, new org.netbeans.lib.awtextra.AbsoluteConstraints(510, 520, -1, -1));

        keluar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/ui/logout.png"))); // NOI18N
        keluar.setToolTipText("");
        keluar.setContentAreaFilled(false);
        keluar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                keluarActionPerformed(evt);
            }
        });
        getContentPane().add(keluar, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, -1));

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/ui/1.png"))); // NOI18N
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, -1));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void stokActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_stokActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_stokActionPerformed

    private void keluarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_keluarActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_keluarActionPerformed

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
            java.util.logging.Logger.getLogger(homepeternak.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(homepeternak.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(homepeternak.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(homepeternak.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new homepeternak().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JButton keluar;
    private javax.swing.JButton login;
    private javax.swing.JButton sppk;
    private javax.swing.JButton stok;
    // End of variables declaration//GEN-END:variables
}