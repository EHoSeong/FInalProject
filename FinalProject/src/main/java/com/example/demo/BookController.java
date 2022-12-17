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
	public String Bookcheck() {
		return "/bookinput";
	}

	@RequestMapping(value = "/book")
	public String Book() {
		return "/book";
	}

	@RequestMapping(value = "/seat", method = RequestMethod.GET)
	public String getSeat(Model model) {
		return "/seat";
	}

	@RequestMapping(value = "/seatinfo1", method = RequestMethod.GET)
	public String seatcheck1(Model model) {
		List<Client> cli = clidb.select1();
		model.addAttribute("cli", cli);
		return "/seatinfo";
	}

	@RequestMapping(value = "/seatinfo2", method = RequestMethod.GET)
	public String seatcheck2(Model model) {
		List<Client> cli = clidb.select2();
		model.addAttribute("cli", cli);
		return "/seatinfo";
	}

	@RequestMapping(value = "/seatinfo3", method = RequestMethod.GET)
	public String seatcheck3(Model model) {
		List<Client> cli = clidb.select3();
		model.addAttribute("cli", cli);
		return "/seatinfo";
	}

	@RequestMapping(value = "/seatinfo4", method = RequestMethod.GET)
	public String seatcheck4(Model model) {
		List<Client> cli = clidb.select4();
		model.addAttribute("cli", cli);
		return "/seatinfo";
	}

	@RequestMapping(value = "/seatinfo5", method = RequestMethod.GET)
	public String seatcheck5(Model model) {
		List<Client> cli = clidb.select5();
		model.addAttribute("cli", cli);
		return "/seatinfo";
	}

	@RequestMapping(value = "/seatinfo6", method = RequestMethod.GET)
	public String seatcheck6(Model model) {
		List<Client> cli = clidb.select6();
		model.addAttribute("cli", cli);
		return "/seatinfo";
	}

	@RequestMapping(value = "/seatinfo7", method = RequestMethod.GET)
	public String seatcheck7(Model model) {
		List<Client> cli = clidb.select7();
		model.addAttribute("cli", cli);
		return "/seatinfo";
	}

	@RequestMapping(value = "/seatinfo8", method = RequestMethod.GET)
	public String seatcheck8(Model model) {
		List<Client> cli = clidb.select8();
		model.addAttribute("cli", cli);
		return "/seatinfo";
	}

	@RequestMapping(value = "/book.do", method = RequestMethod.POST)
	public String create(@ModelAttribute Client ret, Model model) {
		model.addAttribute("cli", ret);
		if (ret.getTablenum() == 1) {
			clidb.whole(ret);
			clidb.create1(ret);
		} else if (ret.getTablenum() == 2) {
			clidb.whole(ret);
			clidb.create2(ret);
		} else if (ret.getTablenum() == 3) {
			clidb.create3(ret);
			clidb.whole(ret);
		} else if (ret.getTablenum() == 4) {
			clidb.create4(ret);
			clidb.whole(ret);
		} else if (ret.getTablenum() == 5) {
			clidb.create5(ret);
			clidb.whole(ret);
		} else if (ret.getTablenum() == 6) {
			clidb.create6(ret);
			clidb.whole(ret);
		} else if (ret.getTablenum() == 7) {
			clidb.create7(ret);
			clidb.whole(ret);
		} else {
			clidb.create8(ret);
			clidb.whole(ret);
		}

		return "/result";
	}

	@RequestMapping(value = "/bookcheck.do", method = RequestMethod.GET)
	public String getClient(Model model,
			@RequestParam(value = "phonenum", required = false, defaultValue = "0") String phonenum) {

		Client cli = clidb.select(phonenum);
		model.addAttribute("cli", cli);
		return "/bookcheck";
	}

	@RequestMapping(value = "/seatinfo.do", method = RequestMethod.GET)
	public String getSetinfo(Model model,
			@RequestParam(value = "tablenum", required = false, defaultValue = "0") int tablenum) {

		Client cli = clidb.select(tablenum);
		model.addAttribute("cli", cli);
		return "/seatinfo";
	}

	@RequestMapping(value = "/delete.do", method = RequestMethod.GET)
	public String delete(@RequestParam(value = "phonenum", required = true) String phonenum) {
		clidb.delete(phonenum);
		return "redirect:/seat";
	}
}
