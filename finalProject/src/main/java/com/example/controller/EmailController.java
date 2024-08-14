package com.example.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.service.EmailService;



import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/auth")
public class EmailController {

	
	   private final EmailService emailService;
	
	   @PostMapping("/send-email")
	    public String sendEmail(@RequestParam String email) {
	      
		   try {
		   	String code = emailService.generateAuthCode();
	        emailService.storeCode(email, code);
	        String subject = "Your authentication code";
	        String text = "Your authentication code is: " + code;
	        emailService.sendEmail(email, subject, text);
	        return "Verification email sent";
		   }catch(Exception e) {
			   e.printStackTrace();
			   return "FAILED";
		   }
		   }
	   
	   @PostMapping("/verify-code")
	    public String verifyCode(@RequestParam String email, @RequestParam String code) {
	        boolean isValid = emailService.validateCode(email, code);
	        if (isValid) {
	            return "Code is valid";
	        } else {
	            return "Invalid code";
	        }
	    }
	
	   @PostMapping("/verify-reset-code")
	   public ResponseEntity <String> verifyResetCode(@RequestParam String email, @RequestParam String code) {
	       boolean isValid = emailService.validateCode(email, code);
	       if (isValid) {
	           String temporaryPassword = emailService.generateTemporaryPassword();
	           emailService.sendEmail(email, "Your temporary password", "Your temporary password is: " + temporaryPassword);
	           
	           // Save the temporary password in the database (encrypted)
	           //userService.updateTemporaryPassword(email, temporaryPassword);

	           return ResponseEntity.ok("임시 비밀번호가 이메일로 발송되었습니다");
	       } else {
	           return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Invalid code");
	       }
	   }
	   
	   
	   
	   
}
