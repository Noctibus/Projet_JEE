package fr.cytech.projetJava.login;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	@Autowired
 	UserRepository userRepository;
	public User user = new User();

	public String check(User user) {
		String page = "notLogged2";
		boolean res = false;
		User usr = userRepository.findByUsername(user.getUsername());
		System.out.println("User = " + user);
		System.out.println("Usr  = " + usr);
		if (!Objects.isNull(usr)) {
<<<<<<< HEAD
			if (usr.getPassword().equals(user.getPassword())) {
=======
			if (usr.getPassword().equals(password)) {
>>>>>>> parent of 117ae80 (Register)
				page = "logged";
			}
		}
		System.out.println("Page ====== " + page);
		System.out.println("Exists = " + res);
		return page;
	}

	@GetMapping("/login")
	public String login(Model model) {
		System.out.println(user);
		// model.addAttribute("user", user);
		return "login"; // page (html, xml ou autre) à afficher
	}
	
<<<<<<< HEAD
	@RequestMapping(value="/logged", method=RequestMethod.POST)
	public String logging(@RequestParam("username") String username, @RequestParam("password") String password) {
		System.out.println("+++++++++++++++++\nUsername = " + username);
		user.setUsername(username);
		user.setPassword(password);
		return check(user);
	}
=======
	@PostMapping("/logged")
	public String logged() {
		// System.out.println("+++++++++++++++++\nUsername = " + username);
		return "/logged";
	}
	
	@GetMapping("/register")
	public String register(Model model) {
		return "register";
	}

	@PostMapping("/registerNewUser")
	public String registerNewUser(Model model,@RequestParam("username") String username,@RequestParam("password1") String password1,@RequestParam("password2") String password2) {
		boolean res = true;
		String page = "register";
		User usr = userRepository.findByUsername(user.getUsername());
		if (!Objects.isNull(usr) || !password1.equals(password2)) {
			res = false;
		}
		if (res) {
			user.setUsername(username);
			user.setPassword(password1);
			userRepository.save(user);
			page = "logged";
		}
		return page;
	}
	
>>>>>>> parent of 117ae80 (Register)
}