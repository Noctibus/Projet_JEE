package fr.cytech.projetJava.comments;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CharacterCommentService {
    

    @Autowired
    private CharacterCommentRepository characterCommentRepository;


    public List<CharacterComment> getAllCharacterComments() {
        return characterCommentRepository.findAll();
    }

    public List<CharacterComment> getCharacterCommentsByCharacterID(int characterID) {
        return characterCommentRepository.findByCharacterID(characterID);
    }

    public List<CharacterComment> getCharacterCommentsByUserID(int userID) {
        return characterCommentRepository.findByUserID(userID);
    }


}