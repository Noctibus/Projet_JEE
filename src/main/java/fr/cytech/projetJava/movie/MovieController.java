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
    public String saveMovieComment(@RequestParam("movieCommentContent") String content,@RequestParam("movieId") String movieId,HttpSession session) {
        User connectedUser=(User)session.getAttribute("user");
        String page="redirect:/movie?movieId="+movieId;
        if(connectedUser==null) {
            page="redirect:/login";
        } else if(!(content.isBlank())) {
            movieCommentService.writeMovieComment(connectedUser,movieService.getById(Integer.valueOf(movieId)),new Date(),content);
        }
        return page;
    }

    @GetMapping("deleteMovieComment")
    public String deleteMovieComment(@RequestParam("movieCommentId") int movieCommentId,@RequestParam("movieId") int movieId) {
        movieCommentService.deleteMovieComment(movieCommentService.getById(movieCommentId));
        return "redirect:/movie?movieId="+movieId;
    }
    

}
