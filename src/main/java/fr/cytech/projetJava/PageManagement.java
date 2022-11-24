package fr.cytech.projetJava;

import org.springframework.web.bind.annotation.GetMapping;

public class PageManagement{

    @GetMapping("/")
	public String index() {
		return "index";
	}

    @GetMapping("/films")
	public String films() {
		return "films";
	}
}