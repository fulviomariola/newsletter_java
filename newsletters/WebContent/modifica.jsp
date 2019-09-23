<%@ page import="crud.ModificaValori"%>
<%@ page import="connessione.UtenteBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Modifica</title>
<style type="text/css"></style>
<link rel="stylesheet" type="text/css" href="CSS/tabella.css">
</head>

<body>
	<%
		// String email = (String) request.getParameter("email");
	    int id = Integer.parseInt(request.getParameter("id"));
		ModificaValori valori = new ModificaValori();
		UtenteBean utente = valori.getValoreUtene(id);
	%>


	<form action="controllo/modificaController.jsp">
		<table dir="ltr">
			<tr>
				<th align="center">MODIFICA VALORI</th>
			</tr>
			<tr>
				<th>ID: <input type="text" name="id" value="<%=utente.getId()%>"></th>
			</tr>
			<tr>
				<th>Nome: <input type="text" name="nome" value="<%=utente.getNome()%>"></th>
			</tr>
			<tr>
				<th>Cognome: <input type="text" name="cognome" value="<%=utente.getCognome()%>"></th>
			</tr>
			<tr>
				<th>Gruppo: <input type="text" name="gruppo" value="<%=utente.getGruppo()%>"></th>
			</tr>
			<tr>
				<th>Email: <input type="text" name="email" value="<%=utente.getEmail()%>"></th>
			</tr>
			<tr>
				<th>Invio:<input type="text" name="invio" value="<%=utente.getInvio()%>"></th>
			</tr>
			<tr>
				<th><input type="submit" value="Modifica"></th>
			</tr>
		</table>
	</form>
</body>
</html>










