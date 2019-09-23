<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="crud.ModificaValori"%>
<%@page import="connessione.UtenteBean"%>
<%@page import="crud.InserisciValori"%>

<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="CSS/tabella.css">
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String gruppo = request.getParameter("gruppo");
		String email = request.getParameter("email");
		int invio = Integer.parseInt(request.getParameter("invio"));
		
		UtenteBean utente = new UtenteBean();
		utente.setId(id);
		utente.setNome(nome);
		utente.setCognome(cognome);
		utente.setGruppo(gruppo);
		utente.setEmail(email);
		utente.setInvio(invio);
		
		ModificaValori valori = new ModificaValori();
		valori.modificaUtente(utente);
	%>
	<script type="text/javascript">
		window.location.href = "http://localhost:8080/java_base_nl/inseriscoValore.jsp"
	</script>
</body>
</html>