package fr.cytech.projetJava.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
 	private UserRepository userRepository;

    public User getUserByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    public void saveUser(User user) {
        userRepository.save(user);
    }

    public String checkSessionUser(String goodPage, HttpSession session) {
		User user = (User)session.getAttribute("user");
		if(user != null) {
			return goodPage;
		}
		return "/login";
	}
}
