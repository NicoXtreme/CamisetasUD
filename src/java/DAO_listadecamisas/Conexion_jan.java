/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO_listadecamisas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Ojitos
 */
public class Conexion_jan {
    
    protected Connection conexion;
    //JBDC DRIVER, nombre y bases de datos URL
    private final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private final String DB_URL = "jdbc:mysql://localhost:3306/prueba";
    
    //credenciales de base de datos
    private final String user = "root";
    private final String pass = "N56wJs7o";
    
    public void conectar()throws Exception{
        try{
            conexion = DriverManager.getConnection(DB_URL, user, pass);
            Class.forName(JDBC_DRIVER);
        }catch(Exception e){
            throw e;
        }
    }
     public void cerrar() throws SQLException{
         if (conexion != null){
             if (conexion.isClosed()){
                 conexion.close();
             }
         }   
        }
}
