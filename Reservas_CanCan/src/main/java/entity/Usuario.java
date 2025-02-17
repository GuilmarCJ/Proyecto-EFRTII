package entity;
import java.sql.Date;
/*
 * CREATE TABLE CLIENTES_TBUsuarios (
    CodUsuario INT AUTO_INCREMENT PRIMARY KEY,
    NomUsuario VARCHAR(50) NOT NULL,
    ApeUsuario VARCHAR(50) NOT NULL,
    CorreoUsuario VARCHAR(50) UNIQUE NOT NULL,
    TeleUsuario CHAR(9) UNIQUE NOT NULL CHECK (TeleUsuario LIKE '9%_'), 
    FecRegistro DATETIME DEFAULT CURRENT_TIMESTAMP --
);
 * 
 * 
 * 
 * */


public class Usuario {
    private int codUsuario;
    private String nomUsuario;
    private String apeUsuario;
    private String correoUsuario;
    private String teleUsuario;
    private Date fecRegistro;

    // Getters y Setters
    
    public int getCodUsuario() {
        return codUsuario;
    }

    public void setCodUsuario(int codUsuario) {
        this.codUsuario = codUsuario;
    }

    public String getNomUsuario() {
        return nomUsuario;
    }

    public void setNomUsuario(String nomUsuario) {
        this.nomUsuario = nomUsuario;
    }

    public String getApeUsuario() {
        return apeUsuario;
    }

    public void setApeUsuario(String apeUsuario) {
        this.apeUsuario = apeUsuario;
    }

    public String getCorreoUsuario() {
        return correoUsuario;
    }

    public void setCorreoUsuario(String correoUsuario) {
        this.correoUsuario = correoUsuario;
    }
    
    public Date getFecRegistro() {
		return fecRegistro;
	}

	public void setFecRegistro(Date fecRegistro) {
		this.fecRegistro = fecRegistro;
	}

	public String getTeleUsuario() {
        return teleUsuario;
    }

    public void setTeleUsuario(String teleUsuario) {
        this.teleUsuario = teleUsuario;
    }

	public Usuario(int codUsuario, String nomUsuario, String apeUsuario, String correoUsuario, String teleUsuario,
			Date fecRegistro) {
		this.codUsuario = codUsuario;
		this.nomUsuario = nomUsuario;
		this.apeUsuario = apeUsuario;
		this.correoUsuario = correoUsuario;
		this.teleUsuario = teleUsuario;
		this.fecRegistro = fecRegistro;
	}

	public Usuario() {
	}
    
}