package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SeatController {
	@RequestMapping(value ="/seat")
	public String Seat() {
		
		return "/seat";
	}
}
