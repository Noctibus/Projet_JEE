package fr.cytech.projetJava.character;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import fr.cytech.projetJava.movie.Movie;


@Entity
@Table(name="Characters")

public class Character {

    
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id") 
    private int id;

    @Column(name = "identity")
    @NotNull
    private String identity;

    @Column(name = "herosName")
    private String herosName;

    @Column(name = "actor")
    @NotNull
    private String actor;

    @Column(name = "origins")
    @NotNull
    private String origins;

    @Column(name = "status")
    @NotNull
    private boolean isAlive;

    @Column(name = "rate")
    @NotNull
	private double rate;

    @Column(name="pictureAddress")
    @NotNull
    private String pictureAddress;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable( name = "CharactersMoviesAssociation",
                joinColumns = @JoinColumn( name = "characterID" ),
                inverseJoinColumns = @JoinColumn( name = "movieID" ))
    private List<Movie> movies = new ArrayList<>();

    public List<Movie> getMovies() {
        return movies;
    }

    public void setMovies(List<Movie> movies) {
        this.movies = movies;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIdentity() {
        return this.identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    public String getHerosName() {
        return this.herosName;
    }

    public void setHerosName(String herosName) {
        this.herosName = herosName;
    }

    public String getActor() {
        return this.actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public String getOrigins() {
        return this.origins;
    }

    public void setOrigins(String origins) {
        this.origins = origins;
    }

    public boolean isAlive() {
        return this.isAlive;
    }

    public void setAlive(boolean isAlive) {
        this.isAlive = isAlive;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public double getRate() {
        return this.rate;
    }

    public void setPictureAddress(String pictureAddress) {
        this.pictureAddress=pictureAddress;
    }

    public String getPictureAddress() {
        return this.pictureAddress;
    }

    @Override
    public String toString() {
        return "Character [id=" + id + ", identity=" + identity + ", herosName=" + herosName + ", actor=" + actor + ", origins=" + origins + ", isAlive=" + isAlive + ", rate=" + rate + ", pictureAddress=" + pictureAddress + ", movies=" + movies + "]";
    }
    

}
