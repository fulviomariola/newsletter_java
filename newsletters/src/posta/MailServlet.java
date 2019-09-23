package posta;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.MessagingException;
//import javax.mail.*;
import posta.MailUtility;

public class MailServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public MailServlet() {
		super();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String mitt = request.getParameter("mittente");
		String dest = request.getParameter("destinatario");
		String oggetto = request.getParameter("oggetto");
		String contenuto = request.getParameter("contenuto");
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String messaggio = "";

		try {
			MailUtility.sendMail(dest, mitt, oggetto, contenuto);
			System.out.println(dest);

			messaggio = "La email è stata inviata con successo";
			
			

		} catch (MessagingException exc) {
			messaggio = "Ci sono stati errori nella email, controlla il mittente!";
			out.println("Invio non riuscito!");
			exc.printStackTrace();
			log("MessagingException: " + dest);
			log(exc.toString());
		} catch (Exception exc) {
			messaggio = "Ci sono stati errori nella email, controlla il mittente!";
			out.println("Invio non riuscito!");
			exc.printStackTrace();
			log("Exception: " + dest);
			log(exc.toString());
		} finally {
			request.setAttribute("messaggio", messaggio);
            getServletContext().getRequestDispatcher("/risultato.jsp").forward(
                    request, response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
}
