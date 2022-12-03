package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BookController {
	@Autowired
	private CliDB clidb;

	@RequestMapping(value = "/bookcheck")
	public String Book() {
		
		return "/bookinput";
	}

	@RequestMapping(value = "/seat", method = RequestMethod.GET)
	public String getClient(Model model, @RequestParam(value = "seq", required = false, defaultValue = "0") int seq) {

		List<Client> cli = clidb.select();
		model.addAttribute("cli", cli);
		return "/seat";
	}

	@RequestMapping(value = "/book", method = RequestMethod.GET)
	public String adinput(Model model) {
		model.addAttribute("cli", new Client());
		return "/book";
	}

	@RequestMapping(value = "/book.do", method = RequestMethod.POST)
	public String eprocess3(@ModelAttribute Client ret, Model model) {
		model.addAttribute("cli", ret);
		clidb.create(ret);
		return "/result";
	}

	@RequestMapping(value = "/bookcheck.do", method = RequestMethod.GET)
	public String getClient(Model model, @RequestParam(value = "phonenum", required = false, defaultValue = "0") String phonenum) {

		Client cli = clidb.select(phonenum);
		model.addAttribute("cli", cli);
		return "/bookcheck";
	}
	@RequestMapping(value = "/seatinfo.do", method = RequestMethod.GET)
	public String getSetinfo(Model model, @RequestParam(value = "tablenum", required = false, defaultValue = "0") int tablenum) {

		Client cli = clidb.select(tablenum);
		model.addAttribute("cli", cli);
		return "/seatinfo";
	}
	@RequestMapping(value = "/check.info", method = RequestMethod.POST)
	public String bookcheck(@ModelAttribute Client ret, Model model) {
		model.addAttribute("msg", ret);
		return "/checkbook";
	}
	@RequestMapping(value = "/delete.do", method = RequestMethod.GET)
	public String delete(@RequestParam(value = "phonenum", required = true) String phonenum) {
		clidb.delete(phonenum);
		return "redirect:/seat";
	}
}
