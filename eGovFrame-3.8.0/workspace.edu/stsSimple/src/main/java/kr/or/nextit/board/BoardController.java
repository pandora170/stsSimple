package kr.or.nextit.board;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.filter.CharacterEncodingFilter;

import kr.or.nextit.board.service.BoardVO;
import kr.or.nextit.board.service.CodeVO;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(path="/board/list")
	public String list() throws Exception{
		logger.info("It is list.jsp");
		
		return "board/list";
	}
	
	@RequestMapping(path="/board/view")
	public void view(@RequestParam("boNo") int boNo, Model model) {
		logger.info("It is board.jsp");
		
		Model model2;
		
		model.addAttribute("vo", boNo + "를 조회하였습니다.");
	}
	
	@RequestMapping(path="/board/insert", method = RequestMethod.GET)
	public String getInsert() {
		logger.info("It is GET Type insert.jsp");
		
		return "board/insert";
	}
	
	@RequestMapping(path="/board/insert", method = RequestMethod.POST)
	public String postInsert(@ModelAttribute("board") @Valid BoardVO board, BindingResult err) {
		logger.info("It is POST Type insert.jsp");
		
		if(err.hasErrors()) {
			logger.info("err :\t" + err.toString());
			return "board/insert";
		}
		
		return "redirect:/board/list";
	}
	
	@RequestMapping(path="/board/insert2", method = RequestMethod.GET)
	public String getInsert2(@ModelAttribute("board") @Valid BoardVO board, BindingResult err) {
		logger.info("It is GET Type insert2.jsp");
		
		return "board/insert2";
	}
	
	@RequestMapping(path="/board/insert2", method = RequestMethod.POST)
	public String postInsert2(@ModelAttribute("board") @Valid BoardVO board, BindingResult err) {
		logger.info("It is POST Type insert2.jsp");
		
		if(err.hasErrors()) {
			logger.info("err :\t" + err.toString());
			return "board/insert2";
		}
		
		return "redirect:/board/list";
	}
	
	@ModelAttribute("category")
	public List<CodeVO> getCode() {
		List<CodeVO> list = new ArrayList<CodeVO>();
		list.add(new CodeVO("CT01","음식"));
		list.add(new CodeVO("CT02","프로그램"));
		list.add(new CodeVO("CT03","만담"));
		
		return list;
	}
 }
