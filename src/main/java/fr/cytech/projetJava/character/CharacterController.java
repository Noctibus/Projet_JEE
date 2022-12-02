package fr.cytech.projetJava.character;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CharacterController { 

    @Autowired
    private CharacterService characterService;

    @GetMapping("/characters")
	public String showPostersCharacters(Model model) {
        List<Character> characters = this.characterService.getAllCharacters();
        model.addAttribute("characters", characters);
		return "characters";
	}

	@GetMapping("/character")
	public String showPostersCharacter(Model model) {
        List<Character> characters = this.characterService.getAllCharacters();
        model.addAttribute("characters", characters);
		return "character";
	}   
}
