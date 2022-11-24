package fr.cytech.projetJava.rate;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;

public class MovieRate extends Rate {

    @Column @NotNull
	private int movieID;
    
    public int getMovieID() {
        return movieID;
    }

    public void setMovieID(int movieID) {
        this.movieID = movieID;
    }

    public static double rateAvg(Rate[] tab){
        int n = tab.length;
        // si il n'y a pas de notes on retourne 3 (la moyenne entre 1 et 5)
        if(n == 0){
            return 3;
        }
        double avg = 0;
        for (Rate r: tab){
            avg += r.getValue();
        }
        return avg/n;
    }

    public void addMovieRate(){
        //créé et set l'objet rate dans le controlleur
        // je l'ajoute ici dans la BDD
    }
}
