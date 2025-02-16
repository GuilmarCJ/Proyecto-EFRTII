package entity;

public class Reserva {
	private int codReserva;
	private int codUsuario;
	private String fecReserva;
	private String horaReserva;
	private int numPersonas;
	private String estReserva;
	private String comentReserva;
	private String fecRegisReserva;
	
	public Reserva() {
		codReserva=0;
		codUsuario=0;
		fecReserva=null;
		horaReserva=null;
		numPersonas=0;
		estReserva=null;
		comentReserva=null;
		fecRegisReserva=null;
		
	}

	public Reserva(int codReserva, int codUsuario, String fecReserva, String horaReserva, int numPersonas,
			String estReserva, String comentReserva, String fecRegisReserva) {
		super();
		this.codReserva = codReserva;
		this.codUsuario = codUsuario;
		this.fecReserva = fecReserva;
		this.horaReserva = horaReserva;
		this.numPersonas = numPersonas;
		this.estReserva = estReserva;
		this.comentReserva = comentReserva;
		this.fecRegisReserva = fecRegisReserva;
	}
	public Reserva(int codUsuario, String fecReserva, String horaReserva, int numPersonas,
			String estReserva, String comentReserva) {
		super();
		this.codUsuario = codUsuario;
		this.fecReserva = fecReserva;
		this.horaReserva = horaReserva;
		this.numPersonas = numPersonas;
		this.estReserva = estReserva;
		this.comentReserva = comentReserva;
	}
	public Reserva(String fecReserva, String horaReserva, int numPersonas,
			String estReserva, String comentReserva) {
		super();
		this.fecReserva = fecReserva;
		this.horaReserva = horaReserva;
		this.numPersonas = numPersonas;
		this.estReserva = estReserva;
		this.comentReserva = comentReserva;
	}

	public int getCodReserva() {
		return codReserva;
	}

	public void setCodReserva(int codReserva) {
		this.codReserva = codReserva;
	}

	public int getCodUsuario() {
		return codUsuario;
	}

	public void setCodUsuario(int codUsuario) {
		this.codUsuario = codUsuario;
	}

	public String getFecReserva() {
		return fecReserva;
	}

	public void setFecReserva(String fecReserva) {
		this.fecReserva = fecReserva;
	}

	public String getHoraReserva() {
		return horaReserva;
	}

	public void setHoraReserva(String horaReserva) {
		this.horaReserva = horaReserva;
	}

	public int getNumPersonas() {
		return numPersonas;
	}

	public void setNumPersonas(int numPersonas) {
		this.numPersonas = numPersonas;
	}

	public String getEstReserva() {
		return estReserva;
	}

	public void setEstReserva(String estReserva) {
		this.estReserva = estReserva;
	}

	public String getComentReserva() {
		return comentReserva;
	}

	public void setComentReserva(String comentReserva) {
		this.comentReserva = comentReserva;
	}

	public String getFecRegisReserva() {
		return fecRegisReserva;
	}

	public void setFecRegisReserva(String fecRegisReserva) {
		this.fecRegisReserva = fecRegisReserva;
	}
	
}
