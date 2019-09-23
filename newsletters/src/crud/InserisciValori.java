package crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import connessione.ConnessioneDB;

public class InserisciValori {
	public void inseriscoValore(String id, String nome, String cognome, String gruppo, String email, String invio) {
		ConnessioneDB connessione = new ConnessioneDB();
		Connection conn = connessione.getConn();
		PreparedStatement ps = null;
		
		try {
			String query = "insert into gruppo(id,nome,cognome,gruppo,email,invio) values(?,?,?,?,?,?)";
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			ps.setString(2, nome);
			ps.setString(3, cognome);
			ps.setString(4, gruppo);
			ps.setString(5, email);
			ps.setString(6, invio);
			ps.executeUpdate();
		} catch (Exception e) {
			System.err.println(e);
		}
	}
	
}
