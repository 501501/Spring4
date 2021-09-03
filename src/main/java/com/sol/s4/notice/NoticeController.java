package com.sol.s4.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("list")
	public ModelAndView list(ModelAndView mv) {
		List<NoticeDTO> ar = noticeService.getList();
		mv.addObject("list", ar);
		mv.setViewName("board/list");
		return mv;
	}
	
	@RequestMapping("select")
	public ModelAndView select(NoticeDTO noticeDTO, ModelAndView mv) {
		noticeDTO = noticeService.getSelect(noticeDTO);
		mv.addObject("dto", noticeDTO);
		mv.setViewName("board/select");
		return mv;
	}
	
	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public ModelAndView insert(ModelAndView mv) {
		mv.setViewName("board/insert");
		return mv;
	}	
	
	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert(NoticeDTO noticeDTO) {
		int result = noticeService.setInsert(noticeDTO);
		return "redirect:./list";
	}
	
	@RequestMapping("delete")
	public String delete(NoticeDTO noticeDTO) {
		int result = noticeService.setDelete(noticeDTO);
		return "redirect:./list";
	}
}