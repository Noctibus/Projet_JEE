package fr.cytech.projetJava.movie;

import java.util.Date;
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

import fr.cytech.projetJava.character.Character;


@Entity
@Table(name="Movies")

public class Movie {
    
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id") 
    private int id;
    
    @Column(name = "title")
    @NotNull
	private String title;

    @Column(name = "rate")
    @NotNull
	private double rate;

    @Column(name = "date")
    @NotNull
	private Date date;

    @Column(name = "director")
    @NotNull
	private String director;

    @Column(name = "synopsis")
    @NotNull
	private String synopsis;

    @Column(name="pictureAddress")
    @NotNull
    private String pictureAddress;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable( name = "CharactersMoviesAssociation",
                joinColumns = @JoinColumn( name = "movieID" ),
                inverseJoinColumns = @JoinColumn( name = "characterID" ) )   
    private List<Character> characters = new ArrayList<>();

    public void setCharaters(List<Character> characters) {
        this.characters = characters;
    }

    public List<Character> getCharacters() {
        return characters;
    }

    public int getId() {
        return this.id;
    }

    public String getTitle() {
        return this.title;
    }

    public double getRate() {
        return this.rate;
    }

    public Date getDate() {
        return this.date;
    }

    public String getDirector() {
        return this.director;
    }

    public String getSynopsis() {
        return this.synopsis;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setRate( double rate) {
        this.rate = rate;
    }

    public void setDate( Date date) {
        this.date = date;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }

    public void setPictureAddress(String pictureAddress) {
        this.pictureAddress=pictureAddress;
    }

    public String getPictureAddress() {
        return this.pictureAddress;
    }

    
}
