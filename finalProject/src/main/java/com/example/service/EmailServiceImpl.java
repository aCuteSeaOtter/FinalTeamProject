package com.example.service;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailServiceImpl implements EmailService {

	@Autowired
    private JavaMailSender emailSender;
	
	  private final Map<String, String> emailCodeMap = new HashMap();
	    private final Random random = new Random();

    public void sendSimpleMessage(String to, String subject, String text) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("bin2dak@naver.com");
        message.setTo(to);
        message.setSubject(subject);
        message.setText(text);
        emailSender.send(message);
    }



	@Override
	public String generateAuthCode() {
	
		return String.format("%06d", random.nextInt(1000000));
	}

	@Override
	public void storeCode(String email, String code) {
		 emailCodeMap.put(email, code);
		
	}

	@Override
	public boolean validateCode(String email, String code) {
		 return code.equals(emailCodeMap.get(email));
		
	}



	@Override
	public void sendEmail(String to, String subject, String text) {
		  SimpleMailMessage message = new SimpleMailMessage();
	        message.setFrom("bin2dak@naver.com");
	        message.setTo(to);
	        message.setSubject(subject);
	        message.setText(text);
	        emailSender.send(message);
		
	}



	@Override
	public String generateTemporaryPassword() {
		
		return String.format("%06d", random.nextInt(1000000));
	}
	
   
	
}
	
	

