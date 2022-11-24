package fr.cytech.projetJava;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import fr.cytech.projetJava.login.User;
import fr.cytech.projetJava.login.UserRepository;

@SpringBootApplication
public class ProjetJavaApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProjetJavaApplication.class, args);
	}

	@Autowired
 	UserRepository userRepository;
	 
	@Bean
    public CommandLineRunner CommandLineRunnerBean() {
        return (args) -> {
            System.out.println("Démarrage en cours...");

        	// creer le nouvel utilisateur Bob

            //User user = new User();
            // user.setUsername("Bob");
            // user.setPassword("0000");
            // userRepository.save(user);
            
            for(User tmp : userRepository.findAll()) {
            	System.out.println(tmp);
            }
        };
    }
}
