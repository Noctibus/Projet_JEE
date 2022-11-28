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
        movieComment.setContent(content.substring(0, 499));
        movieCommentRepository.save(movieComment);
    }

    //READ
    public List<MovieComment> getAllMovieComments() {
        return movieCommentRepository.findAll();
    }

    public List<MovieComment> getMovieCommentsByMovie(Movie movie) {
        return movieCommentRepository.findByMovie(movie);
    }

    public List<MovieComment> getMovieCommentsByMovieNewestFirst(Movie movie) {
        return movieCommentRepository.findByMovieOrderByDateDesc(movie);
    }

    public List<MovieComment> getMovieCommentsByMovieOldestFirst(Movie movie) {
        return movieCommentRepository.findByMovieOrderByDateAsc(movie);
    }

    public List<MovieComment> getMovieCommentsByUser(User user) {
        return movieCommentRepository.findByUser(user);
    }

    public List<MovieComment> getMovieCommentsByUserNewestFirst(User user) {
        return movieCommentRepository.findByMovieOrderByDateDesc(user);
    }

    public List<MovieComment> getMovieCommentsByUserOldestFirst(User user) {
        return movieCommentRepository.findByMovieOrderByDateAsc(user);
    }

    //UPDATE
    public void editMovieComment(MovieComment movieComment,String newContent) {
        movieComment.setDate(new Date());
        movieComment.setContent(newContent.substring(0, 499));
        movieCommentRepository.save(movieComment);
    }

    //DELETE
    public void removeMovieComment(MovieComment movieComment) {
        movieCommentRepository.delete(movieComment);
    }

    
}