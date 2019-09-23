package crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import connessione.ConnessioneDB;
import connessione.UtenteBean;

public class ModificaValori {
	public UtenteBean getValoreUtene(int id) {
		ConnessioneDB connessione = new ConnessioneDB();
		Connection conn = connessione.getConn();
		
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		UtenteBean utente = new UtenteBean();

		try {
			String query = "select * from gruppo where id=?";
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);

			rs = ps.executeQuery();
			while (rs.next()) {
				utente.setId(rs.getInt("id")); 
				utente.setNome(rs.getString("nome"));
				utente.setCognome(rs.getString("cognome"));
				utente.setGruppo(rs.getString("gruppo"));
				utente.setEmail(rs.getString("email"));
				utente.setInvio(rs.getInt("invio"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return utente;
	}

	public void modificaUtente(UtenteBean utente) {
		ConnessioneDB connessione = new ConnessioneDB();
		Connection conn = connessione.getConn();
		
		PreparedStatement ps = null;
		try {
			String query = "update gruppo set nome=?,cognome=?,gruppo=?,email=?,invio=? where id=?";
			ps = conn.prepareStatement(query);

			
			ps.setString(1, utente.getNome());
			ps.setString(2, utente.getCognome());
			ps.setString(3, utente.getGruppo());
			ps.setString(4, utente.getEmail());
			ps.setInt(5, utente.getInvio());
			ps.setInt(6, utente.getId());

			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
