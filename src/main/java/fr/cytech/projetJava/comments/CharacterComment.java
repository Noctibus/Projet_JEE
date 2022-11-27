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

import fr.cytech.projetJava.login.User;
import fr.cytech.projetJava.character.Character;


@Entity
@Table(name="CharacterComments")
public class CharacterComment {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @ManyToOne
    @JoinColumn(name="userId")
    private User user;
    
    @ManyToOne
    @JoinColumn(name="characterId")
    private Character character;

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

    public Character getCharacter() {
        return this.character;
    }

    public void setCharacter(Character character) {
        this.character = character;
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
        return "CharacterComment [id=" + id + ", user=" + user.getId() + ", character=" + character.getId() + ", date=" + date+ ", content=" + content + "]";
    }


}