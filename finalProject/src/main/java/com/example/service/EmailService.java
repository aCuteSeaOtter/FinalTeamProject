package com.example.service;

public interface EmailService {

	void sendEmail(String to, String subject, String text);
	
	 String generateAuthCode();

	  void storeCode(String email, String code);
	 
	  boolean validateCode(String email, String code);
	  
	  String generateTemporaryPassword();
	  //String updateTemporaryPassword();
}
