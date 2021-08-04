package com.kh.surf.member.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
		
		// 비밀번호 암호화 후 m의 password 필드에 담기
		m.setPassword(bcryptPasswordEncoder.encode(m.getPassword()));
		
		// 닉네임 필드 값 설정
		String nickName = m.getEmail().substring(0, m.getEmail().indexOf("@"));
		m.setNickname(nickName);
		
		int result = mService.insertMember(m);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "회원가입이 성공적으로 완료되었습니다.");
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
	 * 비밀번호 찾기
	 */
	@RequestMapping("findIdPwd.me")
	public String findAcc() {
		
		return "member/findIdPwd";
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
		
		return mv;
		
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
