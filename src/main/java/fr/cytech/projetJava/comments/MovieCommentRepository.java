package fr.cytech.projetJava.comments;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MovieCommentRepository extends JpaRepository<MovieComment,Integer>{

    public MovieComment findById(int ID);
    public List<MovieComment> findByMovieID(int movieID);
    public List<MovieComment> findByUserID(int userID);
    
}