package fr.cytech.projetJava.comments;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fr.cytech.projetJava.login.User;
import fr.cytech.projetJava.movie.Movie;

@Repository
public interface MovieCommentRepository extends JpaRepository<MovieComment,Integer>{

    public MovieComment findById(int ID);
    public List<MovieComment> findByMovie(Movie movie);
    public List<MovieComment> findByUser(User user);
    
}