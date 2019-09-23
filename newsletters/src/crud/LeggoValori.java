package crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import connessione.ConnessioneDB;
import connessione.UtenteBean;


public class LeggoValori {
	public static void main(String[] args) {
		LeggoValori leggoDB = new LeggoValori();
		leggoDB.getValori();
	}

	public List<UtenteBean> getValori() {
		ConnessioneDB conn = new ConnessioneDB();
		Connection connessione = conn.getConn();
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<UtenteBean> list = new ArrayList<UtenteBean>();
		try {
			String query = "select * from gruppo";
			ps = connessione.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				UtenteBean utenteBean = new UtenteBean();
				
				System.out.println(rs.getInt("id"));
				System.out.println(rs.getString("nome"));
				System.out.println(rs.getString("cognome"));
				System.out.println(rs.getString("gruppo"));
				System.out.println(rs.getString("email"));
				System.out.println(rs.getInt("invio"));
				
				utenteBean.setId(rs.getInt("id")); // int
				utenteBean.setNome(rs.getString("nome"));
				utenteBean.setCognome(rs.getString("cognome"));
				utenteBean.setGruppo(rs.getString("gruppo"));
				utenteBean.setEmail(rs.getString("email"));
				utenteBean.setInvio(rs.getInt("invio"));
				
				list.add(utenteBean);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public List<UtenteBean> getInvioMail(String gruppo) {
		ConnessioneDB conn = new ConnessioneDB();
		Connection connessione = conn.getConn();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<UtenteBean> list = new ArrayList<UtenteBean>();
		
		try {
			String query = "select email from gruppo where gruppo='"+gruppo+"'";
			ps = connessione.prepareStatement(query);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				UtenteBean utenteBean = new UtenteBean();
				

				System.out.println(rs.getString("email"));
				
				utenteBean.setEmail(rs.getString("email"));
				
				list.add(utenteBean);
				
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return list;
	}
}
