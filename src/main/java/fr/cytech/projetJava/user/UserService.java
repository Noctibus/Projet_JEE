package fr.cytech.projetJava.user;

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

    @Autowired
    UserInformationsService userInformationsService;

    
    //CREATE
    public void createUser(String username,String password,String emailAddress,int age,String gender) {
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        UserInformations userInformations=new UserInformations();
        userInformations.setUser(user);
        userInformations.setEmailAddress(emailAddress);;
        userInformations.setAge(age);;
        userInformations.setGender(gender);;
        userInformationsService.createUserInformations(userInformations);
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
