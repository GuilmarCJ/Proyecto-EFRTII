package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class TestMostrarDatos {
    public static void main(String[] args) {
        Connection conn = MySqlDBConexion.getConexion();

        if (conn != null) {
            try {
                Statement stmt = conn.createStatement();

                // 🔹 Consultar CLIENTES_TBUsuarios
                String sqlUsuarios = "SELECT CodUsuario, NomUsuario, ApeUsuario, CorreoUsuario, TeleUsuario FROM CLIENTES_TBUsuarios";
                ResultSet rsUsuarios = stmt.executeQuery(sqlUsuarios);

                System.out.println("🔹 LISTA DE USUARIOS:");
                while (rsUsuarios.next()) {
                    int id = rsUsuarios.getInt("CodUsuario");
                    String nombre = rsUsuarios.getString("NomUsuario");
                    String apellido = rsUsuarios.getString("ApeUsuario");
                    String correo = rsUsuarios.getString("CorreoUsuario");
                    String telefono = rsUsuarios.getString("TeleUsuario");

                    System.out.println("🆔 ID: " + id + " | 📛 Nombre: " + nombre + " " + apellido + " | 📧 Correo: " + correo + " | 📞 Teléfono: " + telefono);
                }
                rsUsuarios.close();

                // 🔹 Consultar SEGURIDAD_TBRegistro (Usuarios registrados en el sistema)
                String sqlSeguridad = "SELECT CodRegistro, UsuarioRegis FROM SEGURIDAD_TBRegistro";
                ResultSet rsSeguridad = stmt.executeQuery(sqlSeguridad);

                System.out.println("\n🔹 USUARIOS REGISTRADOS EN SEGURIDAD:");
                while (rsSeguridad.next()) {
                    int idRegistro = rsSeguridad.getInt("CodRegistro");
                    String usuario = rsSeguridad.getString("UsuarioRegis");

                    System.out.println("🆔 ID Registro: " + idRegistro + " | 👤 Usuario: " + usuario);
                }
                rsSeguridad.close();

                // 🔹 Consultar RESERVACIONES_TBReserva (Reservas registradas)
                String sqlReservas = "SELECT CodReserva, CodUsuario, FecReserva, HoraReserva, NumPersonas, EstReserva, ComentReserva FROM RESERVACIONES_TBReserva";
                ResultSet rsReservas = stmt.executeQuery(sqlReservas);

                System.out.println("\n🔹 LISTA DE RESERVAS:");
                while (rsReservas.next()) {
                    int idReserva = rsReservas.getInt("CodReserva");
                    int idUsuario = rsReservas.getInt("CodUsuario");
                    String fecha = rsReservas.getString("FecReserva");
                    String hora = rsReservas.getString("HoraReserva");
                    int personas = rsReservas.getInt("NumPersonas");
                    String estado = rsReservas.getString("EstReserva");
                    String comentario = rsReservas.getString("ComentReserva");

                    System.out.println("🆔 Reserva ID: " + idReserva + " | 👤 Usuario ID: " + idUsuario +
                            " | 📅 Fecha: " + fecha + " | ⏰ Hora: " + hora +
                            " | 👥 Personas: " + personas + " | 📌 Estado: " + estado + " | 📝 Comentario: " + comentario);
                }
                rsReservas.close();

                // 🔹 Cerrar conexión
                stmt.close();
                conn.close();
                System.out.println("\n✅ Conexión cerrada correctamente.");

            } catch (Exception e) {
                System.out.println("❌ Error al obtener datos: " + e.getMessage());
            }
        } else {
            System.out.println("⚠️ No se pudo conectar a la base de datos.");
        }
    }
}
