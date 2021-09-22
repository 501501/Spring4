package com.sol.s4.board.notice;

import java.util.List;

import com.sol.s4.board.BoardDTO;
import com.sol.s4.board.BoardFilesDTO;

public class NoticeDTO extends BoardDTO {
	// is a => BoardDTO 상속
	// has a => 멤버변수 선언
	
	// boardDTO 1 : files N
	private List<BoardFilesDTO> files;

	public List<BoardFilesDTO> getFiles() {
		return files;
	}

	public void setFiles(List<BoardFilesDTO> files) {
		this.files = files;
	}
}
