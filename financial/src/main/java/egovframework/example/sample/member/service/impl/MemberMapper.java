package egovframework.example.sample.member.service.impl;

import egovframework.example.sample.member.service.MemberVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("memberMapper")
public interface MemberMapper {
	String insertMember(MemberVO vo) throws Exception;
	
	int selectMember(MemberVO vo) throws Exception;
	
	String loginMember(MemberVO vo) throws Exception;
	
	String deleteMember(MemberVO vo) throws Exception;
	
	int idxMember(MemberVO vo) throws Exception;
	
	void updateMember(MemberVO vo) throws Exception;
	
	String selectPhoneNumber(MemberVO vo) throws Exception;
	
	String insertReview(MemberVO vo) throws Exception;
}
