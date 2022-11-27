package fr.cytech.projetJava.character;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;


@Entity
@Table(name="Characters")

public class Character {

    
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id") 
    private int id;

    @Column(name = "identity")
    @NotNull
    private String identity;

    @Column(name = "hero's name")
    @NotNull
    private String herosName;

    @Column(name = "actor")
    @NotNull
    private String actor;

    @Column(name = "origins")
    @NotNull
    private String origins;

    @Column(name = "avengers1")
    @NotNull
    private boolean isInAvengers1;

    @Column(name = "avengers2")
    @NotNull
    private boolean isInAvengers2;

    @Column(name = "avengers3")
    @NotNull
    private boolean isInAvengers3;

    @Column(name = "avengers4")
    @NotNull
    private boolean isInAvengers4;

    @Column(name = "status")
    @NotNull
    private boolean isAlive;


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

    public boolean isInAvengers1() {
        return this.isInAvengers1;
    }

    public void setInAvengers1(boolean isInAvengers1) {
        this.isInAvengers1 = isInAvengers1;
    }

    public boolean isInAvengers2() {
        return this.isInAvengers2;
    }

    public void setInAvengers2(boolean isInAvengers2) {
        this.isInAvengers2 = isInAvengers2;
    }

    public boolean isInAvengers3() {
        return this.isInAvengers3;
    }

    public void setInAvengers3(boolean isInAvengers3) {
        this.isInAvengers3 = isInAvengers3;
    }

    public boolean isInAvengers4() {
        return this.isInAvengers4;
    }

    public void setInAvengers4(boolean isInAvengers4) {
        this.isInAvengers4 = isInAvengers4;
    }

    public boolean isAlive() {
        return this.isAlive;
    }

    public void setAlive(boolean isAlive) {
        this.isAlive = isAlive;
    }

    @Override
    public String toString() {
        return "Character [id=" + id + ", identity=" + identity + ", herosName=" + herosName + ", actor=" + actor + ", origins=" + origins + ", isInAvengers1=" + isInAvengers1 + ", isInAvengers2=" + isInAvengers2 + ", isInAvengers3=" + isInAvengers3 + ", isInAvengers4=" + isInAvengers4 + ", isAlive=" + isAlive + "]";
    }
    

}
