package fr.cytech.projetJava.rate;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;

public class CharacterRate extends Rate {
    
    @Column @NotNull
	private int characterID;

    public int getCharacterID() {
        return characterID;
    }

    public void setCharacterID(int characterID) {
        this.characterID = characterID;
    }

    public static double rateAvg(Rate[] tab){
        double avg = 0;
        int n = tab.length;
        for (Rate r: tab){
            avg += r.getValue();
        }
        // si il n'y a pas de notes on retourne 3 (la moyenne entre 1 et 5)
        if(avg == 0){
            return 3;
        }
        return avg/n;
    }
}
