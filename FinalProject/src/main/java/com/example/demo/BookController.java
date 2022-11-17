package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class BookController {
	@RequestMapping(value ="/book")
	public String Book() {
		
		return "/book";
	}
	
	@GetMapping(value = "/check")
	public String booksend(Model model) {
		model.addAttribute("msg",new Client());
		return "/check";
	}
	@PostMapping(value = "/check.do")
	public String bookcheck(@ModelAttribute Client ret, Model model) {
		model.addAttribute("msg",ret);
		return "/checkbook";
	}
}
