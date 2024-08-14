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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.dao.LoginDAO;
import com.example.domain.LoginVO;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;


import jakarta.servlet.http.HttpSession;


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
	
	
	
	

	/*@Override
	public LoginVO findkakao(String member_email, String member_nickname, String member_pass) {
		LoginVO member = loginDAO.findkakao(member_email, member_pass, member_nickname);
    	return member;
}

	@Override
	public String getAccessToken(String code) {
		
		   String access_Token = "";
	        String refresh_Token = "";
	        String reqURL = "https://kauth.kakao.com/oauth/token";

	        try {
	            URL url = new URL(reqURL);
	            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

	            conn.setRequestMethod("POST");
	            conn.setDoOutput(true);

	            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
	            StringBuilder sb = new StringBuilder();
	            sb.append("grant_type=authorization_code");
	            sb.append("&client_id=93f73b822defadc4b387046b57697917");  // 발급받은 클라이언트 ID
	            sb.append("&redirect_uri"
	            		+ "=http://localhost:8081/kakao/callback"); // 등록한 리다이렉트 URI
	            sb.append("&code=" + code);
	            bw.write(sb.toString());
	            bw.flush();

	            int responseCode = conn.getResponseCode();
	            System.out.println("responseCode : " + responseCode);

	            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	            String line = "";
	            StringBuffer response = new StringBuffer();
	            while ((line = br.readLine()) != null) {
	                response.append(line);
	            }
	           // br.close();

	            JsonParser parser = new JsonParser();
	            JsonElement element = parser.parse(response.toString());

	            access_Token = element.getAsJsonObject().get("access_token").getAsString();
	            refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();

	            System.out.println("access_token : " + access_Token);
	            System.out.println("refresh_token : " + refresh_Token);

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return access_Token;
	    }

	@Override
	public LoginVO getUserInfo(String accessToken, HttpSession session, RedirectAttributes rttr) {
		HashMap<String, Object> userInfo = new HashMap<>();
        //	log.info("getuserinfo()");
        	
      	try {
        // HTTP 요청 설정
      		String API_URL = "https://kapi.kakao.com/v2/user/me";
        URL url = new URL(API_URL);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Authorization", "Bearer " + accessToken);

        // 응답 코드 확인
        int responseCode = conn.getResponseCode();
        if (responseCode == HttpURLConnection.HTTP_OK) {
            // 응답 본문 읽기
            BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
            in.close();

            // JSON 파싱
            JsonParser parser = new JsonParser();
            JsonObject jsonResponse = parser.parse(response.toString()).getAsJsonObject();

            // 사용자 정보 추출 예시
            String userId = jsonResponse.getAsJsonObject("kakao_account").getAsJsonPrimitive("email").getAsString();
            String nickname = jsonResponse.getAsJsonObject("properties").getAsJsonPrimitive("nickname").getAsString();
            // LoginVO 객체 생성 및 정보 설정
            LoginVO loginVO = new LoginVO();
            String email = null;
           	loginVO.setMember_email(email);
            loginVO.setMember_nickname(nickname);
            // 여기서 필요한 사용자 정보를 가공하거나 반환
           return loginVO;
        } else {
            // 오류 처리
            System.out.println("HTTP error code: " + responseCode);
            return null; // 오류 발생 시 예외 처리 필요
        }
    } catch (Exception e) {
        e.printStackTrace();
        return null; // 예외 처리
    }
		}	
	*/
	
	/*	@Autowired
	private JavaMailSender sender;
	
	public boolean sendEmail(String toAddress, String subject, String body) {
		System.out.println(toAddress+"보낼주소");
		
		MimeMessage message = sender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		try {
			helper.setTo(toAddress);//보낼주소
			helper.setSubject(subject);//제목
			helper.setText(body);//내용
		}catch(MessagingException e) {
			e.printStackTrace();
			System.out.println(toAddress+"전송실패");
			return false;
		}
		sender.send(message);
		System.out.println(toAddress+"전송");
		return true;
	}
	   @Override
	    public boolean processRandomNumber(String email, int num) {
	       try {
		   String randomNum = loginService.GetRandomNum(num);
	        if (loginService.updateRandom(email, randomNum)) {
	            return sendEmail(email, "인증번호", "인증번호: " + randomNum);
	        }
	      }catch(Exception e) {
	    	  e.printStackTrace();
	      }
	        
	        return false;
	    }*/

/*	@Override
	public String GetRandomNum(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateRandom(String email, String randomNum) {
		// TODO Auto-generated method stub
		return false;
	}
*/

}