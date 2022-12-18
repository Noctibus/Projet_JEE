package fr.cytech.projetJava.login;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
 	private UserRepository userRepository;

    
    //CREATE
    public void createUser(String username, String password) {
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        userRepository.save(user);
    }

    //READ
    public User getByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    //UPDATE
    public void changePassword(User user,String newPassword) {
        user.setPassword(newPassword);
        userRepository.save(user);
    }

    //DELETE
    public void deleteUser(User user) {
        userRepository.delete(user);
    }

    //OTHER
    public boolean isConnected(HttpSession session) {
		User user = (User)session.getAttribute("user");
		return(user != null);
	}

    public String hashPassword(String password) throws NoSuchAlgorithmException {
        String hashedPassword = "";
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
		messageDigest.update(password.getBytes());
		hashedPassword = new String(messageDigest.digest());
        return hashedPassword;
    }
}
