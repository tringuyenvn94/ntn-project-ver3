package dao;

import handle.MyConnection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class QuenMKDAO {
	public static boolean sendMail(String email) {
		try {
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
			message.setSubject("NTN-Quên Mật Khẩu", "utf8");

			String text = "Dear, " + getInfo(email)
					+ "\n Mật khẩu mới của bạn là: 6shbjp1"
					+ "\n                           NTN Group.";

			message.setText(text, "utf8");

			// Táº¡o thÃ´ng tin ngÆ°á»�i nháº­n mail
			message.setFrom(new InternetAddress());
			message.setRecipients(Message.RecipientType.TO, email);

			// PhÆ°Æ¡ng thá»©c Ä‘á»ƒ gá»­i mail Ä‘i
			Transport.send(message);
			resetPassword(email);
			return true;
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		return false;
	}

	public static void resetPassword(String email) {
		String sql = "UPDATE USER SET password = ? WHERE username = ?";
		int[] indexes = { 1, 2 };
		String[] values = { "6shbjp1", getInfo(email) };
		MyConnection.myConn.update(sql, indexes, values);
	}

	private static String getInfo(String email) {
		String sql = "SELECT username FROM USER WHERE email = ?";
		ResultSet rs = MyConnection.myConn.getResultSet(sql, email);
		if (rs != null) {
			String username = "";
			try {
				while (rs.next()) {
					username = rs.getString(1);
				}
				return username;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return "Không tồn tại email";
	}
}
