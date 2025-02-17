package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ModelUsuario;

import java.io.IOException;

import entity.Registro;
import entity.Usuario;


@WebServlet("/registrarUsuarioServlet")
public class RegistrarUsuarioServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String telefono = request.getParameter("telefono");
        String usuarioRegis = request.getParameter("usuarioRegis");
        String contrasenia = request.getParameter("contrasenia");

       
        Usuario usuario = new Usuario();
        usuario.setNomUsuario(nombre);
        usuario.setApeUsuario(apellido);
        usuario.setCorreoUsuario(correo);
        usuario.setTeleUsuario(telefono);

        Registro registro = new Registro();
        registro.setUsuario(usuario);
        registro.setUsuarioRegis(usuarioRegis);
        registro.setContraseniaRegis(contrasenia); 

        ModelUsuario dao = new ModelUsuario();
        boolean exito = dao.registrarUsuarioYRegistro(usuario, registro);

       
        if (exito) {
            response.sendRedirect("Inicio.jsp");
        } else {
            response.sendRedirect("Registro.jsp");
        }
    }
}