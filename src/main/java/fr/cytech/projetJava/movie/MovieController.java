package fr.cytech.projetJava.movie;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fr.cytech.projetJava.comments.MovieCommentService;
import fr.cytech.projetJava.login.User;

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

    @PostMapping("/saveMovieComment")
    public String saveMovieComment(@RequestParam("text") String text,@RequestParam("nb") String nb,HttpSession session) {
        User connectedUser=(User)session.getAttribute("user");
        String page="redirect:/movie?nb="+nb;
        if(connectedUser==null) {
            page="redirect:/login";
        } else if(!(text.isBlank())) {
            movieCommentService.writeMovieComment(connectedUser,movieService.getById(Integer.valueOf(nb)+1),new Date(),text);
        }
        return page;
    }

}
