/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Modelo.Camiseta;
import config.Conexion;
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
    
    public void agregar(Camiseta cam){
        String comsql = "INSERT INTO camiseta (FotoCamiseta, NombreCamiseta, DescripcionCamiseta, PrecioCamiseta, ColorCamiseta, TallaCamiseta, Etiqueta, Stock) values (?,?,?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(comsql);
            ps.setBlob(1, cam.getFotoCamiseta());
            ps.setString(2, cam.getNombreCamiseta());
            ps.setString(3, cam.getDescripcionCamiseta());
            ps.setInt(4, cam.getPrecioCamiseta());
            ps.setInt(5, cam.getStockCamiseta());
            ps.setString(6, cam.getColorCamiseta());
            ps.setString(7, cam.getTallaCamiseta());
            ps.setString(8, cam.getEtiquetaCamiseta());
            
            
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
    }
}
