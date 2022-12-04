package fr.cytech.projetJava.character;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fr.cytech.projetJava.comments.CharacterCommentService;
import fr.cytech.projetJava.login.User;

@Controller
public class CharacterController {


    @Autowired
    private CharacterService characterService;

    @Autowired
    private CharacterCommentService characterCommentService;
    

    @GetMapping("/characters")
	public String characters(Model model) {
        List<Character> characters = this.characterService.getAllCharacters();
        model.addAttribute("characters", characters);
		return "characters";
	}

	@GetMapping("/character")
	public String character(Model model) {
        List<Character> characters = this.characterService.getAllCharacters();
        model.addAttribute("characters", characters);
        model.addAttribute("comments",this.characterCommentService.getAllCharacterComments());
		return "character";
	}

    @PostMapping("/saveCharacterComment")
    public String saveCharacterComment(@RequestParam("characterCommentContent") String content,@RequestParam("charId") String charId,HttpSession session) {
        User connectedUser=(User)session.getAttribute("user");
        String page="redirect:/character?charId="+charId;
        if(connectedUser==null) {
            page="redirect:/login";
        } else if(!(content.isBlank())) {
            characterCommentService.writeCharacterComment(connectedUser,characterService.getById(Integer.valueOf(charId)),new Date(),content);
        }
        return page;
    }


}
