package entity;

public class Usuario {
    private int codUsuario;
    private String nomUsuario;
    private String apeUsuario;
    private String correoUsuario;
    private String teleUsuario;

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

    public String getTeleUsuario() {
        return teleUsuario;
    }

    public void setTeleUsuario(String teleUsuario) {
        this.teleUsuario = teleUsuario;
    }
}