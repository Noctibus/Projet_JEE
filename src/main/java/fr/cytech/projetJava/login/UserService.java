package fr.cytech.projetJava.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {


    @Autowired
 	private UserRepository userRepository;


    public User getByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    public User getByID(int id) {
        return userRepository.findById(id);
    }
    
    public boolean createUser(String username, String password) {
        User alreadyExists = userRepository.findByUsername(username);
        if(alreadyExists==null) {
            User user=new User();
            user.setUsername(username);
            user.setPassword(password);
            userRepository.save(user);
        }
        return(alreadyExists==null);
    }

    public boolean isConnected(HttpSession session) {
		User user = (User)session.getAttribute("user");
		return(user != null);
	}
}
