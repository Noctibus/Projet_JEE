package fr.cytech.projetJava.user;

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
	UserInformationsService userInformationsService;

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
		User user = userService.getByUsername(username);
		if (!Objects.isNull(user)) {
			if (user.getPassword().equals(userService.hashPassword(password))) {
				page = "redirect:index";
				session.setAttribute("user",user);
				session.setAttribute("userInformations",userInformationsService.getUserInformations(user));
			} else {
				session.setAttribute("error", "Identifiant et/ou mot de passe incorrect(s).");}
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
				User newUser=new User();
				newUser.setUsername(username);
				newUser.setPassword(pswd2);
				session.setAttribute("userTmp",newUser);
				page = "redirect:personalInformations";
			} else {
				session.setAttribute("error", "Les mots de passe ne correspondent pas.");
			}
		} else {
			session.setAttribute("error", "Cet identifiant est déjà pris, veuillez en choisir un autre.");
		}
		return page;
	}

	@GetMapping("/personalInformations")
	public String personalInformations() {
		return "personalInformations";
	}

	@PostMapping("/personalInformations")
	public String editPersonalInformations(HttpSession session,@RequestParam(name="emailAddress") String emailAddress,@RequestParam(name="age") int age,@RequestParam(name="gender",defaultValue="Non renseigné") String gender) {
		User userTmp=(User)session.getAttribute("userTmp");
		if(userTmp!=null) {
			userService.createUser(userTmp.getUsername(),userTmp.getPassword(),emailAddress,age,gender);
			userTmp=userService.getByUsername(userTmp.getUsername());
			session.setAttribute("user",userTmp);
			session.setAttribute("userInformations",userInformationsService.getUserInformations(userTmp));
			session.removeAttribute("userTmp");
		} else {
			User connectedUser=(User)session.getAttribute("user");
			userInformationsService.changeEmailAddress(connectedUser, emailAddress);
			userInformationsService.changeAge(connectedUser, age);
			userInformationsService.changeGender(connectedUser, gender);
			session.setAttribute("userInformations",userInformationsService.getUserInformations(connectedUser));
		}
		return "redirect:userPage";
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

	@GetMapping("/changePassword")
	public String changePassword() {
		return "changePassword";
	}

	@PostMapping("/changePassword")
	public String changePassword(HttpSession session,@RequestParam("currentPassword") String currentPassword,@RequestParam("newPassword1") String newPassword1,@RequestParam("newPassword2") String newPassword2) throws NoSuchAlgorithmException {
		String newPassword1Hashed=userService.hashPassword(newPassword1),newPassword2Hashed=userService.hashPassword(newPassword2),currentPasswordHashed=userService.hashPassword(currentPassword),page="changePassword";
        if(currentPasswordHashed.equals(((User)session.getAttribute("user")).getPassword())) {
			if (newPassword1Hashed.equals(newPassword2Hashed)) {
				userService.changePassword((User)session.getAttribute("user"),newPassword1Hashed);
				page="redirect:userPage";
			} else {
				session.setAttribute("error", "Les mots de passe ne correspondent pas.");
			}
		} else {
			session.setAttribute("error", "Mot de passe actuel incorrect.");
		}
		return page;
	}



	@GetMapping("/error")
	public String error() {
		return "error";
	}
}
