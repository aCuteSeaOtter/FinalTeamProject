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
	
	
	private static final String API_URL = "https://kapi.kakao.com/v2/user/me";
	 
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

/*	@Override
	public MemberVO loginForm(MemberVO membervo) {
		return memberDAO.loginForm(membervo);
	}*/

	@Override
	public void savecontact(LoginVO loginVO) {

	}

	public LoginVO checkLogin(LoginVO loginVO) {
		/*System.out.println("파라미터:" + loginVO);
		LoginVO result = loginDAO.checkLogin(loginVO);
		System.out.println("결과:" +result);
		return result;*/
		
		// 사용자 입력 정보로 DB에서 사용자 정보 조회
		LoginVO result = loginDAO.checkLogin(loginVO);
		System.out.println("확인"+loginVO);
		if (result != null) {
            // DB에 저장된 비밀번호와 사용자 입력 비밀번호 비교
            if (result.getMember_pass().equals(loginVO.getMember_pass())) {
                return result; // 로그인 성공
            } else {
                return null; // 비밀번호 불일치
            }
        } else {
            return null; // 사용자 정보가 없음
        }
    
	}

    @Override
    public LoginVO findkakao(String memberEmail, String memberPass, String memberNickname) {
       
    	LoginVO member = loginDAO.findkakao(memberEmail, memberPass, memberNickname);
    	return member;
    }

 
    
    

    @Override
    public String getAccessToken(String authorize_code) {
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
            sb.append("&redirect_uri=http://localhost:8081/login/oauth2/code/kakao"); // 등록한 리다이렉트 URI
            sb.append("&code=" + authorize_code);
            bw.write(sb.toString());
            bw.flush();

            int responseCode = conn.getResponseCode();
            System.out.println("responseCode : " + responseCode);

            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line;
            StringBuffer response = new StringBuffer();
            while ((line = br.readLine()) != null) {
                response.append(line);
            }
            br.close();

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
		public String getUserInfo(String accessToken, HttpSession session, RedirectAttributes rttr) {
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

            // 여기서 필요한 사용자 정보를 가공하거나 반환
            return "User ID: " + userId + ", Nickname: " + nickname;
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


		@Override
		public void insertkakao(LoginVO memberVO) {
						
		}

		@Override
		public void saveKakaoMember(String email, String nickname) {
			// TODO Auto-generated method stub
			
		}

/*		@Override
		public void saveKakaoMember(String email, String nickname) {
				MemberVO member = new MemberVO();
				member.setMemberEmail(email);
				member.setMemberNickname(nickname);
				
				memberDAO.saveKakaoMember(email, nickname);
		}
*/
		

		
}