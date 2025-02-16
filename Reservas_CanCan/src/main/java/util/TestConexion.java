package util;

import java.sql.Connection;

public class TestConexion {
    public static void main(String[] args) {
        Connection conn = MySqlDBConexion.getConexion();
        if (conn != null) {
            System.out.println("🎉 Conexión exitosa.");
            
        } else {
            System.out.println("⚠️ Fallo al conectar.");
        }
    }
}
