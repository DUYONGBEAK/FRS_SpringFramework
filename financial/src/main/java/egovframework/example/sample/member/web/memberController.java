package egovframework.example.sample.member.web;

import java.math.BigInteger;
import java.security.MessageDigest;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.example.sample.member.service.MemberService;
import egovframework.example.sample.member.service.MemberVO;

@Controller
public class memberController {

	@Resource(name = "memberService")
	private MemberService memberService;

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String loginMethod(@ModelAttribute("memberVO") MemberVO memberVO, ModelMap model, HttpServletRequest request)
			throws Exception {
		try {
			String password = this.getSHA256(memberVO.getPw());
			memberVO.setPw(password);
			
			String userName = memberService.loginMember(memberVO);
			int idx = memberService.idxMember(memberVO);
			String phoneNumber = memberService.selectPhoneNumber(memberVO);
			memberVO.setPhone_number(phoneNumber);
			String userId = memberVO.getId();
			String userPhoneNumber = memberVO.getPhone_number();
			System.out.println(userId);
			System.out.println(userName);
			try {
				if (userName != null && !"".equals(userName)) {
					request.getSession().setAttribute("userIdx", idx);
					request.getSession().setAttribute("userId", userId);
					request.getSession().setAttribute("userName", userName);
					request.getSession().setAttribute("userPhoneNumber", userPhoneNumber);
				} else {
					request.getSession().setAttribute("userIdx", "");
					request.getSession().setAttribute("userId", "");
					request.getSession().setAttribute("userName", "");
					model.addAttribute("m1", "Error");
					model.addAttribute("m2", "ID or password do not match.");
					return "/member/errorMessage";
				}
			} catch (Exception e) {
				// TODO: handle exception
				model.addAttribute("m1", "Error");
				model.addAttribute("m2", "Session error");
				return "/member/errorMessage";
			}

			return "redirect:/main.do";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("m1", "Error");
			model.addAttribute("m2", "Login Error");
			return "/member/errorMessage";
		}

	}

	@RequestMapping(value = "/logout.do")
	public String logoutMethod(ModelMap model, HttpServletRequest request) throws Exception {
		try {
			request.getSession().invalidate();
			return "redirect:/main.do";
		} catch (Exception e) {
			// TODO: handle exception
			request.getSession().invalidate();
			model.addAttribute("m1", "Error");
			model.addAttribute("m2", "Logout error");
			return "/member/errorMessage";
		}
		
	}

	@RequestMapping(value = "/signup.do")
	public String signupMethod(ModelMap model) throws Exception {
		try {
			return "/member/signUp";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("m1", "Error");
			model.addAttribute("m2", "Call error");
			return "/member/errorMessage";
		}
		
	}

	@RequestMapping(value = "/quit.do")
	public String quitMethod(ModelMap model, HttpServletRequest request) throws Exception {
		try {
			String quitUserId = (String) request.getSession().getAttribute("userId");
			String quituserName = (String) request.getSession().getAttribute("userName");
			System.out.println(quitUserId);
			System.out.println(quituserName);
			model.addAttribute("quitUserId", quitUserId);
			model.addAttribute("quituserName", quituserName);
			return "/member/quitAsk";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("m1", "Error");
			model.addAttribute("m2", "There is no session.");
			return "/member/errorMessage";
		}
	}

	@RequestMapping(value = "/realQuit.do")
	public String realQuitMethod(@ModelAttribute("memberVO") MemberVO memberVO, ModelMap model, HttpServletRequest request) throws Exception {
		try {
			String quitUserId = request.getParameter("quitUserId");
			String quituserName = request.getParameter("quituserName");
			memberVO.setId(quitUserId);
			memberVO.setName(quituserName);
			memberService.deleteMember(memberVO);
			memberService.insertReview(memberVO);
			System.out.println(memberVO);
			model.addAttribute("m1", "See you again");
			model.addAttribute("m2", "Success");
			request.getSession().invalidate();
			return "/member/errorMessage";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("m1", "Error");
			model.addAttribute("m2", "Quit Error");
			return "/member/errorMessage";
		}
	}

	@RequestMapping(value = "/update.do")
	public String updateMethod(ModelMap model, HttpServletRequest request) throws Exception {
		try {
			int userIdx = (int) request.getSession().getAttribute("userIdx");
			String userId = (String) request.getSession().getAttribute("userId");
			String userName = (String) request.getSession().getAttribute("userName");
			String userPhoneNumber = (String) request.getSession().getAttribute("userPhoneNumber");
			System.out.println(userPhoneNumber);
			model.addAttribute("userIdx", userIdx);
			model.addAttribute("userId", userId);
			model.addAttribute("userName", userName);
			model.addAttribute("userPhoneNumber", userPhoneNumber);

			return "/member/update";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("m1", "Error");
			model.addAttribute("m2", "Call error");
			return "/member/errorMessage";
		}
	}

	@RequestMapping(value = "/updateAction.do", method = RequestMethod.POST)
	public String updateActionMethod(@ModelAttribute("memberVO") MemberVO memberVO, ModelMap model,
			HttpServletRequest request) throws Exception {

		try {
			System.out.println(memberVO);
			String password = this.getSHA256(memberVO.getPw());
			memberVO.setPw(password);
//			int selectId = memberService.selectMember(memberVO);
//			System.out.println(selectId);
//			if (selectId == 0) {
//				System.out.println("ID중복없음");
//			} else {
//				model.addAttribute("m1", "Error");
//				model.addAttribute("m2", "ID is duplicated.");
//				return "/member/errorMessage";
//			}

			String passwordCheck = request.getParameter("passwordCheck");
			String hashCheck = this.getSHA256(passwordCheck);

			if (password.equals(hashCheck)) {
				System.out.println("패스워드 같음");
				memberService.updateMember(memberVO);
				model.addAttribute("m1", "Update");
				model.addAttribute("m2", "Success");
			} else {
				model.addAttribute("m1", "Error");
				model.addAttribute("m2", "The passwords are not the same.");
				return "/member/errorMessage";
			}
			return "redirect:/main.do";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("m1", "Error");
			model.addAttribute("m2", "update error");
			return "/member/errorMessage";
		}
	}

	@RequestMapping(value = "/returnMain.do", method = RequestMethod.POST)
	public String returnMethod(@ModelAttribute("memberVO") MemberVO memberVO, ModelMap model,
			HttpServletRequest request) throws Exception {
		try {
			System.out.println(memberVO);
			String password = this.getSHA256(memberVO.getPw());
			memberVO.setPw(password);
			int selectId = memberService.selectMember(memberVO);
			System.out.println(selectId);
			if (selectId == 0) {
				System.out.println("ID중복없음");
			} else {
				model.addAttribute("m1", "Error");
				model.addAttribute("m2", "ID is duplicated.");
				return "/member/errorMessage";
			}

			String passwordCheck = request.getParameter("passwordCheck");
			String hashCheck = this.getSHA256(passwordCheck);

			if (password.equals(hashCheck)) {
				System.out.println("패스워드 같음");
				memberService.insertMember(memberVO);
			} else {
				model.addAttribute("m1", "Error");
				model.addAttribute("m2", "The passwords are not the same.");
				return "/member/errorMessage";
			}

			return "redirect:/main.do";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("m1", "Error");
			model.addAttribute("m2", "Sign up error");
			return "/member/errorMessage";
		}

	}

	public String getSHA256(String input) {

		String toReturn = null;
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			digest.reset();
			digest.update(input.getBytes("utf8"));
			toReturn = String.format("%064x", new BigInteger(1, digest.digest()));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return toReturn;
	}
}
