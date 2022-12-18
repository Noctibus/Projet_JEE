package fr.cytech.projetJava;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FrontController {

    @GetMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("/index")
	public String indexBis() {
		return "index";
	}

	@GetMapping("/contact")
	public String contact() {
		return "contact";
	}
	
}