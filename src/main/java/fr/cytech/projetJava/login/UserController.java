package fr.cytech.projetJava.login;

import java.security.NoSuchAlgorithmException;
import java.util.Objects;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fr.cytech.projetJava.comments.CharacterCommentService;
import fr.cytech.projetJava.comments.MovieCommentService;
import fr.cytech.projetJava.rate.MovieRatesService;
import fr.cytech.projetJava.rate.CharacterRatesService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;

	@Autowired
	MovieCommentService movieCommentService;

	@Autowired
	CharacterCommentService characterCommentService;

	@Autowired
	MovieRatesService movieRatesService;

	@Autowired
	CharacterRatesService characterRatesService;


	@PostMapping("/checkUser")
	public String checkUser(HttpSession session, @RequestParam("username") String username, @RequestParam("password") String password) throws NoSuchAlgorithmException {
		String page = "redirect:login";
		User usr = userService.getByUsername(username);
		if (!Objects.isNull(usr)) {
			if (usr.getPassword().equals(userService.hashPassword(password))) {
				page = "redirect:index";
				session.setAttribute("user", usr);
			} else {
				session.setAttribute("error", "Mot de passe incorrect.");}
		}
		return page;
	}

	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/register")
	public String register() {
		return "register";
	}

	@PostMapping("/registerNewUser")
	public String registerNewUser(HttpSession session, Model model,@RequestParam("username") String username,@RequestParam("password1") String password1,@RequestParam("password2") String password2) throws NoSuchAlgorithmException {

		String pswd1 = userService.hashPassword(password1);
		String pswd2 = userService.hashPassword(password2);

		String page = "redirect:register";
		User alreadyExists = userService.getByUsername(username);
        if(alreadyExists==null) {
			if (pswd1.equals(pswd2)) {
				userService.createUser(username, pswd1);
				session.setAttribute("user",userService.getByUsername(username));
				page = "redirect:index";
			} else {
				session.setAttribute("error", "Les mots de passe ne correspondent pas.");
			}
		} else {
			session.setAttribute("error", "Cet identifiant est déjà pris, veuillez en choisir un autre.");
		}
		return page;
	}
	
	@GetMapping("/userPage")
	public String userPage(HttpSession session) {
		if (userService.isConnected(session)) {
			return ((User)session.getAttribute("user")).isAdministrator() ? "redirect:adminUserPage" : "redirect:commonUserPage";
		}
		return "redirect:login";
	}
	
	@GetMapping("/commonUserPage")
	public String commonUserPage(Model model,HttpSession session) {
		model.addAttribute("movieComments",this.movieCommentService.getMovieCommentsByUserOrderByMovie((User)session.getAttribute("user")));
		model.addAttribute("characterComments",this.characterCommentService.getCharacterCommentsByUserOrderByCharacter((User)session.getAttribute("user")));
		model.addAttribute("movieRates",this.movieRatesService.getMovieRatesByUserOrderByMovie((User)session.getAttribute("user")));
		model.addAttribute("characterRates",this.characterRatesService.getCharacterRatesByUserOrderByCharacter((User)session.getAttribute("user")));
		return "commonUserPage";
	}

	@GetMapping("/adminUserPage")
	public String adminUserPage() {
		return "adminUserPage";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index";
	}

	@GetMapping("/deleteUser")
	public String deleteUser(HttpSession session) {
		if (userService.isConnected(session)) {
			userService.deleteUser((User)session.getAttribute("user"));
			session.invalidate();
		}
		return "redirect:index";
	}

	@GetMapping("/error")
	public String error() {
		return "error";
	}
}
