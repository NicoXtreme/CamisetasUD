/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Modelo.Camiseta;
import config.Conexion;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author NicoXtreme
 */
public class CamisetaDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public List listar(){
        List<Camiseta>camisetas = new ArrayList();
        String comsql = "SELECT * FROM camiseta";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(comsql);
            rs = ps.executeQuery();
            while(rs.next()){
                Camiseta cam = new Camiseta();
                cam.setIdCamiseta(rs.getInt(1));
                cam.setFoto(rs.getBinaryStream(2));
                cam.setNombreCamiseta(rs.getString(3));
                cam.setDescripcion(rs.getString(4));
                cam.setPrecio(rs.getInt(5));
                cam.setStock(rs.getInt(6));
                
                camisetas.add(cam);
            }
        } catch (Exception e) {
        }
        return camisetas;
    }    
    
    public void listarImg(int id, HttpServletResponse response){
        String comsql = "SELECT * FROM camiseta WHERE IdCamiseta="+id;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        response.setContentType("image/*");
        try {
            outputStream = response.getOutputStream();
            con = cn.Conexion();
            ps = con.prepareStatement(comsql);
            rs = ps.executeQuery();
            if(rs.next()){
                inputStream = rs.getBinaryStream("Foto");
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i = 0;
            while ((i = bufferedInputStream.read()) != -1) {
                bufferedOutputStream.write(i);
            }
        } catch (Exception e) {
        }
    }
    
    public boolean agregar(Camiseta cam){
        String comsql = "INSERT INTO camiseta(FotoCamiseta, NombreCamiseta, DescripcionCamiseta, PrecioCamiseta, Stock, ColorCamiseta, TallaCamiseta, Etiqueta) values(?,?,?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(comsql);
            ps.setBlob(1, cam.getFoto());
            ps.setString(2, cam.getNombreCamiseta());
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
