package fr.cytech.projetJava.user;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fr.cytech.projetJava.character.CharacterService;
import fr.cytech.projetJava.movie.MovieService;

@Controller
public class AdminController {

    @Autowired
    MovieService movieService;
    
    @Autowired
    CharacterService characterService;

    
    @GetMapping("/addMovie")
    public String addMovie() {
        return "addMovie";
    }

    @PostMapping(value="/addMovie")
    public String addMovie(HttpSession session,@RequestParam("title") String title,@RequestParam("releaseDate") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) Date releaseDate,@RequestParam("director") String director,@RequestParam("synopsis") String sysnopsis,@RequestParam("pictureAddress") String pictureAddress) {
        if(((User)session.getAttribute("user"))!=null&&((User)session.getAttribute("user")).isAdministrator())
            movieService.addMovie(title, releaseDate, director, sysnopsis, pictureAddress);
        return "redirect:userPage";
    }

    @GetMapping("/addCharacter")
    public String addCharacter() {
        return "addCharacter";
    }

    @PostMapping(value="/addCharacter")
    public String addCharacter(HttpSession session,@RequestParam("identity") String identity,@RequestParam(name="herosName",required = false) String herosName,@RequestParam("actor") String actor,@RequestParam("origins") String origins,@RequestParam(name="status",required=false) boolean status,@RequestParam("pictureAddress") String pictureAddress) {
        if(((User)session.getAttribute("user"))!=null&&((User)session.getAttribute("user")).isAdministrator()) {
            if(herosName.isBlank())
                characterService.addCharacter(identity, actor, origins, status, pictureAddress);
            else
                characterService.addCharacter(identity, actor, origins, status, pictureAddress,herosName);

        }
        return "redirect:userPage";
    }

}
