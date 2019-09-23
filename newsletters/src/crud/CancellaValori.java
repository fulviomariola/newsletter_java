package crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import connessione.ConnessioneDB;


public class CancellaValori {
	
	public void cancellaValore(int id) {
		ConnessioneDB connessione = new ConnessioneDB();
		Connection conn = connessione.getConn();
		PreparedStatement ps = null;
		
		try {
			String query = "delete from gruppo where id=?";
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
