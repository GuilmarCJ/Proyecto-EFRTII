package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean loginExitoso = false;

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RestauranteDB", "root", "MySQL");
             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM SEGURIDAD_TBRegistro WHERE UsuarioRegis=? AND ContraseñaRegis=SHA2(?, 256)")) {
            
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            loginExitoso = rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        response.setContentType("application/json");
        response.getWriter().write("{\"success\": " + loginExitoso + "}");
    }
}

