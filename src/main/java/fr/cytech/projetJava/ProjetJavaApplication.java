package fr.cytech.projetJava;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

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

        	// cree le nouvel utilisateur Bob

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
