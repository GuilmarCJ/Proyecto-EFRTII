package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ReservaDAO;

import java.io.IOException;
import java.util.List;

import entity.Reserva;

/**
 * Servlet implementation class ReservaServlet
 */
@WebServlet("/ServletReserva")
public class ServletReserva extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ReservaDAO dao = new ReservaDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletReserva() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion =request.getParameter("accion");
		if(accion.equals("listar")) { 
			List<Reserva>lista = dao.listar();
			request.setAttribute("listaReservas", lista);
			RequestDispatcher rd = request.getRequestDispatcher("listadoreserva.jsp");
			rd.forward(request, response);
			
		}else if (accion.equals("nuevo")) {
			RequestDispatcher rd = request.getRequestDispatcher("Reservas.jsp");
	        rd.forward(request, response);
		

	}	else if (accion.equals("guardar")) {
			String fecReserva = request.getParameter("txtFecha");
			String horaReserva = request.getParameter("txtHora");
			int numPersonas = Integer.parseInt(request.getParameter("txtNumPersonas"));
			String comentReserva = request.getParameter("txtComentarios");
			String estReserva = "Pendiente";
		//CREAR OBJETO Reserva
				Reserva reser = new Reserva( fecReserva, horaReserva, numPersonas, estReserva, comentReserva);
				 reser.setFecReserva(fecReserva);
			     reser.setHoraReserva(horaReserva);
			     reser.setNumPersonas(numPersonas);
			     reser.setEstReserva(estReserva);
			     reser.setComentReserva(comentReserva);
				
			     System.out.println("Acción: guardar");
			     System.out.println("Fecha Reserva: " + request.getParameter("txtFecha"));
			     System.out.println("Hora Reserva: " + request.getParameter("txtHora"));
			     System.out.println("N° Personas: " + request.getParameter("txtNumPersonas"));
			     System.out.println("Comentarios: " + request.getParameter("txtComentarios"));
			     
				if(dao.guardar(reser)){
			 RequestDispatcher rd =	 request.getRequestDispatcher("ServletReserva?accion=listar");
			 rd.forward(request, response);
			 }	
				}
	else if(accion.equals("editar")) {
		int id = Integer.parseInt(request.getParameter("id"));
		
		Reserva reser = dao.buscarID(id);
		
		if(reser != null) {
		request.setAttribute("codReserva", reser.getCodReserva());
		request.setAttribute("codUsuario", reser.getCodUsuario());
		request.setAttribute("fecReserva", reser.getFecReserva());
		request.setAttribute("horaReserva", reser.getHoraReserva());
		request.setAttribute("numPersonas", reser.getNumPersonas());
		request.setAttribute("comentReserva", reser.getComentReserva());
		RequestDispatcher rd = request.getRequestDispatcher("editar.jsp");
	    rd.forward(request, response);
		}else {
			request.setAttribute("error", "la reserva no existe");
			RequestDispatcher rd = request.getRequestDispatcher("listadoreserva.jsp");
			rd.forward(request, response);
			}
		}
	else if (accion.equals("actualizar")) {
		String fecReserva = request.getParameter("txtFecReserva");
		String horaReserva = request.getParameter("txtHoraReserva");
		int numPersonas = Integer.parseInt(request.getParameter("txtNumPersonas"));
		String comentReserva = request.getParameter("txtComentarios");
		int codUsuario = Integer.parseInt(request.getParameter("txtCodUsuario"));
		int id = Integer.parseInt(request.getParameter("id"));
		//CREAR OBJETO reserva
		Reserva reser = new Reserva();
		reser.setFecReserva(fecReserva);
		reser.setHoraReserva(horaReserva);
	    reser.setNumPersonas(numPersonas);
		reser.setComentReserva(comentReserva);
		reser.setCodUsuario(codUsuario);
		reser.setCodReserva(id);
		if(dao.actualizar(reser));{
	 RequestDispatcher rd =	 request.getRequestDispatcher("ServletReserva?accion=listar");
	 rd.forward(request, response);
		}	
	}
		
	else if (accion.equals("cambiarEstado")) {
	    // Cambiar el estado de la reserva a "asistió"
	    int id = Integer.parseInt(request.getParameter("id"));
	    if (dao.cambiarEstadoReserva(id)) {
	        RequestDispatcher rd = request.getRequestDispatcher("ServletReserva?accion=listar");
	        rd.forward(request, response);
	    }

	}
	else if (accion.equals("eliminar")) {
		int id = Integer.parseInt(request.getParameter("id"));
		if (dao.eliminar(id)) {
			RequestDispatcher rd = request.getRequestDispatcher("ServletReserva?accion=listar");
			rd.forward(request, response);
			}
		}
		}
	
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
