package fr.cytech.projetJava.comments;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieCommentService {


    @Autowired
    private MovieCommentRepository movieCommentRepository;


    //CREATE
    public void writeMovieComment(int userID,int movieID,Date date,String content) {
        MovieComment movieComment=new MovieComment();
        movieComment.setUserID(userID);
        movieComment.setMovieID(movieID);
        movieComment.setDate(date);
        movieComment.setContent(content);
        movieCommentRepository.save(movieComment);
    }

    //READ
    public List<MovieComment> getAllMovieComments() {
        return movieCommentRepository.findAll();
    }

    public List<MovieComment> getMovieCommentsByMovieID(int movieID) {
        return movieCommentRepository.findByMovieID(movieID);
    }

    public List<MovieComment> getMovieCommentsByUserID(int userID) {
        return movieCommentRepository.findByUserID(userID);
    }

    //UPDATE
    public void editMovieComment(int id,String newContent) {
        MovieComment movieComment=movieCommentRepository.findById(id);
        movieComment.setDate(new Date());
        movieComment.setContent(newContent);
        movieCommentRepository.save(movieComment);
    }

    //REMOVE
    public void removeMovieComment(int id) {
        MovieComment movieComment=movieCommentRepository.findById(id);
        movieCommentRepository.delete(movieComment);
    }

    
}