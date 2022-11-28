package fr.cytech.projetJava.comments;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.cytech.projetJava.login.User;
import fr.cytech.projetJava.character.Character;

@Service
public class CharacterCommentService {
    

    @Autowired
    private CharacterCommentRepository characterCommentRepository;


    //CREATE
    public void writeCharacterComment(User user,Character character,Date date,String content) {
        CharacterComment characterComment=new CharacterComment();
        characterComment.setUser(user);
        characterComment.setCharacter(character);
        characterComment.setDate(date);
        characterComment.setContent(content.substring(0, 499));
        characterCommentRepository.save(characterComment);
    }

    //READ
    public List<CharacterComment> getAllCharacterComments() {
        return characterCommentRepository.findAll();
    }

    public List<CharacterComment> getCharacterCommentsByCharacter(Character character) {
        return characterCommentRepository.findByCharacter(character);
    }

    public List<CharacterComment> getCharacterCommentsByCharacterNewestFirst(Character character) {
        return characterCommentRepository.findByCharacterOrderByDateDesc(character);
    }

    public List<CharacterComment> getCharacterCommentsByCharacterOldestFirst(Character character) {
        return characterCommentRepository.findByCharacterOrderByDateAsc(character);
    }

    public List<CharacterComment> getCharacterCommentsByUser(User user) {
        return characterCommentRepository.findByUser(user);
    }

    public List<CharacterComment> getCharacterCommentsByUserNewestFirst(User user) {
        return characterCommentRepository.findByCharacterOrderByDateDesc(user);
    }

    public List<CharacterComment> getCharacterCommentsByUserOldestFirst(User user) {
        return characterCommentRepository.findByCharacterOrderByDateAsc(user);
    }

    //UPDATE
    public void editCharacterComment(CharacterComment characterComment,String newContent) {
        characterComment.setDate(new Date());
        characterComment.setContent(newContent.substring(0, 499));
        characterCommentRepository.save(characterComment);
    }

    //DELETE
    public void removeCharacterComment(CharacterComment characterComment) {
        characterCommentRepository.delete(characterComment);
    }


}