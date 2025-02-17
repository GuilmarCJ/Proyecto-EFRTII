package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import entity.Registro;
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
    
    public boolean registrarUsuarioYRegistro(Usuario usuario, Registro registro) {
        Connection conn = null;
        PreparedStatement pstmUsuario = null;
        PreparedStatement pstmRegistro = null;
        ResultSet rs = null;
        boolean exito = false;

        try {
          
            conn = MySqlDBConexion.getConexion();

         
            conn.setAutoCommit(false);

          
            String sqlUsuario = "INSERT INTO CLIENTES_TBUsuarios (NomUsuario, ApeUsuario, CorreoUsuario, TeleUsuario) VALUES (?, ?, ?, ?)";
            pstmUsuario = conn.prepareStatement(sqlUsuario, PreparedStatement.RETURN_GENERATED_KEYS);

            pstmUsuario.setString(1, usuario.getNomUsuario());
            pstmUsuario.setString(2, usuario.getApeUsuario());
            pstmUsuario.setString(3, usuario.getCorreoUsuario());
            pstmUsuario.setString(4, usuario.getTeleUsuario());

            int filasAfectadas = pstmUsuario.executeUpdate();
            if (filasAfectadas == 0) {
                throw new SQLException("Error al insertar usuario.");
            }

            rs = pstmUsuario.getGeneratedKeys();
            int idUsuario = 0;
            if (rs.next()) {
                idUsuario = rs.getInt(1);
            } else {
                throw new SQLException("No se pudo obtener el ID del usuario.");
            }

         
            String sqlRegistro = "INSERT INTO SEGURIDAD_TBRegistro (CodUsuario, UsuarioRegis, ContraseñaRegis) VALUES (?, ?, ?)";
            pstmRegistro = conn.prepareStatement(sqlRegistro);

            pstmRegistro.setInt(1, idUsuario);
            pstmRegistro.setString(2, registro.getUsuarioRegis());
            pstmRegistro.setString(3, registro.getContraseniaRegis()); 

            pstmRegistro.executeUpdate();

      
            conn.commit();
            exito = true;

        } catch (Exception e) {
            e.printStackTrace();
            try {
                if (conn != null) {
                    conn.rollback(); 
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmUsuario != null) pstmUsuario.close();
                if (pstmRegistro != null) pstmRegistro.close();
                if (conn != null) conn.setAutoCommit(true);
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return exito;
    }
    
}