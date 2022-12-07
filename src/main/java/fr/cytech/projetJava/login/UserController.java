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

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	public User user;

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
	public String login(Model model, HttpSession session) {
		// if (user == null) {
		// 	user = new User();
		// }
		return "login";
	}
	
	@GetMapping("/register")
	public String register(Model model, HttpSession session) {
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
				user = userService.getByUsername(username);
				session.setAttribute("user", user);
				page = "redirect:index";
			} else {
				session.setAttribute("error", "Les mots de passe ne correspondent pas.");
			}
		} else {
			session.setAttribute("error", "Cet identifiant est déjà pris, veuillez en choisir un autre.");
		}
		return page;
	}
	
	@GetMapping("/logged")
	public String logged(HttpSession session) {
		if (userService.isConnected(session)) {
			return "logged";
		}
		return "redirect:login";
	}
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index";
	}

	@GetMapping("/removeUser")
	public String removeUser(HttpSession session) {
		if (userService.isConnected(session)) {
			userService.removeUser((User)session.getAttribute("user"));
			session.invalidate();
		}
		return "redirect:index";
	}

	@GetMapping("/error")
	public String error() {
		return "error";
	}
}
