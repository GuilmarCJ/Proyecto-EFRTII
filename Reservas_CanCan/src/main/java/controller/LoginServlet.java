package controller;

import java.io.IOException;
import entity.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.ModelUsuario;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String contrasena = request.getParameter("contrasena");

        ModelUsuario modelUsuario = new ModelUsuario();
        Usuario user = modelUsuario.validarUsuario(usuario, contrasena);

        if (user == null) {
            // Usuario no existe o credenciales incorrectas
            String mensaje = "Usuario o contraseña incorrectos";
            request.setAttribute("mensaje", mensaje);
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } else {
            // Usuario válido, crear sesión
            HttpSession session = request.getSession();
            session.setAttribute("objUsuario", user);

            // Redirigir a la página de inicio
            response.sendRedirect("Inicio.jsp");
        }
    }
}