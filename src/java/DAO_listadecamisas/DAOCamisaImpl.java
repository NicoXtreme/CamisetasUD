 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO_listadecamisas;

import com.mysql.cj.x.protobuf.MysqlxPrepare;
import entidades.Camisa;
import interfaces.DAOCamisa;
import java.awt.AWTEventMulticaster;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ojitos
 */
public class DAOCamisaImpl extends Conexion_jan implements DAOCamisa{

    @Override
    public void registrar(Camisa cam) throws Exception {
        try {
            this.conectar();
            PreparedStatement st = this.conexion.prepareStatement("INSERT INTO prueba_listacamisas (username) VALUES (?)");
            st.setString(1,cam.getNombre());
            st.executeUpdate();
                    
        } catch (Exception e) {
            throw e;
        }finally{
            this.cerrar();
        }
    }
   
    @Override
    public void modificar(Camisa cam) throws Exception {
           try {
            this.conectar();//abre conexion
            PreparedStatement st = this.conexion.prepareStatement("UPDATE prueba_listacamisas SET username= ? WHERE id = ?");//se realiza la comsulta
            st.setString(1,cam.getNombre());//reemplaza el objeto dela propiedad nombre de cam
            st.setInt(2,cam.getId()); //reemplaza el objetode la propiedad id de cam 
            st.executeUpdate();//ejecuta el update
                    
        } catch (Exception e) {
            throw e;
        }finally{
            this.cerrar();//cierra la case de datos
        }
    }

    @Override
    public void eliminar(Camisa cam) throws Exception {
        try {
            this.conectar();
            PreparedStatement st = this.conexion.prepareStatement("DELETE FROM prueba_listacamisas WHERE id = ?");
            st.setInt(1,cam.getId());
            st.executeUpdate();
                    
        } catch (Exception e) {
            throw e;
        }finally{
            this.cerrar();
        }
    }

    @Override
    public List<Camisa> listar() throws Exception {
        List<Camisa> lista = null;
        try {
            this.conectar();
            PreparedStatement st = this.conexion.prepareStatement("SELECT * FROM prueba_listacamisas");
            
            lista = new ArrayList();
            ResultSet rs = st.executeQuery();
            while (rs.next()){
                Camisa cam = new Camisa();
                cam.setId(rs.getInt("id"));
                cam.setNombre(rs.getString("username"));
                lista.add(cam);
            }
            rs.close();
            st.close();
            
        } catch (Exception e) {
            throw e;
        } finally {
          this.cerrar();
        }
        return lista;
    }
}
