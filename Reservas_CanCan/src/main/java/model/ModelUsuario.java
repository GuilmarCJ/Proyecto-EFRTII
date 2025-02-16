package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import entity.Usuario;
import util.MySqlDBConexion;

public class ModelUsuario {

    public Usuario validarUsuario(String usuario, String contrasena) {
        Usuario user = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = MySqlDBConexion.getConexion();
            String sql = "SELECT u.CodUsuario, u.NomUsuario, u.ApeUsuario, u.CorreoUsuario, u.TeleUsuario " +
                         "FROM CLIENTES_TBUsuarios u " +
                         "JOIN SEGURIDAD_TBRegistro s ON u.CodUsuario = s.CodUsuario " +
                         "WHERE s.UsuarioRegis = ? AND s.ContraseñaRegis = SHA2(?, 256)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, usuario);
            pstmt.setString(2, contrasena);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                user = new Usuario();
                user.setCodUsuario(rs.getInt("CodUsuario"));
                user.setNomUsuario(rs.getString("NomUsuario"));
                user.setApeUsuario(rs.getString("ApeUsuario"));
                user.setCorreoUsuario(rs.getString("CorreoUsuario"));
                user.setTeleUsuario(rs.getString("TeleUsuario"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return user;
    }
}