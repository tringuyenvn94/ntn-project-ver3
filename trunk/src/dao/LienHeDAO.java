package dao;

import handle.MyConnection;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import entity.LienHeEntity;

public class LienHeDAO {

	
	public static void sendMail(LienHeEntity lh) throws MessagingException {
		String fullName = lh.getFullName();
		String email = lh.getEmail();
		String phone = lh.getPhone();
		String contact = lh.getContact();
		String content = lh.getContent();
		
		// Táº¡o email session
				Properties p = new Properties();
				p.put("mail.smtp.auth", "true");
				p.put("mail.smtp.starttls.enable", "true");
				p.put("mail.smtp.host", "smtp.gmail.com");
				p.put("mail.smtp.port", "587");
				Session session = Session.getInstance(p,
						new javax.mail.Authenticator() {
							protected PasswordAuthentication getPasswordAuthentication() {
								return new PasswordAuthentication("groupntn@gmail.com",
										"dienthoainokia");
							}
						});
				MimeMessage message = new MimeMessage(session);

				
					// táº¡o ná»™i dung cá»§a mail nguyễn 
					message.setSubject("Sent From " + email, "utf8");
					
					message.setText(content + "\n \t " + fullName + "\n \t" + email + "\n \t" + phone+ "\n \t" + contact, "utf8");

					// Táº¡o thÃ´ng tin ngÆ°á»�i nháº­n mail
					message.setFrom(new InternetAddress());
					message.setRecipients(Message.RecipientType.TO, "groupntn@gmail.com");

					// PhÆ°Æ¡ng thá»©c Ä‘á»ƒ gá»­i mail Ä‘i
					Transport.send(message);
			
	}
	
	
	
	public static void LuuLienHe(LienHeEntity lh) {
		
		int[] indexes = {1, 2, 3, 4, 5, 6, 7, 8};
		Object[] values = {lh.getFullName(), lh.getEmail(), lh.getPhone(), lh.getAddress(), lh.getCompany(), lh.getContact(), lh.getContent(), new Date()};
		String sql = "INSERT INTO LIENHE(fullname, email,phone, address, company, contact, content, date) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
		MyConnection.myConn.insert(sql, indexes, values);
	}
}
