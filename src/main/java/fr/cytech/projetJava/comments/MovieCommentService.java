package fr.cytech.projetJava.comments;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.cytech.projetJava.login.User;
import fr.cytech.projetJava.movie.Movie;

@Service
public class MovieCommentService {


    @Autowired
    private MovieCommentRepository movieCommentRepository;


    //CREATE
    public void writeMovieComment(User user,Movie movie,Date date,String content) {
        MovieComment movieComment=new MovieComment();
        movieComment.setUser(user);
        movieComment.setMovie(movie);
        movieComment.setDate(date);
        movieComment.setContent(content);
        movieCommentRepository.save(movieComment);
    }

    //READ
    public List<MovieComment> getAllMovieComments() {
        return movieCommentRepository.findAll();
    }

    public List<MovieComment> getMovieCommentsByMovie(Movie movie) {
        return movieCommentRepository.findByMovie(movie);
    }

    public List<MovieComment> getMovieCommentsByUser(User user) {
        return movieCommentRepository.findByUser(user);
    }

    //UPDATE
    public void editMovieComment(MovieComment movieComment,String newContent) {
        movieComment.setDate(new Date());
        movieComment.setContent(newContent);
        movieCommentRepository.save(movieComment);
    }

    //REMOVE
    public void removeMovieComment(MovieComment movieComment) {
        movieCommentRepository.delete(movieComment);
    }

    
}