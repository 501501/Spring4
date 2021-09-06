package com.sol.s4.notice;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.sol.s4.MyJunitTest;

public class NoticeDAOTest extends MyJunitTest {
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Test
	public void setUpdateTest() {
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setNum(1);
		noticeDTO.setTitle("update title");
		noticeDTO.setContents("update contents");
		int result = noticeDAO.setUpdate(noticeDTO);
		assertEquals(1, result);
	}
	
	//@Test
	public void setDeleteTest() {
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setNum(27);
		int result = noticeDAO.setDelete(noticeDTO);
		assertEquals(1, result);
	}
	
	//@Test
	public void setInsertTest() {
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setTitle("t3");
		noticeDTO.setContents("c3");
		noticeDTO.setWriter("w3");
		int result = noticeDAO.setInsert(noticeDTO);
		assertEquals(1, result);
	}
	
	//@Test
	public void getSelectTest() {
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setNum(1);
		noticeDTO = noticeDAO.getSelect(noticeDTO);
		assertNotNull(noticeDTO);
	}
	
	//@Test
	public void getListTest() {
		List<NoticeDTO> ar = noticeDAO.getList();
		assertNotEquals(0, ar.size());
	}

}
