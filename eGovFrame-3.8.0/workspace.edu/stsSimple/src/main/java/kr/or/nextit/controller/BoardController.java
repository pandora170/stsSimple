package kr.or.nextit.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;
import javax.validation.groups.Default;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.nextit.board.service.BoardVO;
import kr.or.nextit.board.service.CodeVO;
import kr.or.nextit.inerface.RegistType;

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
		
		model.addAttribute("vo", boNo + "를 조회하였습니다.");
	}
	
	//normal form 태그화면
	@RequestMapping(path="/board/insert", method = RequestMethod.GET)
	public String getInsert() {
		logger.info("It is GET Type insert.jsp");
		
		return "board/insert";
	}
	
	//normal form 태그화면
	@RequestMapping(path="/board/insert", method = RequestMethod.POST)
	public String postInsert(@ModelAttribute("board") @Valid BoardVO board, BindingResult err) {
		logger.info("It is POST Type insert.jsp");
		
		if(err.hasErrors()) {
			logger.info("err :\t" + err.toString());
			return "board/insert";
		}
		
		return "redirect:/board/list";
	}
	
	//normal jstl form태그화면
	@RequestMapping(path="/board/insert2", method = RequestMethod.GET)
	public String getInsert2(@ModelAttribute("board") @Valid BoardVO board, BindingResult err) {
		logger.info("It is GET Type insert2.jsp");
		
		return "board/insert2";
	}
	
	//normal jstl form태그화면
	@RequestMapping(path="/board/insert2", method = RequestMethod.POST)
	public String postInsert2(@ModelAttribute("board") 
								@Validated({RegistType.class, Default.class}) BoardVO board, BindingResult err) {
		logger.info("It is POST Type insert2.jsp");
		
		if(err.hasErrors()) {
			logger.info("err :\t" + err.toString());
			return "board/insert2";
		}
		
		return "redirect:/board/list";
	}
	
	//normal ajax 통신화면
	@RequestMapping(path="/board/insert3", method = RequestMethod.GET)
	public String getInsert3() {
		logger.info("It is GET Type insert3.jsp");
		
		return "board/insert3";
	}
	
	//normal ajax 통신화면
	@RequestMapping(path="/board/insert3", method = RequestMethod.POST)
	public String postInsert3(@ModelAttribute("board")
							@Validated({RegistType.class, Default.class}) BoardVO board, BindingResult err) {
		logger.info("It is POST Type insert3.jsp");
		
		if(err.hasErrors()) {
			logger.info("err :\t" + err.toString());
			return "board/insert3";
		}
		
		return "redirect:/board/list";
	}
	
	//normal ajax 비동기 통신
	@RequestMapping(path="/board/request")
	@ResponseBody
	public Map requiredData(@ModelAttribute("board")
								@Validated({RegistType.class, Default.class}) BoardVO board, BindingResult err) {
		logger.info("It is requestData");
		
		Map rtnData = new HashMap();
		rtnData.put("success", "Y");
		rtnData.put("test1", "1");
		rtnData.put("test2", "2");
		rtnData.put("test3", "3");
		
		return rtnData;
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
