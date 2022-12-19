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

import fr.cytech.projetJava.login.User;
import fr.cytech.projetJava.character.Character;

@Entity
@Table(name="CharacterRates")
public class CharacterRates {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "characterRateID")
    private int characterRateID;

    @JoinColumn(name = "characterID") @NotNull @ManyToOne
	private Character character;

    @JoinColumn(name = "userUsername") @NotNull @ManyToOne
	private User user;

    @Column(name = "value") @NotNull
	private int value;

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

    public Character getCharacter() {
        return this.character;
    }

    public void setCharacter(Character character) {
        this.character = character;
    }
}
