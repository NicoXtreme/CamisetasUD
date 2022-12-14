/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Modelo.Camiseta;
import config.Conexion;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author NicoXtreme
 */
public class CamisetaDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public boolean agregar(Camiseta cam){
        String comsql = "INSERT INTO camiseta(FotoCamiseta, NombreCamiseta, DescripcionCamiseta, PrecioCamiseta, Stock, ColorCamiseta, TallaCamiseta, Etiqueta) values(?,?,?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(comsql);
            ps.setBlob(1, cam.getFoto());
            ps.setString(2, cam.getNombre());
            ps.setString(3, cam.getDescripcion());
            ps.setInt(4, cam.getPrecio());
            ps.setInt(5, cam.getStock());
            ps.setString(6, cam.getColor());
            ps.setString(7, cam.getTalla());
            ps.setString(8, cam.getEtiqueta());
            
            return ps.executeUpdate() > 0;
            
        } catch (Exception e) {
        }
        
        return false;
    }
}
