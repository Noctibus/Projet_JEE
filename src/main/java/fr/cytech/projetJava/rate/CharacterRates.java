package fr.cytech.projetJava.rate;

import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="CharacterRates")
public class CharacterRates {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "characterRateID")
    private int characterRateID;

    @Column(name = "characterID") @NotNull
	private int characterID;

    @Column(name = "userID") @NotNull
	private int userID;

    @Column(name = "value") @NotNull
	private int value;

    public int getUserID() {
        return this.userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getValue() {
        return this.value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public int getCharacterID() {
        return characterID;
    }

    public void setCharacterID(int characterID) {
        this.characterID = characterID;
    }

    public static double rateAvg(CharacterRates[] tab){
        double avg = 0;
        int n = tab.length;
        for (CharacterRates r: tab){
            avg += r.getValue();
        }
        // si il n'y a pas de notes on retourne 3 (la moyenne entre 1 et 5)
        if(avg == 0){
            return 3;
        }
        return avg/n;
    }

    public static void addCharacterRate(int userID, int characterID, int value, CharacterRatesRepository characterRatesRepository){
        CharacterRates cr = characterRatesRepository.findByCharacterIDAndUserID(characterID, userID);
        CharacterRates rate = new CharacterRates();
        // Si l'utilisateur n'a pas deja note ce film, on ajoutes les nouvelles informations dans la table
        if (Objects.isNull(cr)){
            rate.setValue(value);
            rate.setCharacterID(characterID);
            rate.setUserID(userID);
            characterRatesRepository.save(rate); 
        // sinon on remplace sa note
        } else {
            cr.setValue(value);
            characterRatesRepository.save(cr);  
        } 
    }
}
