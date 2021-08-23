package egovframework.example.sample.member.service.impl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.member.service.MemberService;
import egovframework.example.sample.member.service.MemberVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

@Service("memberService")
public class MemberServiceImpl extends EgovAbstractServiceImpl implements MemberService {

	private static final Logger LOGGER = LoggerFactory.getLogger(MemberServiceImpl.class);
	// TODO mybatis 사용
	@Resource(name = "memberMapper")
	private MemberMapper memberDAO;

	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;

	@Resource(name = "memberService")
	private MemberService memberService;

	@Override
	public String insertMember(MemberVO memberVO) throws Exception {
		return memberDAO.insertMember(memberVO);
	}
	
	@Override
	public int selectMember(MemberVO memberVO) throws Exception{
		return memberDAO.selectMember(memberVO);
	}
	
	@Override
	public String loginMember(MemberVO memberVO) throws Exception{
		return memberDAO.loginMember(memberVO);
	}
	
	@Override
	public String deleteMember(MemberVO memberVO) throws Exception{
		return memberDAO.deleteMember(memberVO);
	}
	
	@Override
	public int idxMember(MemberVO memberVO) throws Exception{
		return memberDAO.idxMember(memberVO);
	}
	
	@Override
	public void updateMember(MemberVO memberVO) throws Exception {
		memberDAO.updateMember(memberVO);
	}
	
	@Override
	public String selectPhoneNumber(MemberVO memberVO) throws Exception{
		return memberDAO.selectPhoneNumber(memberVO);
	}
	
	@Override
	public String insertReview(MemberVO memberVO) throws Exception{
		return memberDAO.insertReview(memberVO);
	}
}
