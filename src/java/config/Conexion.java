package config;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author nicox
 */
public class Conexion {
    Connection con;
    String url = "jdbc:mysql://localhost:3306/camisetasud";
    String user = "root";
    String pass = "123454678";
    public Connection Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
        }
        return con;
    }

    public Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}

