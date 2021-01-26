/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Com.service;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

/**
 *
 * @author akki
 */
public class sendEmail {

    public static void mailsend(String email, String key, String subject) {

        String to = email;
        String message1 = key;
        String Subject = subject;
        String name = message1;

      // Sender's email ID needs to be mentioned
        String from = "wecareenterprises01@gmail.com";
        final String username = "wecareenterprises01@gmail.com";//change accordingly
        final String password = "wecareenterprises@123";//change 

        // for gmail
          String host = "smtp.gmail.com";
        //for domain mail
//        String host = "wecareenterprises.co.in";
        // Get system properties
        //for online
        Properties properties = new Properties();
//        properties.put("mail.smtp.auth", "true");
//        properties.put("mail.smtp.starttls.enable", "true");
//        properties.put("mail.smtp.host", host);
//        properties.put("mail.smtp.port", "587");

        //for webmail
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        // Setup mail server
        properties.setProperty("smtp.gmail.com", host);

        // Get the default Session object.
        Session session = Session.getInstance(properties,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        try {
            // Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(session);

            // Set From: header field of the header.
            message.setFrom(new InternetAddress(from));

            // Set To: header field of the header.
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));

            // Set Subject: header field
            message.setSubject(subject);

            // Send the actual HTML message, as big as you like
            // Send message
            MimeBodyPart messageBodyPart = new MimeBodyPart();

            Multipart multipart = new MimeMultipart();

            messageBodyPart = new MimeBodyPart();
//        String file = "path of file to be attached";
//        String fileName = "attachmentName";
//        DataSource source = new FileDataSource(file);
//        messageBodyPart.setDataHandler(new DataHandler(source));
//        messageBodyPart.setFileName(fileName);
            messageBodyPart.setText(key);
            multipart.addBodyPart(messageBodyPart);

            message.setContent(multipart);

            System.out.println("Sending");
            Transport.send(message);
            System.out.println("Sent message successfully....");
        } catch (MessagingException mex) {
            mex.printStackTrace();
        }
    }

    public static void main(String[] args) {

     
//        String subject = "Anicept | Registration Successfull.";
//         String regMsg =      "Hi there "+
//                             "\n Thank you for joining with us"+
//                             "\n Your Login Details Are "+
//                          
//                             "\n\n\n\n\n \t\t Thank You,"+
//                             "\n Please Visit Our WebSite: http//www.anicept.com";
//         new mailsend().mailsend("gauravkmanu@gmail.com", regMsg, subject);
    }
}

