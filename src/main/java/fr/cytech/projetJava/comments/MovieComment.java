package fr.cytech.projetJava.comments;

import java.util.Date;

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
@Table(name="MovieComments")
public class MovieComment {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int id;
    
    @ManyToOne
    @JoinColumn(name="userUsername")
    private User user;

    @ManyToOne
    @JoinColumn(name="movieId")
    private Movie movie;

    @Column(name="date")
    @NotNull
    private Date date;

    @Column(name="content")
    @NotNull
    private String content;


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

    public Movie getMovie() {
        return this.movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public Date getDate() {
        return this.date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "MovieComment [id=" + id + ", user=" + user.getUsername() + ", movieID=" + movie.getId() + ", date=" + date+ ", content=" + content + "]";
    }
    

}