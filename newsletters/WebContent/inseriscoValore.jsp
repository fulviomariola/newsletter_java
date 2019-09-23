<%@ page import="java.util.Iterator"%>
<%@ page import="connessione.UtenteBean"%>
<%@ page import="java.util.List"%>
<%@ page import="crud.LeggoValori"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Valori Inseriti</title>
<style type="text/css"></style>
<link rel="stylesheet" type="text/css" href="CSS/tabella.css">
</head>

<body>


	<form action="controllo/inseriscoController.jsp">
		<table dir="ltr" border="1">
			<tr>
				<th align="center">INSERISCI NUOVO UTENTE</th>
			</tr>
			<tr>
				<th>ID: <input type="text" name="id"></th>
			</tr>
			<tr>
				<th>Nome: <input type="text" name="nome"></th>
			</tr>

			<tr>
				<th>Cognome: <input type="text" name="cognome"></th>
			</tr>

			<tr>
				<th>Gruppo di apprtenenza: <input type="text" name="gruppo"></th>
			</tr>

			<tr>
				<th>Email: <input type="email" name="email"></th>
			</tr>
			<tr>
				<th>Tutti o solo inviati: <input type="text" name="invio"></th>
			</tr>
			<tr>
				<th><input type="submit" value="Inserisco"></th>
			</tr>
		</table> 
	</form>
	<hr>
	<hr>
	<%
		    LeggoValori leggi = new LeggoValori();
			List<UtenteBean> list = leggi.getValori();
			Iterator<UtenteBean> listaIter = list.iterator();
		%>
	<table border="1">
		<tr>
				<th colspan="8">TABELLA ISCRITTI</th>
		</tr>
		   
		    <%
				while (listaIter.hasNext()) {
					UtenteBean utente = new UtenteBean();
					utente = listaIter.next();
			%>
			
		<tr>
			<th><%=utente.getId()%></th>
			
			<th><%=utente.getNome()%></th>
			
			<th><%=utente.getCognome()%></th>
			
			<th><%=utente.getGruppo()%></th>
			
			<th><%=utente.getEmail()%></th>
			
			<th><%=utente.getInvio()%></th>
			
			<th><a href="modifica.jsp?id=<%=utente.getId()%>">Modifica</a></th>
			
			<th><a href="controllo/cancellaController.jsp?id=<%=utente.getId()%>">Cancella</a></th>
		</tr>
		<%
}
%>
	</table>


</body>
</html>