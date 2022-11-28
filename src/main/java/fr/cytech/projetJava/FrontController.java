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

	@GetMapping("/movie")
	public String movie() {
		return "movie";
	}

	@GetMapping("/characters")
	public String characters() {
		return "characters";
	}

	@GetMapping("/character")
	public String character() {
		return "character";
	}

	
}