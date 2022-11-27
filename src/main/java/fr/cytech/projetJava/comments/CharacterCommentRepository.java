package fr.cytech.projetJava.comments;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fr.cytech.projetJava.login.User;
import fr.cytech.projetJava.character.Character;

@Repository
public interface CharacterCommentRepository extends JpaRepository<CharacterComment,Integer>{

    public CharacterComment findById(int ID);
    public List<CharacterComment> findAll();
    public List<CharacterComment> findByCharacter(Character character);
    public List<CharacterComment> findByCharacterOrderByDateDesc(Character character);
    public List<CharacterComment> findByCharacterOrderByDateAsc(Character character);
    public List<CharacterComment> findByUser(User user);
    public List<CharacterComment> findByCharacterOrderByDateDesc(User user);
    public List<CharacterComment> findByCharacterOrderByDateAsc(User user);
    
}