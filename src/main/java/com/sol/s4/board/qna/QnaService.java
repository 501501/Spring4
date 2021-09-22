package com.sol.s4.board.qna;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sol.s4.board.BoardDTO;
import com.sol.s4.board.BoardFilesDTO;
import com.sol.s4.board.BoardService;
import com.sol.s4.util.FileManager;
import com.sol.s4.util.Pager;

@Service
public class QnaService implements BoardService {
	
	@Autowired
	private QnaDAO qnaDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileManager fileManager;
	
	public List<BoardFilesDTO> getFiles(BoardDTO boardDTO) throws Exception {
		return qnaDAO.getFiles(boardDTO);
	}
	
	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		Long totalCount = qnaDAO.getCount(pager);
		pager.makeNum(totalCount);
		pager.makeRow();
		return qnaDAO.getList(pager);
	}

	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		qnaDAO.setHitUpdate(boardDTO);
		return qnaDAO.getSelect(boardDTO);
	}

	@Override
	public int setInsert(BoardDTO boardDTO, MultipartFile [] files) throws Exception {
		// TODO Auto-generated method stub
		// 1. 어느 폴더
		// resources/upload/qna/
		String realPath = servletContext.getRealPath("/resources/upload/qna/");
		System.out.println(realPath);
		File file = new File(realPath);
		
		System.out.println("Before Num: "+boardDTO.getNum());
		
		int result = qnaDAO.setInsert(boardDTO);
		
		System.out.println("After Num: "+boardDTO.getNum());
		
		for(MultipartFile multipartFile:files) {
			String fileName = fileManager.fileSave(multipartFile, file);
			System.out.println(fileName);
			BoardFilesDTO boardFilesDTO = new BoardFilesDTO();
			boardFilesDTO.setFileName(fileName);
			boardFilesDTO.setOriName(multipartFile.getOriginalFilename());
			boardFilesDTO.setNum(boardDTO.getNum());
			
			result = qnaDAO.setFile(boardFilesDTO);
		}
		
		return result;
		//qnaDAO.setInsert(boardDTO);
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		// Files Table에서 삭제할 파일명을 조회
		List<BoardFilesDTO> ar = qnaDAO.getFiles(boardDTO);
		
		// 어느 폴더
		String realPath = servletContext.getRealPath("/resources/upload/qna/");
		for(BoardFilesDTO bDTO:ar) {
			File file = new File(realPath, bDTO.getFileName()); 
			fileManager.fileDelete(file);
		}
		
		// DB 삭제
		return qnaDAO.setDelete(boardDTO);
	}

	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	public int setReply(QnaDTO qnaDTO) throws Exception {
		// 1. 부모의 정보 조회
		QnaDTO parent = (QnaDTO)qnaDAO.getSelect(qnaDTO);
		qnaDTO.setRef(parent.getRef());
		qnaDTO.setStep(parent.getStep()+1);
		qnaDTO.setDepth(parent.getDepth()+1);
		
		System.out.println(qnaDTO.getStep());
		System.out.println(qnaDTO.getDepth());
		// 2. update
		int result = qnaDAO.setReplyUpdate(parent);
		
		// 3. insert
		result = qnaDAO.setReply(qnaDTO);
		
		return result;
	}

}
