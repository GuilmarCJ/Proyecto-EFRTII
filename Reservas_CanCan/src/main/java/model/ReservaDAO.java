package model;
import java.sql.*;
import util.MySqlDBConexion;

import java.util.ArrayList;
import java.util.List;

import entity.Reserva;

public class ReservaDAO implements IReseva{
	private Connection conn;
	MySqlDBConexion obj = new MySqlDBConexion();
	PreparedStatement ps = null;

	@Override
	public boolean guardar(Reserva reser) {
		PreparedStatement ps = null;
		
		try {
			conn = obj.getConexion();
			String sql = "INSERT INTO RESERVACIONES_TBReserva (CodUsuario, FecReserva, HoraReserva, NumPersonas,EstReserva,ComentReserva)values(?,?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, reser.getCodUsuario());
			ps.setString(2, reser.getFecReserva());
			ps.setString(3, reser.getHoraReserva());
			ps.setInt(4, reser.getNumPersonas());
			ps.setString(5, reser.getEstReserva());
			ps.setString(6, reser.getComentReserva());
			ps.executeUpdate();	
			return true;
		}catch (SQLException ex) {
			return false;
		}finally {
			try {
				ps.close();
				conn.close();
				
			}catch(SQLException ex) {
				ex.printStackTrace();
			}
		}
	}
	@Override
	public List<Reserva> listar() {
		List<Reserva> lista = new ArrayList<Reserva>();
		   String sql = "SELECT * FROM RESERVACIONES_TBReserva";
			conn = obj.getConexion();
			try {
				conn = obj.getConexion();
				java.sql.Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery(sql);
				while(rs.next()) {
					Reserva reser = new Reserva();
					reser.setCodReserva(rs.getInt("CodReserva"));
					reser.setCodUsuario(rs.getInt("CodUsuario"));
					reser.setFecReserva(rs.getString("FecReserva"));
					reser.setHoraReserva(rs.getString("HoraReserva"));
				    reser.setNumPersonas(rs.getInt("NumPersonas"));
					reser.setEstReserva(rs.getString("EstReserva"));
					reser.setComentReserva(rs.getString("ComentReserva"));
					reser.setFecRegisReserva(rs.getString("FecRegisReserva"));
					lista.add(reser);
				}
			}catch(SQLException ex) {
				
			  System.out.println(ex.getMessage());
			}
			return lista;
	}

	@Override
	public boolean eliminar(int id) {
		PreparedStatement ps = null;
		try {  conn = obj.getConexion();
			     String sql = "DELETE FROM RESERVACIONES_TBReserva WHERE CodReserva=?";
			     ps = conn.prepareStatement(sql);
			     ps.setInt(1,id);
			     ps.executeUpdate();
			     return true;
		}
		catch(SQLException ex) {
			ex.printStackTrace();
		return false;
		}
		finally {
			try {
				ps.close(); //LIBERAR SENTENCIA preparada
				conn.close(); //CERRARCONEXION A BASE DATOS
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}
	}

	@Override
	public Reserva buscarID(int id) {
		Reserva reser = null;
		String sql ="SELECT * FROM RESERVACIONES_TBReserva WHERE CodReserva=?";
		PreparedStatement ps = null;
		try {
			conn = obj.getConexion();
			 ps = conn.prepareStatement(sql);
	         ps.setInt(1, id);
	         ResultSet rs = ps.executeQuery();
	         while(rs.next()) {
	        	 reser = new Reserva(rs.getInt("CodReserva"),
	        			 			rs.getInt("CodUsuario"),
									rs.getString("FecReserva"),
									rs.getString("HoraReserva"),
								    rs.getInt("NumPersonas"),
									rs.getString("EstReserva"),
									rs.getString("ComentReserva"),
									rs.getString("FecRegisReserva"));
	         }
			
		}
		catch(SQLException ex) {
			ex.printStackTrace();

		}finally {
			try {
				conn.close();
				ps.close();
			} catch (SQLException ex) {
              ex.printStackTrace();
			}
			
		}
		return reser;
	}

	@Override
	public boolean actualizar(Reserva reser) {
		PreparedStatement ps=null;
		try {
			
			conn = obj.getConexion();
			String sql ="UPDATE RESERVACIONES_TBReserva SET FecReserva=?,HoraReserva=?, NumPersonas=?, EstReserva=?, ComentReserva=? WHERE CodReserva=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, reser.getFecReserva());
			ps.setString(2, reser.getHoraReserva());
			ps.setInt(3, reser.getNumPersonas());
			ps.setString(4, reser.getEstReserva());
			ps.setString(5, reser.getComentReserva());
			ps.setInt(6, reser.getCodReserva());
			ps.executeUpdate();

           return true;			
		} catch (SQLException ex) {
			return false;			
		} finally {
			try {
				conn.close();
				ps.close();
			} catch (SQLException ex) {
				ex.printStackTrace();
				}
			}
		}

	@Override
	public boolean cambiarEstadoReserva(int id) {
		String sql = "UPDATE RESERVACIONES_TBReserva SET EstReserva = 'Confirmada' WHERE CodReserva = ?";
        try (Connection conn = obj.getConexion();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            int filasActualizadas = stmt.executeUpdate();
            return filasActualizadas > 0;
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
	}
}
