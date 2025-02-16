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
@WebServlet("/ReservaServlet")
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
			     System.out.println("Usuario: " + request.getParameter("txtusername"));
			     System.out.println("Mesa: " + request.getParameter("txtmesa"));
			     System.out.println("Fecha de Reserva: " + request.getParameter("txtfecha_reserva"));
			     System.out.println("Hora de Reserva: " + request.getParameter("txttiempo_reserva"));
			     
				if(  dao.guardar(reser));{
			 RequestDispatcher rd =	 request.getRequestDispatcher("ServletReserva?accion=listar");
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
