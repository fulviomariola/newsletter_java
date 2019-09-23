<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*,java.text.*,connessione.ConnessioneDB"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Show Tables</title>
	<link rel="stylesheet" type="text/css" href="CSS/tabella.css">
</head>

<body>
    <%
    try
    {
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsletter", "root", "fu76ro5");
    	Statement st = conn.createStatement();
   		ResultSet rs = st.executeQuery("select * from gruppo;");
   		
    %>
    
    <table border=1 style="text-align:center">
      <thead>
          <tr>
             <th>ID</th>
             <th>Nome</th>
             <th>Cognome</th>
             <th>Gruppo di Appartenenza</th>
             <th>Email</th>
             <th>Invio</th>        
          </tr>
      </thead>
      <tbody>
        <%while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getString("id") %></td>
                <td><%=rs.getString("nome") %></td>
                <td><%=rs.getString("cognome") %></td>
                <td><%=rs.getString("gruppo") %></td>
                <td><%=rs.getString("email") %></td>
                <td><%=rs.getString("invio") %></td>
            </tr>
            <% }
        		st.close();
        		conn.close();
        	%>
           </tbody>
        </table><br>
    <% }
    catch(Exception e){
    	
        out.print(e.getMessage());%><br><%
    }
    /*
    finally {
        st.close();
        conn.close();
    } */
    %>
</body>

</html>