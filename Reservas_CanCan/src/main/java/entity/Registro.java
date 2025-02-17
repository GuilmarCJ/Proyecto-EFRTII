package entity;

public class Registro {
/*
 * -- 3️⃣ Tabla de Seguridad (Login y Contraseñas)
CREATE TABLE SEGURIDAD_TBRegistro (
    CodRegistro INT AUTO_INCREMENT PRIMARY KEY,
    CodUsuario INT NOT NULL,
    UsuarioRegis VARCHAR(50) NOT NULL UNIQUE,
    ContraseñaRegis VARCHAR(255) NOT NULL, -- Contraseña encriptada
    CONSTRAINT FK_CODLOGIN FOREIGN KEY (CodUsuario) 
        REFERENCES CLIENTES_TBUsuarios(CodUsuario) 
        ON DELETE CASCADE
);
 * 
 * 
 * */
	
	private int codRegistro;
	private Usuario usuario; //Ref a codUsuario de la clase Usuario
	private String usuarioRegis;
	private String ContraseniaRegis;
	public int getCodRegistro() {
		return codRegistro;
	}
	public void setCodRegistro(int codRegistro) {
		this.codRegistro = codRegistro;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public String getUsuarioRegis() {
		return usuarioRegis;
	}
	public void setUsuarioRegis(String usuarioRegis) {
		this.usuarioRegis = usuarioRegis;
	}
	public String getContraseniaRegis() {
		return ContraseniaRegis;
	}
	public void setContraseniaRegis(String contraseniaRegis) {
		ContraseniaRegis = contraseniaRegis;
	}
	public Registro(int codRegistro, Usuario usuario, String usuarioRegis, String contraseniaRegis) {
		super();
		this.codRegistro = codRegistro;
		this.usuario = usuario;
		this.usuarioRegis = usuarioRegis;
		ContraseniaRegis = contraseniaRegis;
	}
	
	public Registro() {
		super();
	}
	
	
	
	
	
}
