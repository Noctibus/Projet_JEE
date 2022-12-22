package fr.cytech.projetJava.rate;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import fr.cytech.projetJava.movie.Movie;
import fr.cytech.projetJava.user.User;


@Entity
@Table(name="MovieRates")
public class MovieRates {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "movieRateID") 
    private int id;
    
    @JoinColumn(name = "movieID") @NotNull @ManyToOne
	private Movie movie;

    @JoinColumn(name = "userUsername") @NotNull @ManyToOne
	private User user;

    @Column(name = "value") @NotNull
	private int value;

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getUser() {
        return this.user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getValue() {
        return this.value;
    }

    public void setValue(int value) {
        this.value = value;
    }
    
    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }
}
