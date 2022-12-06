package fr.cytech.projetJava;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

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
