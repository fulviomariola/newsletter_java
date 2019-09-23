<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.sql.*,java.util.*,java.text.*"%>
<%@ page import="crud.LeggoValori"%>
<%@ page import="crud.InserisciValori"%>
<%@ page import="connessione.UtenteBean" %>

<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	</head>
		<body>
		
		
		<%
		

 			//System.out.println(request.getParameter("gruppo"));
		    LeggoValori leggi = new LeggoValori();
			List<UtenteBean> list = leggi.getInvioMail(request.getParameter("gruppo"));
			
			Iterator<UtenteBean> listaIter = list.iterator();
			while (listaIter.hasNext()) {
				UtenteBean utente = new UtenteBean();
				utente = listaIter.next();
			}
		%>

<%
// String id = request.getParameter("id");
// String nome=request.getParameter("nome");
// String cognome=request.getParameter("cognome");
// String gruppo=request.getParameter("gruppo");
// String email=request.getParameter("email");
// String invio = request.getParameter("invio");

// InserisciValori inserisco = new InserisciValori();
// inserisco.inseriscoValore(id, nome, cognome, gruppo, email, invio);

%>

<script type="text/javascript">window.location.href="http://localhost:8080/java_base_nl/index.jsp"</script>
		</body>
</html>











