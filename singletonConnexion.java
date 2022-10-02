package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class singletonConnexion {

	private static Connection con = null;
	  
    static
    {
        String url = "jdbc:mysql://localhost:3306/projet?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        String user = "root";
        String pass = "";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
            System.out.println("connexion succesfully");
        }
        catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
    }
    public static Connection getConnection()
    {
    	
    	
    	
        return con;
    }

}
