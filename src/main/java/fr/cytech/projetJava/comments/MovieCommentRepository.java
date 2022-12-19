package fr.cytech.projetJava.comments;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fr.cytech.projetJava.movie.Movie;
import fr.cytech.projetJava.user.User;

@Repository
public interface MovieCommentRepository extends JpaRepository<MovieComment,Integer>{

    public MovieComment findById(int ID);
    public List<MovieComment> findAll();
    public List<MovieComment> findByUserOrderByMovie(User user);
    public List<MovieComment> findByMovie(Movie movie);
    public List<MovieComment> findByMovieOrderByDateDesc(Movie movie);
    public List<MovieComment> findByMovieOrderByDateAsc(Movie movie);
    public List<MovieComment> findByUser(User user);
    public List<MovieComment> findByMovieOrderByDateDesc(User user);
    public List<MovieComment> findByMovieOrderByDateAsc(User user);
    
}