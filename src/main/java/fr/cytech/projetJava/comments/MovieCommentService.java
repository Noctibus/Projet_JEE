package fr.cytech.projetJava.comments;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieCommentService {


    @Autowired
    private MovieCommentRepository movieCommentRepository;


    public Iterable<MovieComment> getAllMovieComments() {
        return movieCommentRepository.findAll();
    }

    public Optional<MovieComment> getMovieCommentsByMovieID(int movieID) {
        return movieCommentRepository.findByMovieID(movieID);
    }

    public Optional<MovieComment> getMovieCommentsByUserID(int userID) {
        return movieCommentRepository.findByUserID(userID);
    }

    
}