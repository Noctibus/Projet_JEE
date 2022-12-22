package fr.cytech.projetJava;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class FrontController {

    @GetMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("/index")
	public String indexBis() {
		return "redirect:";
	}

	@PostMapping("/index")
	public String indexTer() {
		return "redirect:index";
	}

	@GetMapping("/contact")
	public String contact() {
		return "contact";
	}
	
}