package fr.cytech.projetJava.rate;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.cytech.projetJava.login.User;
import fr.cytech.projetJava.character.Character;
import fr.cytech.projetJava.character.CharacterService;

@Service
public class CharacterRatesService {

    @Autowired
    CharacterService characterService;

    @Autowired
    CharacterRatesRepository characterRatesRepository;

    // Calculates average of a character
    public void setCharacterRateAvg(Character character){
        CharacterRates[] tab = characterRatesRepository.findByCharacter(character);
        int n = tab.length;
        double characterAvg = 0;
        // si il n'y a pas de notes on retourne 3 (la moyenne entre 1 et 5)
        if(n == 0){
            characterAvg = 3;
        } else {
            for (CharacterRates r: tab){
                characterAvg += r.getValue();
            }
            characterAvg = characterAvg/n;
        }
        characterService.editCharacterRate(character, characterAvg);
    }

    // Create or Update
    public void addCharacterRate(User user, Character character, int value){
        CharacterRates cr = characterRatesRepository.findByCharacterAndUser(character, user);
        CharacterRates rate = new CharacterRates();
        // Si l'utilisateur n'a pas deja note ce film, on ajoutes les nouvelles informations dans la table
        if (Objects.isNull(cr)){
            rate.setValue(value);
            rate.setCharacter(character);
            rate.setUser(user);
            characterRatesRepository.save(rate); 
        // sinon on remplace sa note
        } else {
            cr.setValue(value);
            characterRatesRepository.save(cr);  
        }
        setCharacterRateAvg(character);
    }

    // Read
    public CharacterRates getCharacterRateByCharacterAndUser(Character character, User user){
        return characterRatesRepository.findByCharacterAndUser(character, user);
    }

    // Delete
    public void deleteCharacterRate(CharacterRates characterRate){
        characterRatesRepository.delete(characterRate);
        // on récupère le personnage noté et on met à jour sa note moyenne
        Character character = characterRate.getCharacter();
        setCharacterRateAvg(character);

    }
}
