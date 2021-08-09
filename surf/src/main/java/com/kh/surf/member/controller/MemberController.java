package com.kh.surf.member.controller;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;
import com.google.gson.Gson;
import com.kh.surf.lecture.model.vo.Chapter;
import com.kh.surf.member.model.service.MemberService;
import com.kh.surf.member.model.vo.Member;
import com.kh.surf.teacher.model.vo.Teacher;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	/** @author 최서경
	 * 회원 로그인
	 */
	@RequestMapping("login.me")
	public ModelAndView memberLogin(Member m, HttpSession session, ModelAndView mv) {

		Member loginUser = mService.loginMember(m);

		if(loginUser != null&&bcryptPasswordEncoder.matches(m.getPassword(), loginUser.getPassword())) {

			session.setAttribute("loginUser", loginUser);
			session.setAttribute("alertMsg", loginUser.getNickname() + "님 환영합니다!");
			mv.setViewName("redirect:/");
			
		} else {
			mv.addObject("errorMsg", "로그인 실패!");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	/** @author 최서경
	 * 회원 로그아웃
	 */
	@RequestMapping("logout.me")
	public String memberLogout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
	/** @author 최서경
	 * 회원가입 화면 포워딩
	 */
	@RequestMapping("enrollForm.me")
	public String memberEnrollForm() {
		
		return "member/memberEnrollForm";	
	}
	
	/** @author 최서경
	 * 회원 가입
	 */
	@RequestMapping("insert.me")
	public ModelAndView insertMember(Member m, ModelAndView mv, HttpSession session) {
		
		if(m.getPassword() != null) {
			// 비밀번호 암호화 후 m의 password 필드에 담기
			m.setPassword(bcryptPasswordEncoder.encode(m.getPassword()));
		}
		
		// 닉네임 필드 값 설정
		String nickName = m.getEmail().substring(0, m.getEmail().indexOf("@"));
		m.setNickname(nickName);
		
		int result = mService.insertMember(m);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "회원가입이 성공적으로 완료되었습니다.");
			session.removeAttribute("kUser");
			mv.setViewName("member/memberEnrollSuccess");
			
		} else {
			mv.addObject("errorMsg", "회원가입 실패ㅠㅠ");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	/** @author 최서경
	 * 회원가입 아이디 중복체크
	 */
	@ResponseBody
	@RequestMapping("idCheck.me")
	public String idCheck(String userId) {
		int result = mService.idCheck(userId);
		
		return result > 0? "NN" : "YY";
	}
	
	/** @author 최서경
	 * 마이페이지 포워딩
	 */
	@RequestMapping("myPage.me")
	public String myPage() {

		return "member/myPage";
	}
	
	/** @author 최서경
	 * 마이페이지 회원정보 수정
	 */
	@ResponseBody
	@RequestMapping(value="updateInfo.do", produces="application/json; charset=utf-8")
	public String updateMemInfo(Member m, HttpSession session) {
		
		int result = mService.updateMemInfo(m);
		
		Member updateUser = mService.loginMember(m);
		session.setAttribute("loginUser", updateUser);
		
		return new Gson().toJson(updateUser);
	}
	
	/** @author 최서경
	 * 마이페이지 비밀번호변경 시 현재 비밀번호 확인
	 */
	@ResponseBody
	@RequestMapping(value="pwdCheck.me")
	public String pwdCheck(String oldPwd, HttpSession session) {
		
		String encPwd = ((Member)session.getAttribute("loginUser")).getPassword();
		
		return bcryptPasswordEncoder.matches(oldPwd, encPwd)? "YY" : "NN";
	}
	
	/** @author 최서경
	 * 마이페이지 비밀번호 변겅
	 */
	@ResponseBody
	@RequestMapping("updatePwd.do")
	public String updateMemPwd(Member m, HttpSession session) {
		//새 비밀번호 암호화
		String newEncPwd = bcryptPasswordEncoder.encode(m.getPassword());
		
		m.setPassword(newEncPwd);
		
		int result = mService.updateMemPwd(m);
		//loginUser의 비밀번호 바꿔주기
		((Member)session.getAttribute("loginUser")).setPassword(newEncPwd);
		
		return result>0? "YYY" : "NNN";
	}
	
	/** @author 최서경
	 * 회원탈퇴화면 포워딩
	 */
	@RequestMapping("deleteView.me")
	public String deleteView() {
		return "member/deleteMember";
	}
	
	/** @author 최서경
	 * 회원탈퇴
	 */
	@RequestMapping("delete.me")
	public ModelAndView deleteMember(Member m, HttpSession session, ModelAndView mv) {
		
		// 1. 전달받은 객체에 비밀번호 있을 때 => 로컬로 가입했을 때 
		if(m.getPassword() != null) {
			// 암호화된 비밀번호
			String encPwd = ((Member)session.getAttribute("loginUser")).getPassword();
	
			if(bcryptPasswordEncoder.matches(m.getPassword(), encPwd)){
				int result = mService.deleteMember(m.getUserNo());
				
				if(result>0) {
					session.removeAttribute("loginUser");
					mv.setViewName("member/deleteMemberSuccess");
				} else {
					mv.addObject("errorMsg", "회원탈퇴 실패ㅠ").setViewName("common/errorPage");
				}
				
			} else {
				session.setAttribute("alertMsg", "비밀번호가 일치하지 않습니다.");
				mv.setViewName("redirect:deleteView.me");
			}
		// 2. 전달받은 객체에 비밀번호 없을 때 => SNS로 가입했을 때	
		} else {
			int result = mService.deleteMember(m.getUserNo());
			
			if(result>0) {
				session.removeAttribute("loginUser");
				mv.setViewName("member/deleteMemberSuccess");
			} else {
				mv.addObject("errorMsg", "회원탈퇴 실패ㅠ").setViewName("common/errorPage");
			}			
		}
		return mv;
	}
	/************************** 비밀번호 찾기(이메일 전송) *******************************/
	
	/** @author 최서경
	 * 비밀번호 찾기
	 */
	@RequestMapping("findPwdForm.me")
	public String findAcc() {
		
		return "member/findIdPwd";
	}
	
	
	/** @author 최서경
	 * 비밀번호 찾기 - 메소드 호출
	 */
	//get방식
	@RequestMapping(value="findPwd.me", method = RequestMethod.GET)
	public void findPwdGET() throws Exception{	}

	//post방식
	@RequestMapping(value="findPwd.me", method = RequestMethod.POST)
	public void findPwdPOST(String userId, HttpServletResponse response) throws Exception{
		findPwd(response, userId);
	}
	
	/** @author 최서경
	 * 비밀번호 찾기 - 이메일 가입여부 확인 및 임시 비밀번호 생성
	 */
	public void findPwd(HttpServletResponse response, String userId) throws Exception {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//가입된 이메일이 없을 경우
		if(mService.idCheck(userId) == 0) {
			out.print("등록되지 않은 아이디입니다.");
			out.close();
			
		} else {
			// 임시 비밀번호 생성
			String pw = "";
			for(int i = 0; i < 12; i++) {
				pw += (char)((Math.random() * 26) + 97);
			}
			
			Member m = new Member();
			m.setEmail(userId);
			m.setPassword(pw);
			
			// 비밀번호 변경 메일 발송
			sendEmail(m, "findPwd");
			
			// 비밀번호 암호화
			m.setPassword(bcryptPasswordEncoder.encode(pw));
			// DB의 비밀번호 변경
			mService.updateMemPwd(m);
			
			out.print("이메일로 임시 비밀번호를 발송하였습니다");
			out.close();
		}
	}

	
	/** @author 최서경
	 * 비밀번호 찾기 - 이메일 발송
	 */
	public void sendEmail(Member m, String str) throws Exception {
		// Mail Server설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.gmail.com"; // 네이버는 smtp.naver.com
		String hostSMTPid = "surfer79790@gmail.com";	// 서버 이메일 주소(보내는사람 이메일 주소)
		String hostSMTPpwd = "surfonhobby"; // 서버 이메일 비번(보내는 사람 이메일 비번)
		
		// 보내는 사람 이메일, 제목, 내용
		String fromEmail = "admin@surf.com"; // 보내는 사람 이메일 주소(받는 사람 이메일에 표시됨)
		String fromName = "SURF 관리운영팀"; // 프로젝트이름 또는 보내는 사람 이름
		String subject = ""; // 이메일 제목(밑에서 작성)
		String msg = ""; // 이메일 내용(밑에서 작성)
		
		if(str.equals("findPwd")) {
			subject = "SURF 임시 비밀번호입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana;'>";
			msg += "<h3 style='color: blue;'>";
			msg += m.getEmail() + "님의 임시 비밀번호입니다. 반드시 비밀번호를 변경해주세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += m.getPassword() + "</p></div>";
		}
		
		// 받는 사람 이메일 주소
		String mail = m.getEmail();
		
		HtmlEmail email = new HtmlEmail();
		email.setDebug(false); // 디버그 콘솔에 출력되게 하려면 true로 설정
		email.setCharset(charSet);
		email.setSSL(true);
		email.setHostName(hostSMTP);
		email.setSmtpPort(465); // 네이버는 587
		
		email.setAuthentication(hostSMTPid, hostSMTPpwd);
		email.setTLS(true);
		email.addTo(mail);
		email.setFrom(fromEmail, fromName, charSet);
		email.setSubject(subject);
		email.setMsg(msg);
		email.send();
	}
	
	/******************************* 카카오 ***********************************/
	/** @author 최서경
	 * 카카오계정으로 로그인
	 * @param code
	 */
	@RequestMapping(value = "klogin.do", produces = "application/json", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView kakaoLogin(@RequestParam("code") String code, HttpServletRequest request, HttpServletResponse response, HttpSession session, ModelAndView mv) throws Exception {
		
		JsonNode node = KakaoController.getAccessToken("login", code);
		JsonNode accessToken = node.get("access_token");
		String token = accessToken.toString();
		session.setAttribute("token", token);
		
		// 사용자 정보
		JsonNode userInfo = KakaoController.getKakaoUserInfo(accessToken);
		String kemail = null;
		String kgender = null;
		String kage = null;
		
		//유저정보 카카오에서 가져오기
		JsonNode properties = userInfo.path("properties");
		JsonNode kakao_account = userInfo.path("kakao_account");
		
		kemail = kakao_account.path("email").asText();
		kgender = kakao_account.path("gender").asText();
		kage = kakao_account.path("age_range").asText();
		
		System.out.println(kemail);
		System.out.println(kgender);
		System.out.println(kage);
		
		
		//계정 Member에담기 
		Member m = getKakaoMember(kemail, kgender, kage);
		
		// 조회한 이메일이 DB에 존재할 경우
		if(mService.idCheck(kemail) > 0) {
			// 그런데 탈퇴여부가 Y일 경우 => 사용불가
			if(mService.statusCheck(kemail).equals("Y")) {
				session.setAttribute("alertMsg", "탈퇴한 계정입니다. 다른 계정으로 회원가입 후 이용바랍니다.");
				mv.setViewName("redirect:/");
			// 탈퇴여부 N => 로그인	
			} else {
				Member loginUser = mService.loginMember(m);
				session.setAttribute("loginUser", loginUser);
				session.setAttribute("alertMsg", loginUser.getNickname() + "님 환영합니다!");
				mv.setViewName("redirect:/");
			}
		
		// 조회한 이메일이 DB에 존재하지 않을 경우 => 회원가입 페이지로 이동하여 가입 유도
		} else {
			mv.addObject("kUser", m);
			session.setAttribute("alertMsg", "가입되지 않은 계정입니다. 회원가입 페이지로 이동합니다.");
			mv.setViewName("member/memberEnrollForm");
		}
		return mv;
	}
	
	
	/** @author 최서경
	 * 카카오로 가입하기(시작하기)
	 */
	@RequestMapping(value = "kenroll.do", produces = "application/json", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView kakaoEnroll(@RequestParam("code") String code, HttpServletRequest request, HttpServletResponse response, HttpSession session, ModelAndView mv) throws Exception {
		
		JsonNode node = KakaoController.getAccessToken("enroll", code);
		
		JsonNode accessToken = node.get("access_token");
		String token = accessToken.toString();
		session.setAttribute("token", token);

		
		// 사용자 정보
		JsonNode userInfo = KakaoController.getKakaoUserInfo(accessToken);
		//System.out.println("회원가입 사용자 정보" + userInfo);
		
		JsonNode kakao_account = userInfo.path("kakao_account");
		String kemail = kakao_account.path("email").asText();
		String kgender = kakao_account.path("gender").asText();
		String kage = kakao_account.path("age_range").asText();
		
		Member m = getKakaoMember(kemail, kgender, kage);
		
		Boolean has_email = kakao_account.path("has_email").asBoolean();
		Boolean has_age_range = kakao_account.path("has_age_range").asBoolean();
		Boolean has_gender = kakao_account.path("has_gender").asBoolean();
		
		// 이미 가입된 아이디이면 로그인 후 메인화면
		if(mService.idCheck(kemail) > 0) {
			if(mService.statusCheck(kemail).equals("Y")) {
				session.setAttribute("alertMsg", "탈퇴한 계정입니다. 다른 계정으로 회원가입 후 이용바랍니다.");
				mv.setViewName("redirect:/");
			} else {
				Member loginUser = mService.loginMember(m);
				session.setAttribute("loginUser", loginUser);
				session.setAttribute("alertMsg", loginUser.getNickname() + "님 환영합니다!");
				mv.setViewName("redirect:/");
			}
		} else {
			if(has_email && has_age_range && has_gender ) {
				// 필수 입력사항이 정부 있으면 회원가입 실행
				mService.insertMember(m);
				session.setAttribute("alertMsg", "회원가입이 정상적으로 완료되었습니다. 로그인 후 이용해주세요.");
				mv.setViewName("redirect:/");
			} else {
				// 누락된게 있으면 회원가입페이지에 정보 뿌리기
				session.setAttribute("alertMsg", "필수입력 사항 중 누락된 항목이 있습니다. 해당 항목을 작성해주세요.");
				mv.addObject("kUser", m);
				mv.setViewName("member/memberEnrollForm");
			}
		}
		
		return mv;
	}
	
	
	// 카카오에 등록된 정보를 Member객체의 필드타입와 일치시킴
    public Member getKakaoMember(String kemail, String kgender, String kage) {
    	
    	String nickName = "";
    	if(kemail != "") {
    		nickName = kemail.substring(0, kemail.indexOf("@"));
    	}
    	
    	
		int kAgeRange = 0;
		switch(kage) {
		case "1~9" : kAgeRange = 0 ; break;
		case "10~14" :
		case "15~19" : kAgeRange = 10; break;
		case "20~29" : kAgeRange = 20; break;
		case "30~39" : kAgeRange = 30; break;
		case "40~49" : kAgeRange = 40; break;
		case "50~59" : kAgeRange = 50; break;
		case "60~69" : kAgeRange = 60; break;
		case "70~79" : kAgeRange = 70; break;
		case "80~89" : kAgeRange = 80; break;
		case "90~" : kAgeRange = 90; break;
		}
		
		String kGender = "";
		switch(kgender) {
		case "female" : kGender="F"; break;
		case "male" : kGender="M"; break;
		}
		
		Member m = new Member();
		m.setEmail(kemail);
		m.setNickname(nickName);
		m.setGender(kGender);
		m.setAgeRange(kAgeRange);
		m.setEnrollType("K");

		return m;
    }
    
    
    
    
    
    /*************************** 삭제예정 **********************************
	@RequestMapping(value = "/klogout.do", produces = "application/json")
    public String Logout(HttpSession session) {
        //kakao restapi 객체 선언
       KakaoController kc = new KakaoController();
        //노드에 로그아웃한 결과값음 담아줌 매개변수는 세션에 잇는 token을 가져와 문자열로 변환
        JsonNode node = kc.Logout(session.getAttribute("token").toString());
        //결과 값 출력
        System.out.println("로그아웃 후 반환되는 아이디 : " + node.get("id"));
        return "redirect:/";
    }  
	
     ****************************************************************************/
	
	
	@RequestMapping(value = "/kunlink.do", produces = "application/json")
    public String unlink(HttpSession session) {
        //kakao restapi 객체 선언
       KakaoController kc = new KakaoController();
       
       JsonNode node = kc.unlink(session.getAttribute("token").toString());
       
        //결과 값 출력
        System.out.println("연결끊긴 아이디 : " + node.get("id"));
        return "redirect:/";
    }  
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * @author HeeRak
	 * 학생 클래스비디오 목록 view
	 */
	@RequestMapping("lectureVideoList.le")
	public ModelAndView selectLectureVideoList(HttpSession session,
										 	   int classNo,
										 	   ModelAndView mv) {
		
		
		// 클래스 번호로 강사 정보 가져오기
		Teacher t = mService.selectTeacherByClassNo(classNo);
		
		// 클래스번호 로 비디오목록 가져오기
		ArrayList<Chapter> list = mService.selectChapterList(classNo);
		
		mv.addObject("t", t)
		  .addObject("classNo", classNo)
		  .addObject("list", list)
		  .setViewName("lecture/lectureVideoList");
		
		return mv;
	}
}
