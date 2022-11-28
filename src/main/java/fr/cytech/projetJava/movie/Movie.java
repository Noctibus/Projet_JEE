package fr.cytech.projetJava.movie;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;


@Entity
@Table(name="Movies")

public class Movie {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id") 
    private int id;
    
    @Column(name = "title") @NotNull
	private String name;

    @Column(name = "rate") @NotNull
	private double rate;

    @Column(name = "date") @NotNull
	private Date date;

    @Column(name = "director") @NotNull
	private String director;

    @Column(name = "synopsis") @NotNull
	private String synopsis;

    public int getId() {
        return this.id;
    }

    public String getTitle() {
        return this.name;
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

    public void setTitle(String name) {
        this.name = name;
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

    @Override
    public String toString() {
     return "<img style='width: 300px; height: 400px; margin-top: -90px;' src= 'avengers" + this.getId() + ".jpg'/>";
    }
}
