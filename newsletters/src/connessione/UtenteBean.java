package connessione;

public class UtenteBean {
	
	private int id;
	private String nome;
	private String cognome;
	private String gruppo;
	private String email;
	private int invio;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getGruppo() {
		return gruppo;
	}
	public void setGruppo(String gruppo) {
		this.gruppo = gruppo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getInvio() {
		return invio;
	}
	public void setInvio(int invio) {
		this.invio = invio;
	}
	
}
