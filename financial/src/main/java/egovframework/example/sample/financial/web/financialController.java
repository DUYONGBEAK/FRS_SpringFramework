/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.example.sample.financial.web;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.example.sample.financial.service.FinancialService;
import egovframework.example.sample.financial.service.FinancialVO;

/**
 * @Class Name : EgovSampleController.java
 * @Description : EgovSample Controller Class
 * @Modification Information
 * @ @ 수정일 수정자 수정내용 @ --------- --------- ------------------------------- @
 *   2009.03.16 최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 * 		Copyright (C) by MOPAS All right reserved.
 */

@Controller
public class financialController {

	@Resource(name = "financialService")
	private FinancialService financialService;

	@RequestMapping(value = "/main.do")
	public String main(ModelMap model) throws Exception {
		try {
			System.out.println("여기 들어옴?m");
			return "/financial/main";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("m1", "Error");
			model.addAttribute("m2", "You can't use it anymore.");
			return "/member/errorMessage";
		}

	}

	@RequestMapping(value = "/deposit.do")
	public String depositRecommend(ModelMap model) throws Exception {
		try {
			System.out.println("여기 들어옴?d");
			return "/financial/recommendD";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("m1", "Error");
			model.addAttribute("m2", "You can't use it anymore.");
			return "/member/errorMessage";
		}

	}

	@RequestMapping(value = "/savings.do")
	public String savingsRecommend(ModelMap model) throws Exception {
		try {
			System.out.println("여기 들어옴?s");
			return "/financial/recommendS";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("m1", "Error");
			model.addAttribute("m2", "You can't use it anymore.");
			return "/member/errorMessage";
		}

	}

	@RequestMapping(value = "/loan.do")
	public String loanRecommend(ModelMap model) throws Exception {
		try {
			System.out.println("여기 들어옴?l");
			return "/financial/recommendL";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("m1", "Error");
			model.addAttribute("m2", "You can't use it anymore.");
			return "/member/errorMessage";
		}

	}

	@RequestMapping(value = "/resultD.do", method = RequestMethod.POST)
	public String depositList(@ModelAttribute("financialVO") FinancialVO financialVO, ModelMap model,
			HttpServletRequest request) throws Exception {
		try {
			String object = request.getParameter("object");
			String age = request.getParameter("age");
			String depositMoney = request.getParameter("depositMoney");
			String month = request.getParameter("month");

			String[] strMoney = depositMoney.split("~");
			int[] intMoney = new int[strMoney.length];
			for (int i = 0; i < intMoney.length; i++) {
				intMoney[i] = Integer.parseInt(strMoney[i]);
			}

			String[] strmonth = month.split("~");
			int[] intmonth = new int[strmonth.length];
			for (int i = 0; i < intmonth.length; i++) {
				intmonth[i] = Integer.parseInt(strmonth[i]);
			}

			financialVO.setSignup_target(object);
			financialVO.setAge(age);
			financialVO.setSignup_amount_min1(intMoney[0]);
			financialVO.setSignup_amount_min2(intMoney[1]);
			financialVO.setMonth1(intmonth[0]);
			financialVO.setMonth2(intmonth[1]);
			List<?> list = financialService.selectDepositList(financialVO);
			System.out.println(list);
			if (list.size() == 0) {
				model.addAttribute("m1", "Nothing");
				model.addAttribute("m2", "No suitable product");
				return "/member/errorMessage";
			}
			model.addAttribute("productList", list);

			return "/financial/resultPrintD";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("m1", "Error");
			model.addAttribute("m2", "Recommendation error");
			return "/member/errorMessage";
		}

	}

	@RequestMapping(value = "/resultS.do", method = RequestMethod.POST)
	public String savingsList(@ModelAttribute("financialVO") FinancialVO financialVO, ModelMap model,
			HttpServletRequest request) throws Exception {

		try {
			String object = request.getParameter("object");
			String age = request.getParameter("age");
			String month = request.getParameter("month");

			String[] strmonth = month.split("~");
			int[] intmonth = new int[strmonth.length];
			for (int i = 0; i < intmonth.length; i++) {
				intmonth[i] = Integer.parseInt(strmonth[i]);
			}

			financialVO.setSignup_target(object);
			financialVO.setAge(age);
			financialVO.setMonth1(intmonth[0]);
			financialVO.setMonth2(intmonth[1]);
			List<?> list = financialService.selectSavingList(financialVO);
			System.out.println(list);
			if (list.size() == 0) {
				model.addAttribute("m1", "Nothing");
				model.addAttribute("m2", "No suitable product");
				return "/member/errorMessage";
			}
			model.addAttribute("productList", list);
			return "/financial/resultPrintS";
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("m1", "Error");
			model.addAttribute("m2", "Recommendation error");
			return "/member/errorMessage";
		}

	}

	@RequestMapping(value = "/resultL.do", method = RequestMethod.POST)
	public String loanList(ModelMap model, HttpServletRequest request) throws Exception {
		try {
			String marry = request.getParameter("marry");
			String graduation = request.getParameter("graduation");
			String income = request.getParameter("income");

			System.out.println(marry);
			System.out.println(graduation);

			income = income.replaceAll(",", "");
			income = income.replaceAll("원", "");
			System.out.println(income);
			try {
				int intIncome = Integer.parseInt(income);
				BigDecimal incm_civil_amt = new BigDecimal(intIncome);
				incm_civil_amt = incm_civil_amt.setScale(-6, BigDecimal.ROUND_DOWN);
				System.out.println("incm_civil_amt  백만단위: " + incm_civil_amt.intValue());
				int userIncome = incm_civil_amt.intValue();

				if (userIncome < 20000000) {
					userIncome = 20000000;
				} else if (userIncome > 100000000) {
					userIncome = 100000000;
				}
				System.out.println(userIncome);

				FinancialVO financialVO = new FinancialVO();
				financialVO.setEducation(graduation);
				financialVO.setMarried(marry);
				financialVO.setIncome(userIncome);

				String interest = financialService.selectLoanInterest(financialVO);
				String amount = financialService.selectLoanAmount(financialVO);

				System.out.println(interest);
				System.out.println(amount);
				DecimalFormat df = new DecimalFormat("###,###");
				String strAmount = df.format(Integer.parseInt(amount));
				System.out.println(strAmount);
				model.addAttribute("interest", interest);
				model.addAttribute("amount", strAmount);
				return "/financial/resultPrintL";
			} catch (Exception e) {
				// TODO: handle exception
				model.addAttribute("m2", "I know well that your income cannot exceed 1 billion");
				return "/member/errorMessage";
			}
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("m1", "Error");
			model.addAttribute("m2", "Recommendation error");
			return "/member/errorMessage";
		}

	}

}
