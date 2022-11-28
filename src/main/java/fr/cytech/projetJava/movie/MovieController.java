package fr.cytech.projetJava.movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MovieController {
    
        @Autowired
        private MovieRepository movieRepository;

        @GetMapping("/movies")
        public String showPosters(Model model) {
            List<Movie> movies = this.movieRepository.findAll();
            System.out.println("<img src=" + movies.toString() +" />");
            model.addAttribute("movies", movies);
            return "movies";
        }

    
}
