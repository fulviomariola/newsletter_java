<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,java.text.*"%>
<%@ page import="crud.InserisciValori" %>

<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	</head>
		<body>

<%
String id = request.getParameter("id");
String nome=request.getParameter("nome");
String cognome=request.getParameter("cognome");
String gruppo=request.getParameter("gruppo");
String email=request.getParameter("email");
String invio = request.getParameter("invio");

InserisciValori inserisco = new InserisciValori();
inserisco.inseriscoValore(id, nome, cognome, gruppo, email, invio);

%>

<script type="text/javascript">window.location.href="http://localhost:8080/java_base_nl/inseriscoValore.jsp"</script>
		</body>
</html>




