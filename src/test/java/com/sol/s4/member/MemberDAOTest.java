package com.sol.s4.member;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.sol.s4.MyJunitTest;

public class MemberDAOTest extends MyJunitTest {
	
	@Autowired
	private MemberDAO memberDAO;
	
	//@Test
	public void getIdCheckTest() throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("sol");;
		memberDTO = memberDAO.getIdCheck(memberDTO);
		assertNotNull(memberDTO);
	}
	
	@Test
	public void setInsertTest() throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("sol");
		memberDTO.setPw("sol");
		memberDTO.setName("정솔");
		memberDTO.setPhone("01087632942");
		memberDTO.setEmail("js7645@naver.com");
		int result = memberDAO.setInsert(memberDTO);
		assertNotEquals(0, result);
	}
}
