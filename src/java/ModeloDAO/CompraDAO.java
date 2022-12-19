/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Modelo.Carrito;
import Modelo.Compra;
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author NicoXtreme
 */
public class CompraDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r = 0;
    
    public int GenerarCompra(Compra compra){
        int idcompras;
        String comsql = "INSERT INTO compra(IdUsuario, IdPago, FechaCompra, Monto, Estado) values(?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(comsql);
            ps.setInt(1, compra.getUsuario().getId());
            ps.setInt(2, compra.getIdpago());
            ps.setString(3, compra.getFecha());
            ps.setDouble(4, compra.getMonto());
            ps.setString(5, compra.getEstado());
            r = ps.executeUpdate();
            
            comsql = "SELECT @@IDENTITY AS IdCompra";
            rs = ps.executeQuery(comsql);
            rs.next();
            idcompras = rs.getInt("IdCompra");
            
            for (Carrito detalle : compra.getDetallecompras()){
                comsql = "INSERT INTO detalle_compra(IdCamiseta, IdCompra, Cantidad, PrecioCompra) values(?,?,?,?)";
                ps = con.prepareStatement(comsql);
                ps.setInt(1, detalle.getIdProducto());
                ps.setInt(2, idcompras);
                ps.setInt(3, detalle.getCantidad());
                ps.setDouble(4, detalle.getPrecioCompra());
                r = ps.executeUpdate();
            }
        } catch (Exception e) {
        }
        
        
        return r;
    }
}
