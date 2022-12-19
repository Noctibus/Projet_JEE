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
import fr.cytech.projetJava.rate.MovieRates;
import fr.cytech.projetJava.rate.MovieRatesService;

@Controller
public class MovieController {


    @Autowired
    private MovieService movieService;

    @Autowired
    private MovieCommentService movieCommentService;

    @Autowired
    private MovieRatesService movieRatesService;

    
    @GetMapping("/movies")
    public String showPostersMovies(Model model) {
        List<Movie> movies = this.movieService.getAllMovies();
        model.addAttribute("movies", movies);
        return "movies";
    }

    @GetMapping("/movie")
    public String showPostersMovie(Model model,@RequestParam("movieId") int movieId) {
        Movie movie = this.movieService.getById(movieId);
        model.addAttribute("movie", movie);
        model.addAttribute("comments",this.movieCommentService.getMovieCommentsByMovie(movie));
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
    public String deleteMovieComment(@RequestParam("movieCommentId") int movieCommentId,@RequestParam("movieId") int movieId,@RequestParam(name="requestOrigin",defaultValue="movie") String requestOrigin) {
        movieCommentService.deleteMovieComment(movieCommentService.getById(movieCommentId));
        return requestOrigin.equals("movie") ? "redirect:/"+requestOrigin+"?movieId="+movieId : "redirect:/"+requestOrigin;
    }

    @GetMapping("putMovieRate")
    public String addMovieRate(@RequestParam("value") int value,@RequestParam("movieId") int movieId,@RequestParam(name="requestOrigin",defaultValue="movie") String requestOrigin,HttpSession session) {
        User connectedUser=(User)session.getAttribute("user");
        String page=(requestOrigin.equals("movie") ? "redirect:/"+requestOrigin+"?movieId="+movieId : "redirect:/"+requestOrigin);
        Movie movie = movieService.getById(movieId);
        MovieRates movieRate = movieRatesService.getMovieRateByMovieAndUser(movie, connectedUser);
        if(connectedUser==null) {
            page="redirect:/login";
        } else if(movieRate!=null && value==movieRate.getValue()) {
            movieRatesService.deleteMovieRate(movieRatesService.getMovieRateByMovieAndUser(movie, connectedUser));
        } else {
            movieRatesService.addMovieRate(connectedUser, movie, value);
        }
        return page;
    }

}
