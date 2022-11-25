package fr.cytech.projetJava;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FrontController{

    @GetMapping(value="/")
	public String index() {
		return "index";
	}

    @GetMapping(value="/films")
	public String films() {
		return "films";
	}
}