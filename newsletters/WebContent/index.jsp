<%@ page import="java.util.Iterator"%>
<%@ page import="connessione.UtenteBean"%>
<%@ page import="java.util.List"%>
<%@ page import="crud.LeggoValori"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<!-- Appo Adesso -->
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>News Letter Java-Base</title>
	<style type="text/css"></style>
	<link rel="stylesheet" type="text/css" href="CSS/tabella.css">
</head>

<body>

	<!-- :::::::::::::::::::FORM PER SCELTA GRUPPO::::::::::::::::::: -->
	<form action="">
		<table dir="ltr">
			<tr>
				<th>Scegli Gruppo di apprtenenza: <input type="text" name="gruppo"></th>
			</tr>
	
			<tr>
				<th><input type="submit" value="Scelta Gruppo"></th>
			</tr>
		</table>
	</form>
	
	<hr>

	<!-- :::::::::::::::::::FORM PER INVIO EMAIL::::::::::::::::::: -->
	<form action="posta/MailServlet">
		<table dir="ltr">
			<tr>
					
			  		<th>Mittente:<br>
			  		<input type="text" name="mittente" value="fulvio.bsd@gmail.com" /></th>
			</tr>

			<tr>
					<th style="color: red; font-size:25px;">Newsletter:</th>
					
			</tr>

		<tr>
<!-- 			<th>Email da Inviare:</th>	 -->
		<th>
		<%
		if(request.getParameter("gruppo")!=null) {
		    LeggoValori leggi = new LeggoValori();
			List<UtenteBean> list = leggi.getInvioMail(request.getParameter("gruppo"));
			Iterator<UtenteBean> listaIter = list.iterator();
			String appo="";
		      
				while (listaIter.hasNext()) {
					UtenteBean utente = new UtenteBean();
					utente = listaIter.next();
					
					if (appo == "") {
						appo = appo + utente.getEmail();
					} else {
						appo = appo+","+ utente.getEmail();
					}
				}
			%>
			<input type="text" size="80" maxlength="100" name="destinatario" value="<%=appo%>" />
			<%
			}
		    //System.out.println(request.getParameter("gruppo"));
			%>
		
			</th>
		</tr>
		<tr>
<!-- 			<th align="left">Oggetto:</th> -->
			<th>Oggetto:
			<br><input type="text" name="oggetto" size="80" maxlength="60"></th>
		</tr>
		
		<tr>
<!-- 			<th align="left">Teso:</th> -->
			<th>Testo:<br>
			<textarea name="contenuto" rows="10" cols="80" maxlength="1000"></textarea></th>
		</tr>	
		
		<tr>
<!-- 			<th></th> -->
			<th><input type="submit" value="Invia"></th>
		</tr>	
		</table>
	</form>

	<hr>

	<!-- :::::::::::::::::::FORM PER AGGIUNTA NUOVO UTENTE::::::::::::::::::: -->
	<form method="post" action="controllo/inseriscoController.jsp">
		<table dir="ltr">
			<tr>
				<th><a href="inseriscoValore.jsp?" target="_blank">Aggiungi Nuovo Utente</a></th>
			</tr>
			
		</table>
	</form>

</body>
</html>