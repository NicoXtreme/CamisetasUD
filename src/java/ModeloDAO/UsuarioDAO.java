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
        String comsql = "SELECT * FROM usuarios WHERE correousuario=? and contrasenausuario=?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(comsql);
            ps.setString(1, mail);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while(rs.next()){
                usr.setCorreo(rs.getString("correousuario"));
                usr.setContraseña(rs.getString("contrasenausuario"));
            }
        } catch (Exception e) {
        }
        return usr;
    }
    
    public boolean registrar(String username, String usermail, String password){
        Usuario usr = new Usuario();
        String comsql = "INSERT INTO usuarios (nombreusuario, correousuario, contrasenausuario) values (?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(comsql);
            ps.setString(1, username);
            ps.setString(2, usermail);
            ps.setString(3, password);
            
            return ps.executeUpdate() > 0;
          
        } catch (Exception e) {
        }
        return false;
    }
}
