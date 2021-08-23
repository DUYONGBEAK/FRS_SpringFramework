package egovframework.example.sample.financial.service;

import egovframework.example.sample.service.SampleDefaultVO;

public class FinancialVO extends SampleDefaultVO {

	private String bank;
	private String type;
	private String product_name;
	private String signup_target;
	private String age;
	private int month1;
	private int month2;
	private int signup_amount_min1;
	private int signup_amount_min2;
	private String interest_min;
	private String interest_max;
	
	private String married;
	private String education;
	private int income;
	public String getMarried() {
		return married;
	}

	public void setMarried(String married) {
		this.married = married;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public int getIncome() {
		return income;
	}

	public void setIncome(int income) {
		this.income = income;
	}

	public String getInterest_rate() {
		return interest_rate;
	}

	public void setInterest_rate(String interest_rate) {
		this.interest_rate = interest_rate;
	}

	public String getLoan_limit() {
		return loan_limit;
	}

	public void setLoan_limit(String loan_limit) {
		this.loan_limit = loan_limit;
	}

	private String interest_rate;
	private String loan_limit;
	
	
	public int getMonth1() {
		return month1;
	}

	public void setMonth1(int month1) {
		this.month1 = month1;
	}

	public int getMonth2() {
		return month2;
	}

	public void setMonth2(int month2) {
		this.month2 = month2;
	}

	public int getSignup_amount_min1() {
		return signup_amount_min1;
	}

	public void setSignup_amount_min1(int signup_amount_min1) {
		this.signup_amount_min1 = signup_amount_min1;
	}

	public int getSignup_amount_min2() {
		return signup_amount_min2;
	}

	public void setSignup_amount_min2(int signup_amount_min2) {
		this.signup_amount_min2 = signup_amount_min2;
	}

	

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getSignup_target() {
		return signup_target;
	}

	public void setSignup_target(String signup_target) {
		this.signup_target = signup_target;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getInterest_min() {
		return interest_min;
	}

	public void setInterest_min(String interest_min) {
		this.interest_min = interest_min;
	}

	public String getInterest_max() {
		return interest_max;
	}

	public void setInterest_max(String interest_max) {
		this.interest_max = interest_max;
	}
	
	
	
}
