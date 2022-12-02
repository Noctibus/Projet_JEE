package fr.cytech.projetJava.character;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CharacterService {
    

    @Autowired
    CharacterRepository characterRepository;


    //NO NEED TO CREATE

    //READ
    public List<Character> getAllCharacters() {
        return characterRepository.findAll();
    }

    //UPDATE
    public void editCharacterRate(Character character,double newRate) {
        character.setRate(newRate);
        characterRepository.save(character);
    }
}
