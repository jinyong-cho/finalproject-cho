package org.kh.info.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InfoController {

	@RequestMapping("/infoMain.do")
	public String infoMain() {
		return "info/info";
	}
}
