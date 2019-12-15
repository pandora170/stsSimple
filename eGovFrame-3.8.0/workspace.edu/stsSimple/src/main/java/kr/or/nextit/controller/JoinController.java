package kr.or.nextit.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.or.nextit.board.service.BoardVO;

@Controller
@SessionAttributes("board")
public class JoinController {
	
	@RequestMapping(path="register/step1")
	public String step1(Model model) throws Exception{		
		return "register/step1";
	}
	
	@RequestMapping(path="register/step2")
	public String step2(@ModelAttribute("board") BoardVO board) throws Exception{
		return "register/step2";
	}
	
	@RequestMapping(path="register/step3")
	public String step3(@ModelAttribute("board") BoardVO board) throws Exception{
		return "register/step3";
	}
	
	@RequestMapping(path="register/cancel")
	public String step3(@ModelAttribute("board") BoardVO board,SessionStatus session) throws Exception{
		session.setComplete();
		
		return "redirect:/";
	}
	
	@RequestMapping(path="/register/{menu}/{idx:[0-9]+}")
	public void path(@PathVariable("menu") String menu,
					 @PathVariable("idx") int boNo,
					 @RequestParam("use") String use,
					 HttpServletResponse resp) throws Exception {
		PrintWriter out = resp.getWriter();
		
		String alertStr = "menu :" + menu + "<br>idx :" + boNo + "<br>use :" + use;
		
		out.println("<script>alert('"+alertStr+"');</script>");
	}
	
	@ModelAttribute("board")
	public BoardVO getBoardVO() {
		return new BoardVO();
	}
}
