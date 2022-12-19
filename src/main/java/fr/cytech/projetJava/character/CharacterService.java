package fr.cytech.projetJava.character;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CharacterService {
    

    @Autowired
    CharacterRepository characterRepository;


    //CREATE
    public void addCharacter(String identity,String actor,String origins,boolean status,double rate,String pictureAddress,String... herosName) {
        Character newCharacter=new Character();
        newCharacter.setIdentity(identity);
        newCharacter.setActor(actor);
        newCharacter.setOrigins(origins);
        newCharacter.setAlive(status);
        newCharacter.setRate(rate);
        newCharacter.setPictureAddress(pictureAddress);
        newCharacter.setHerosName(herosName.length>0 ? herosName[0] : null);
        characterRepository.save(newCharacter);
    }

    //READ
    public Character getById(int i) {
        return characterRepository.findById(i);
    }

    public List<Character> getAllCharacters() {
        return characterRepository.findAll();
    }

    //UPDATE
    public void editCharacterRate(Character character,double newRate) {
        character.setRate(newRate);
        characterRepository.save(character);
    }

    //DELETE
    public void deleteCharacter(Character character) {
        characterRepository.delete(character);
    }


}
