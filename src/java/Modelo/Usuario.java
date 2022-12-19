package Modelo;

/**
 *
 * @author nicox
 */
public class Usuario {
    int id;
    String cedula;
    String correo;
    String tipo;
    String apodo;
    String nombre;
    String apellido;
    String contraseña;
    

    public Usuario() {
    }

    public Usuario(int id, String cedula, String correo, String tipo, String apodo, String nombre, String apellido, String contraseña) {
        this.id = id;
        this.cedula = cedula;
        this.correo = correo;
        this.tipo = tipo;
        this.apodo = apodo;
        this.nombre = nombre;
        this.apellido = apellido;
        this.contraseña = contraseña;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getApodo() {
        return apodo;
    }

    public void setApodo(String apodo) {
        this.apodo = apodo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

}
