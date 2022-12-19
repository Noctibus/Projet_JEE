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
import fr.cytech.projetJava.rate.CharacterRates;
import fr.cytech.projetJava.rate.CharacterRatesService;
import fr.cytech.projetJava.user.User;

@Controller
public class CharacterController {


    @Autowired
    private CharacterService characterService;

    @Autowired
    private CharacterCommentService characterCommentService;

    @Autowired
    private CharacterRatesService characterRatesService;
    

    @GetMapping("/characters")
	public String characters(Model model) {
        List<Character> characters = this.characterService.getAllCharacters();
        model.addAttribute("characters", characters);
		return "characters";
	}

	@GetMapping("/character")
	public String character(Model model,@RequestParam("charId") int charId) {
        Character character = this.characterService.getById(charId);
        String page = "character";
        if (character==null){
            page = "/error";
        }
        model.addAttribute("character",character);
        model.addAttribute("comments",this.characterCommentService.getCharacterCommentsByCharacter(character));
		return page;
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

    @GetMapping("deleteCharacterComment")
    public String deleteCharacterComment(@RequestParam("characterCommentId") int characterCommentId,@RequestParam("charId") int charId,@RequestParam(name="requestOrigin",defaultValue="character") String requestOrigin) {
        characterCommentService.deleteCharacterComment(characterCommentService.getById(characterCommentId));
        return requestOrigin.equals("character") ? "redirect:/"+requestOrigin+"?charId="+charId : "redirect:/"+requestOrigin;
    }

    @GetMapping("putCharacterRate")
    public String addCharacterRate(@RequestParam("value") int value, @RequestParam("charId") int charId,@RequestParam(name="requestOrigin",defaultValue="character") String requestOrigin,HttpSession session) {
        User connectedUser=(User)session.getAttribute("user");
        String page=(requestOrigin.equals("character") ? "redirect:/"+requestOrigin+"?charId="+charId : "redirect:/"+requestOrigin);
        Character character = characterService.getById(charId);
        CharacterRates characterRate = characterRatesService.getCharacterRateByCharacterAndUser(character, connectedUser);
        if(connectedUser==null) {
            page="redirect:/login";
        } else if(characterRate!=null && value==characterRate.getValue()) {
            characterRatesService.deleteCharacterRate(characterRatesService.getCharacterRateByCharacterAndUser(character, connectedUser));
        } else {
            characterRatesService.addCharacterRate(connectedUser, character, value);
        }
        return page;
    }

}
