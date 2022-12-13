package ModeloDAO;

import Modelo.Usuario;
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author nicox
 */
public class UsuarioDAO {   
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public Usuario validar(String mail, String password){
        Usuario usr = new Usuario();
        String comsql = "SELECT * FROM usuarios WHERE CorreoUsuario=? and ContrasenaUsuario=?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(comsql);
            ps.setString(1, mail);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while(rs.next()){
                usr.setCorreo(rs.getString("CorreoUsuario"));
                usr.setContraseña(rs.getString("ContrasenaUsuario"));
            }
        } catch (Exception e) {
        }
        return usr;
    }
    
    public boolean registrar(String username, String usermail, String password, String type, String document, String name, String forename){
        String comsql = "INSERT INTO usuarios (ApodoUsuario, CorreoUsuario, ContrasenaUsuario, TipoUsuario, CedulaUsuario, NombresUsuario, ApellidosUsuario) values (?,?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(comsql);
            ps.setString(1, username);
            ps.setString(2, usermail);
            ps.setString(3, password);
            ps.setString(4, type);
            ps.setString(5, document);
            ps.setString(6, name);
            ps.setString(7, forename);
            
            return ps.executeUpdate() > 0;
          
        } catch (Exception e) {
        }
        return false;
    }
}
