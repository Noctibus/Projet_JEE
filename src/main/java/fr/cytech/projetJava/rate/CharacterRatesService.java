package fr.cytech.projetJava.rate;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.cytech.projetJava.login.User;
import fr.cytech.projetJava.character.Character;

@Service
public class CharacterRatesService {

    @Autowired
    CharacterRatesRepository characterRatesRepository;

    // Calculates average of a character
    public double getRateAvg(Character character){
        CharacterRates[] tab = characterRatesRepository.findByCharacter(character);
        int n = tab.length;
        // si il n'y a pas de notes on retourne 3 (la moyenne entre 1 et 5)
        if(n == 0){
            return 3;
        }
        double avg = 0;
        for (CharacterRates r: tab){
            avg += r.getValue();
        }
        return avg/n;
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
    }

    // Read
    public CharacterRates getCharacterRateByCharacterAndUser(Character character, User user){
        return characterRatesRepository.findByCharacterAndUser(character, user);
    }

    // Delete
    public void deleteCharacterRate(CharacterRates characterRate){
        characterRatesRepository.delete(characterRate);
    }
}
