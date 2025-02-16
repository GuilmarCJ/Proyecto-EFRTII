package model;
import java.util.List;

import entity.Reserva;

public interface IReseva {
	public boolean guardar(Reserva reser);
	public List<Reserva>listar();
	public boolean eliminar(int id);
	public Reserva buscarID(int id);
	public boolean actualizar(Reserva reser);
	public boolean cambiarEstadoReserva(int id);

}
