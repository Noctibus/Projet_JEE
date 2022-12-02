package fr.cytech.projetJava.movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import fr.cytech.projetJava.comments.MovieCommentService;

@Controller
public class MovieController {

    
    @Autowired
    private MovieService movieService;

    @Autowired
    private MovieCommentService movieCommentService;


    @GetMapping("/movies")
    public String showPostersMovies(Model model) {
        List<Movie> movies = this.movieService.getAllMovies();
        model.addAttribute("movies", movies);
        return "movies";
    }

    @GetMapping("/movie")
    public String showPostersMovie(Model model) {
        List<Movie> movies = this.movieService.getAllMovies();
        model.addAttribute("movies", movies);
        model.addAttribute("comments",this.movieCommentService.getAllMovieComments());
        return "movie";
    }

}
