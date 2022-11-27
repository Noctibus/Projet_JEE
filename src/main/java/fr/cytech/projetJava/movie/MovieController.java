package fr.cytech.projetJava.movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class MovieController {
    
        @Autowired
        private MovieRepository movieRepository;
        private Movie movie = new Movie();
    
        public void showPoster(int id) {
            this.movie = this.movieRepository.findById(id);
           
            System.out.println("<img src=" + this.movie.toString() +" />");
            
        }
    
}
