<%@page import="crud.CancellaValori"%>
<%@page import="crud.ModificaValori"%>
<%@page import="connessione.UtenteBean"%>
<%@page import="crud.InserisciValori"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Cancella</title>
		<style type="text/css"></style>
		<link rel="stylesheet" type="text/css" href="CSS/tabella.css">
	</head>
	
	<body>
	
		<%
		int id = Integer.parseInt(request.getParameter("id"));
		CancellaValori cancella = new CancellaValori();
		cancella.cancellaValore(id);
		%>
		
		<script type="text/javascript">
		window.location.href="http://localhost:8080/java_base_nl/inseriscoValore.jsp"
		</script>
	
	</body>
</html>