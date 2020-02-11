package org.kh.member.model.vo;

import javax.mail.PasswordAuthentication;
import javax.mail.Authenticator;

/**
* @author viper9
*
*/
public class SMTPAuthenticator extends Authenticator {
   
	PasswordAuthentication pa;
	
	public SMTPAuthenticator() {
		String username = "kimby1219@gmail.com";
		String password = "lyng@15963";
	
       pa = new PasswordAuthentication(username, password);
   }

   public PasswordAuthentication getPasswordAuthentication() {
       return pa;
   }
};

