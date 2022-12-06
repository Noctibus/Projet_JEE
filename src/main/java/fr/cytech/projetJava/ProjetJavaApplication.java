package fr.cytech.projetJava;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

<<<<<<< HEAD
=======
import fr.cytech.projetJava.comments.CharacterComment;
import fr.cytech.projetJava.comments.CharacterCommentService;
import fr.cytech.projetJava.comments.MovieComment;
import fr.cytech.projetJava.comments.MovieCommentService;
import fr.cytech.projetJava.login.User;
>>>>>>> 75a1ddbd6cd24e59c28756f1c12125b1b05c28c1
import fr.cytech.projetJava.login.UserRepository;
import fr.cytech.projetJava.character.Character;
import fr.cytech.projetJava.character.CharacterRepository;

@SpringBootApplication
public class ProjetJavaApplication implements CommandLineRunner {
    

	public static void main(String[] args) {
		SpringApplication.run(ProjetJavaApplication.class, args);
	}

<<<<<<< HEAD
	@Autowired
 	UserRepository userRepository;
	 
	@Bean
    public CommandLineRunner CommandLineRunnerBean() {
        return (args) -> {
            System.out.println("Démarrage en cours...");
        };
=======
    @Override
    public void run(String... args) throws Exception {
        System.out.println("Démarrage en cours...");
>>>>>>> 75a1ddbd6cd24e59c28756f1c12125b1b05c28c1
    }


}
