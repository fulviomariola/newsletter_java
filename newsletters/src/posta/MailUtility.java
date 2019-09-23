package posta;

//import javax.mail.
import javax.mail.Session;
import javax.mail.Message;
import javax.mail.Transport;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import java.util.Properties;

public class MailUtility {
	private static final String PASS = "xrvdrkjzmzeadlfl";
	static final String DA_NOME = "Corso Java";
	
	public static void sendMail(String dest, String mitt, String oggetto, String contenuto) throws MessagingException { 
		
		// Creazione di una mail session
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587"); 
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true"); // TLS:::::
		
		System.out.println(dest);
		Session session = Session.getInstance(props, 
				new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(mitt, PASS);
            }
        }
				);

		
		try {
			// Creazione del messaggio da inviare
			MimeMessage message = new MimeMessage(session);
			//InternetAddress fromAddress = new InternetAddress(mitt);
			message.setFrom(new InternetAddress(mitt,DA_NOME));
			InternetAddress[] toAddress = InternetAddress.parse(dest);
			message.setSubject(oggetto);
			message.setText(contenuto);
			
			//message.setContent(testoEmail, "txt/html");
			
	
			// Aggiunta degli indirizzi del mittente e del destinatario
			// BCC Per conoscenza nascosta
			message.setRecipients(Message.RecipientType.BCC, toAddress);
	
			// Invio del messaggio
			Transport.send(message);
		} 
		catch (MessagingException e) {
			e.printStackTrace();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}