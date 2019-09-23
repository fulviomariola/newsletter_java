package connessione;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnessioneDB {

	public static void main(String args[]) {
		
		ConnessioneDB conn = new ConnessioneDB();
		System.out.println(conn.getConn());
	
	}
	
	public Connection getConn() {
		Connection connessione=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connessione = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsletter?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "fu76ro5");

		} catch (Exception e) {
			System.out.println(e);
		}
		return connessione;
	}
}