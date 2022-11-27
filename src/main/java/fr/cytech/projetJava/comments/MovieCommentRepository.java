package fr.cytech.projetJava.comments;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MovieCommentRepository extends JpaRepository<MovieComment,Integer>{

    public Optional<MovieComment> findByMovieID(int movieID);
    public Optional<MovieComment> findByUserID(int userID);
    
}