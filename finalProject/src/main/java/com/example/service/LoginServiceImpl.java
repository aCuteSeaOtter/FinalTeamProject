package com.example.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.dao.LoginDAO;
import com.example.domain.LoginVO;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	private LoginDAO loginDAO;
	 
	
	 
	@Override
	@Transactional 
	public void registForm(LoginVO loginVO) {
		loginDAO.registForm(loginVO);
		 
	}

	@Override
	public void updateForm(LoginVO loginVO) {
		
		 
	}

	@Override
	public void deleteForm(LoginVO loginVO) {
	
		
	}

	@Override
	public void savecontact(LoginVO loginVO) {

	}

	public LoginVO checkLogin(LoginVO loginVO) {
		System.out.println("파라미터:" + loginVO);
		LoginVO result1 = loginDAO.checkLogin(loginVO);
		System.out.println("결과:" +result1);
		
	
		// 사용자 입력 정보로 DB에서 사용자 정보 조회
		LoginVO result = loginDAO.checkLogin(loginVO);
		if (result != null) {
		    System.out.println("DB에서 가져온 사용자 정보: " + result);
		    // DB에 저장된 비밀번호와 사용자 입력 비밀번호 비교
		    if (result.getMember_pass().equals(loginVO.getMember_pass())) {
		    	System.out.println("!" + result);
		        return result; // 로그인 성공
		    } else {
		    	System.out.println("불일치");
		        return null; // 비밀번호 불일치
		    }
		} else {
		    return null; // 사용자 정보가 없음
		}
    
	}
	@Override
	public void insertkakao(LoginVO memberVO) {
						
}
}