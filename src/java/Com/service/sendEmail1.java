package Com.service;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class sendEmail1 {

    Properties emailProperties;
    Session mailSession;
    MimeMessage emailMessage;

    public static void main(String args[]) throws AddressException,
            MessagingException {
        sendEmail1 javaEmail = new sendEmail1();
        javaEmail.setMailServerProperties();
        javaEmail.createEmailMessage();
        javaEmail.sendEmail();
    }

    public void setMailServerProperties() {
        String emailPort = "587";//gmails smtp port
        emailProperties = System.getProperties();
//                emailProperties.setProperty("mail.smtp.localhost", "www.wecareenterprises.co.in");
        emailProperties.put("mail.smtp.port", emailPort);
        emailProperties.put("mail.smtp.auth", "true");
//                for webmail
        emailProperties.put("mail.smtp.starttls.enable", "false");
//                for gmail
//		emailProperties.put("mail.smtp.starttls.enable", "true");
    }

    public void createEmailMessage() throws AddressException,
            MessagingException {
        String[] toEmails = {"akshaypol91@gmail.com"};
        String emailSubject = "Java Email";
        String emailBody = "This is an email sent by JavaMail api.";
        mailSession = Session.getDefaultInstance(emailProperties, null);
        emailMessage = new MimeMessage(mailSession);
        for (int i = 0; i < toEmails.length; i++) {
            emailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmails[i]));
        }
        emailMessage.setSubject(emailSubject);
        emailMessage.setContent(emailBody, "text/html");//for a html email
        //emailMessage.setText(emailBody);// for a text email
    }

    public void sendEmail() throws AddressException, MessagingException {
//	for gmail	
//            String emailHost = "smtp.gmail.com";
//		String emailHost = "103.235.105.29";
        String emailHost = "wecareenterprises.co.in";
        String fromUser = "admin@wecareenterprises.co.in";//just the id alone without @gmail.com
//		String fromUser = "akshaypol91@gmail.com";//just the id alone without @gmail.com
        String fromUserEmailPassword = "Adminuse@123";
//		String fromUserEmailPassword = "Nilamakshay";
        Transport transport = mailSession.getTransport("smtp");
        transport.connect(emailHost, fromUser, fromUserEmailPassword);
        transport.sendMessage(emailMessage, emailMessage.getAllRecipients());
        transport.close();
        System.out.println("Email sent successfully.");
    }
}
