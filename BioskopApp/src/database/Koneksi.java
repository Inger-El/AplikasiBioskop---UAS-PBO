/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Koneksi {
    private final String URL = "jdbc:mysql://localhost:3306/db_bioskop";
    private final String USER = "root"; // Username bawaan Laragon
    private final String PASS = "";     // Password bawaan Laragon (kosong)
    
    public Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            con = DriverManager.getConnection(URL, USER, PASS);
            System.out.println("Koneksi Berhasil!");
        } catch (ClassNotFoundException | SQLException ex) {
            System.err.println("Koneksi Gagal: " + ex.getMessage());
        }
        return con;
    }
    
    // Blok main ini hanya untuk mengetes koneksi
    public static void main(String[] args) {
        Koneksi k = new Koneksi();
        k.getConnection();
    }
}