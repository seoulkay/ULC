package pix.gdc.com.dao;


import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import pix.gdc.com.vo.TisRequest;



public class ApplicationMailer {
	String username = ""; 
	String password = "";
	public ApplicationMailer() {
		Properties prop = new Properties();
		InputStream input = null;

		try {

			//input = new FileInputStream("application.properties");
			input = getClass().getClassLoader().getResourceAsStream("/mail.properties");
			
			// load a properties file
			prop.load(input);

			// get the property value and print it out
			System.out.println(prop.getProperty("mail.id"));
			this.username = prop.getProperty("mail.id");
			this.password = prop.getProperty("mail.secret");

		} catch (IOException ex) {
			ex.printStackTrace();
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	
	public void sendGmail(TisRequest vo){
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		Session session = Session.getDefaultInstance(props,
			new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username, password);
				}
			});

		try {

			String msg = "<h3>"+vo.getFirst_name()+" "+vo.getLast_name()+"’s booking has been requested.</h3>" +
					"<table>"+
					"<tr><td><strong>Title</strong></td><td>"+vo.getReq_title()+"</td></tr>"
					+ "<tr><td><strong>First Name</strong></td><td>"+vo.getFirst_name()+"</td></tr>"
					+ "<tr><td><strong>Last Name</strong></td><td>"+vo.getLast_name()+"</td></tr>"
					+ "<tr><td><strong>Email Address</strong></td><td>"+vo.getEmail()+"</td></tr>"
					+ "<tr><td><strong>Travel Purpose</strong></td><td>"+vo.getEvent_name()+"</td></tr>"
					+ "<tr><td><strong>Travel Venue</strong></td><td>"+vo.getVenue_name()+"</td></tr>"
					+ "<tr><td><strong>Local Contact</strong></td><td>"+vo.getLocal_contact()+"</td></tr>"
					+"</table>"
					+ "<br><h4>Arrive to Incheon Airport</h4><table>"
					+ "<tr><td><strong>Date & Time</strong></td><td>"+vo.getArrive_stmp()+"</td></tr>"
					+ "<tr><td><strong>Flight No</strong></td><td>"+vo.getArrive_flight()+" "+vo.getArrive_flight_name()+"</td></tr>"
					+ "</table>"
					+ "<h4>Leave from Incheon Airport</h4>"
					+ "<table>"
					+ "<tr><td><strong>Date & Time</strong></td><td>"+vo.getLeave_stmp()+"</td></tr>"
					+ "<tr><td><strong>Flight No</strong></td><td>"+vo.getLeave_flight()+" "+vo.getLeave_flight_name()+"</td></tr>"
					+ "</table>"
					+ "<table>"
					+ "<tr>This is an automatically generated email, please do not reply.</tr>"
					+ "</table>";

			String ccString = "dl-kr-pyc-admin@atos.net";
			//실제 사용할때 코멘트 지우기
			//ccString = ccString + ", " +vo.getLocal_contact_email();
					
			InternetAddress[] myCcList = InternetAddress.parse(ccString);
			
			Message message = new MimeMessage(session);
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(vo.getEmail()));
			message.setRecipients(Message.RecipientType.CC,myCcList);
			message.setSubject("Booking request");
			message.setContent(msg, "text/html; charset=utf-8");
			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
}
