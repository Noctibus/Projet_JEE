package fr.cytech.projetJava;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {

    @GetMapping("/")
	public String index() {
		return "index";
	}

    @GetMapping("/Films")
	public String films() {
		return "films";
	}
}