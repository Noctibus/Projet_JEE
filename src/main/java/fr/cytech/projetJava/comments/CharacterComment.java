package fr.cytech.projetJava.comments;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;


@Entity
@Table(name="CharacterComments")
public class CharacterComment {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @Column(name="userId")
    @NotNull
    private int userID;
    
    @Column(name="characterId")
    @NotNull
    private int characterID;

    @Column(name="date")
    @NotNull
    private Date date;

    @Column(name="content")
    @NotNull
    private String content;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getCharacterID() {
        return this.characterID;
    }

    public void setCharacterID(int characterID) {
        this.characterID = characterID;
    }
    
    public Date getDate() {
        return this.date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "CharacterComment [id=" + id + ", userID=" + userID + ", characterID=" + characterID + ", date=" + date+ ", content=" + content + "]";
    }


}