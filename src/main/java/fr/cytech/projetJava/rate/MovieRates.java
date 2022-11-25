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
@Table(name="MovieRates")
public class MovieRates {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "movieRateID") 
    private int movieRateID;
    
    @Column(name = "movieID") @NotNull
	private int movieID;

    @Column(name = "userID") @NotNull
	private int userID;

    @Column(name = "value") @NotNull
	private int value;

    public int getMovieRateID() {
        return this.movieRateID;
    }

    public void setMovieRateID(int movieRateID) {
        this.userID = movieRateID;
    }

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
    
    public int getMovieID() {
        return movieID;
    }

    public void setMovieID(int movieID) {
        this.movieID = movieID;
    }

    public static double rateAvg(MovieRatesRepository movieRatesRepository, int movieID){
        MovieRates tab [] = movieRatesRepository.findByMovieID(movieID);
        int n = tab.length;
        // si il n'y a pas de notes on retourne 3 (la moyenne entre 1 et 5)
        if(n == 0){
            return 3;
        }
        double avg = 0;
        for (MovieRates r: tab){
            avg += r.getValue();
        }
        return avg/n;
    }

    public static void addMovieRate(int userID, int movieID, int value, MovieRatesRepository movieRatesRepository){
        MovieRates mr = movieRatesRepository.findByMovieIDAndUserID(movieID, userID);
        MovieRates rate = new MovieRates();
        // Si l'utilisateur n'a pas deja note ce film, on ajoutes les nouvelles informations dans la table
        if (Objects.isNull(mr)){
            rate.setValue(value);
            rate.setMovieID(movieID);
            rate.setUserID(userID);
            movieRatesRepository.save(rate);
        // sinon on remplace sa note
        } else {
            mr.setValue(value);
            movieRatesRepository.save(mr);  
        } 
    }
}
