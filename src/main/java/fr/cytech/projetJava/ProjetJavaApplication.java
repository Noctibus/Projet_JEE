package fr.cytech.projetJava;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

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
        };
    }
}
