package egovframework.example.sample.member.service;

import egovframework.example.sample.service.SampleDefaultVO;

public class MemberVO extends SampleDefaultVO {
	private int idx;
	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	private String id;
	private String pw;
	private String name;
	private String phone_number;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	
	private String opinion;
	public String getOpinion() {
		return opinion;
	}

	public void setOpinion(String opinion) {
		this.opinion = opinion;
	}

	public String getEtcOpinion() {
		return etcOpinion;
	}

	public void setEtcOpinion(String etcOpinion) {
		this.etcOpinion = etcOpinion;
	}

	private String etcOpinion;

}
