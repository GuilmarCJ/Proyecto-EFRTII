package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class MySqlDBConexion {
    
    // Cargar configuración desde database.properties
    private static ResourceBundle rb = ResourceBundle.getBundle("database");

    // Cargar el driver al inicio
    static {
        try {
            System.out.println("🔄 Conectando...");
            System.out.println("📦 Driver: " + rb.getString("driver"));
            Class.forName(rb.getString("driver"));
            System.out.println("✅ Driver cargado correctamente.");
        } catch (ClassNotFoundException e) {
            System.out.println("❌ Error al cargar el driver: " + e.getMessage());
        }
    }

    // Método para obtener la conexión
    public static Connection getConexion() {
        Connection salida = null;
        try {
            System.out.println("🔄 Conectando con la base de datos...");
            salida = DriverManager.getConnection(
                    rb.getString("url"),
                    rb.getString("username"),
                    rb.getString("password")
            );
            System.out.println("✅ Conexión establecida correctamente.");
        } catch (SQLException e) {
            System.out.println("❌ Error de conexión: " + e.getMessage());
        }
        return salida;
    }
}
