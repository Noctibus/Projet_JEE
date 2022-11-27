package fr.cytech.projetJava.comments;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CharacterCommentRepository extends JpaRepository<CharacterComment,Integer>{

    public List<CharacterComment> findByUserID(int userID);
    public List<CharacterComment> findByCharacterID(int characterID);
    
}