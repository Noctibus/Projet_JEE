package fr.cytech.projetJava;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import fr.cytech.projetJava.comments.CharacterComment;
import fr.cytech.projetJava.comments.CharacterCommentService;
import fr.cytech.projetJava.comments.MovieComment;
import fr.cytech.projetJava.comments.MovieCommentService;
import fr.cytech.projetJava.login.User;
import fr.cytech.projetJava.login.UserRepository;
import fr.cytech.projetJava.character.Character;
import fr.cytech.projetJava.character.CharacterRepository;

@SpringBootApplication
public class ProjetJavaApplication implements CommandLineRunner {
    

	public static void main(String[] args) {
		SpringApplication.run(ProjetJavaApplication.class, args);
	}

    @Override
    public void run(String... args) throws Exception {
        System.out.println("Démarrage en cours...");
    }


}
