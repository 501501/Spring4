package com.sol.s4.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.sol.s4.notice.NoticeDAO.";
	
	//setDelete
	public int setDelete(NoticeDTO noticeDTO) {
		return sqlSession.delete(NAMESPACE+"setDelete", noticeDTO);
	}
	
	//setInsert
	public int setInsert(NoticeDTO noticeDTO) {
		return sqlSession.insert(NAMESPACE+"setInsert", noticeDTO);
	}
	
	//getList
	public List<NoticeDTO> getList(){
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	//getSelect
	public NoticeDTO getSelect(NoticeDTO noticeDTO) {
		return sqlSession.selectOne(NAMESPACE+"getSelect", noticeDTO);
	}
}
