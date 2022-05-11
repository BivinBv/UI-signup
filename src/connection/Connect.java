package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connect {

	public static Connection getconnection() throws Exception
	{
		Connection con=null;
		String url="jdbc:mysql://localhost:3306/userdlts";
		String uname="root";
		String pass="root";
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url,uname,pass);
		return con;

	}

}
